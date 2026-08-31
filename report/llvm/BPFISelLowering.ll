Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/BPFISelLowering?download=true
inline.NumInlined: 2790
inline.NumDeleted: 1271
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZNK4llvm17BPFTargetLowering20LowerFormalArgumentsENS_7SDValueEjbRKNS_15SmallVectorImplINS_3ISD8InputArgEEERKNS_5SDLocERNS_12SelectionDAGERNS2_IS1_EE:bb.a
  %i.ci = zext i32 %i.cg to i64
  %i.cj = load ptr, ptr %8, align 8, !tbaa !21
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.ci ; 2 uses
  store ptr %.fca.0.extract26, ptr %i.ck, align 1
  %.sroa.32.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store i32 %.fca.1.extract27, ptr %.sroa.32.0..sroa_idx.i, align 1
  %i.cl = load i32, ptr %i.s, align 8, !tbaa !495
  %i.cm = add i32 %i.cl, 1
  store i32 %i.cm, ptr %i.s, align 8, !tbaa !495
  br label %bb.r

_ZNK4llvm11CCValAssign15getLocMemOffsetEv.exit:   ; preds = %bb.d
  %i.cn = load i64, ptr %i.aa, align 8, !tbaa !630
  %i.co = trunc i64 %i.cn to i32
  %i.cp = add i32 %i.co, 8                        ; 2 uses
  %i.cq = icmp sgt i32 %i.cp, 32767
  br i1 %i.cq, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit, label %bb.o

bb.o:                                             ; preds = %_ZNK4llvm11CCValAssign15getLocMemOffsetEv.exit
  %i.cr = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920) %7, i16 8, ptr null, i16 1, ptr null) #25 ; 2 uses
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  %i.ct = extractvalue { ptr, i32 } %i.cr, 1
  store ptr %.sroa.093.0151, ptr %24, align 8, !tbaa !432
  store i32 %.sroa.595.0152, ptr %.sroa.595.0..sroa_idx, align 8, !tbaa !155
  %i.cu = sext i32 %i.cp to i64
  %i.cv = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %7, i64 noundef %i.cu, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 8, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #25 ; 2 uses
  %.fca.0.extract19 = extractvalue { ptr, i32 } %i.cv, 0
  %.fca.1.extract20 = extractvalue { ptr, i32 } %i.cv, 1
  store ptr %.fca.0.extract19, ptr %25, align 8
  store i32 %.fca.1.extract20, ptr %.sroa.222.0..sroa_idx, align 8
  %i.cw = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %7, i32 noundef 539, ptr noundef nonnull align 8 dereferenceable(12) %6, ptr %i.cs, i32 %i.ct, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %24, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %25) #25
  %.fca.0.extract8 = extractvalue { ptr, i32 } %i.cw, 0 ; 3 uses
  store ptr %.fca.0.extract8, ptr %26, align 8, !tbaa !432
  store i32 0, ptr %.sroa.413.0..sroa_idx, align 8, !tbaa !155
  %i.cx = call fastcc { ptr, i32 } @_ZL17convertLocValTypeRN4llvm12SelectionDAGERKNS_5SDLocERKNS_11CCValAssignENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %7, ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(26) %i.aa, i16 8, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %26) ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.cx, 0 ; 2 uses
  %.fca.1.extract = extractvalue { ptr, i32 } %i.cx, 1 ; 2 uses
  %i.cy = load i32, ptr %i.s, align 8, !tbaa !495 ; 2 uses
  %i.cz = load i32, ptr %i.t, align 4, !tbaa !496
  %.not.i111 = icmp ult i32 %i.cy, %i.cz
  br i1 %.not.i111, label %bb.q, label %bb.p, !prof !629

bb.p:                                             ; preds = %bb.o
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr %.fca.0.extract, i32 %.fca.1.extract)
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.da = zext i32 %i.cy to i64
  %i.db = load ptr, ptr %8, align 8, !tbaa !21
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %i.da ; 2 uses
  store ptr %.fca.0.extract, ptr %i.dc, align 1
  %.sroa.32.0..sroa_idx.i112 = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.32.0..sroa_idx.i112, align 1
  %i.dd = load i32, ptr %i.s, align 8, !tbaa !495
  %i.de = add i32 %i.dd, 1
  store i32 %i.de, ptr %i.s, align 8, !tbaa !495
  br label %bb.r

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit: ; preds = %_ZNK4llvm11CCValAssign15getLocMemOffsetEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #25
  %i.df = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.dg = getelementptr inbounds nuw i8, ptr %23, i64 33
  store i8 1, ptr %i.dg, align 1, !tbaa !209
  store ptr @.str.15, ptr %23, align 8, !tbaa !173
  store i8 3, ptr %i.df, align 8, !tbaa !212
  call fastcc void @_ZL4failRKN4llvm5SDLocERNS_12SelectionDAGERKNS_5TwineENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(920) %7, ptr noundef nonnull align 8 dereferenceable(34) %23, ptr null)
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %.loopexit

bb.r:                                             ; preds = %bb.d, %bb.n, %bb.m, %bb.p, %bb.q
  %.sroa.093.2.ph = phi ptr [ %.fca.0.extract8, %bb.q ], [ %.fca.0.extract8, %bb.p ], [ %.sroa.093.0151, %bb.m ], [ %.sroa.093.0151, %bb.n ], [ %.sroa.093.0151, %bb.d ] ; 2 uses
  %.sroa.595.2.ph = phi i32 [ 1, %bb.q ], [ 1, %bb.p ], [ %.sroa.595.0152, %bb.m ], [ %.sroa.595.0152, %bb.n ], [ %.sroa.595.0152, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  %i.dh = add nuw nsw i64 %.0150, 1               ; 2 uses
  %i.di = load i32, ptr %i.j, align 8, !tbaa !495
  %i.dj = zext i32 %i.di to i64
  %i.dk = icmp samesign ult i64 %i.dh, %i.dj
  br i1 %i.dk, label %bb.d, label %.loopexit, !llvm.loop !631

.loopexit:                                        ; preds = %bb.r, %bb.c, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit
  %.sroa.093.0149 = phi ptr [ %.sroa.093.0151, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit ], [ %1, %bb.c ], [ %.sroa.093.2.ph, %bb.r ]
  %.sroa.595.0144 = phi i32 [ %.sroa.595.0152, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit ], [ %2, %bb.c ], [ %.sroa.595.2.ph, %bb.r ]
  br i1 %4, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #25
  %i.dl = getelementptr inbounds nuw i8, ptr %27, i64 32
  %i.dm = getelementptr inbounds nuw i8, ptr %27, i64 33
  store i8 1, ptr %i.dm, align 1, !tbaa !209
  store ptr @.str.16, ptr %27, align 8, !tbaa !173
  store i8 3, ptr %i.dl, align 8, !tbaa !212
  call fastcc void @_ZL4failRKN4llvm5SDLocERNS_12SelectionDAGERKNS_5TwineENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(920) %7, ptr noundef nonnull align 8 dereferenceable(34) %27, ptr null)
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.loopexit
  %i.dn = getelementptr inbounds nuw i8, ptr %15, i64 368
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !21 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %15, i64 384
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %_ZN4llvm11SmallVectorINS_7CCState9ByValInfoELj4EED2Ev.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @free(ptr noundef %i.do) #25
  br label %_ZN4llvm11SmallVectorINS_7CCState9ByValInfoELj4EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_7CCState9ByValInfoELj4EED2Ev.exit.i: ; preds = %bb.u, %bb.t
  %i.dr = getelementptr inbounds nuw i8, ptr %15, i64 288
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !21 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %15, i64 304
  %i.du = icmp eq ptr %i.ds, %i.dt
  br i1 %i.du, label %_ZN4llvm11SmallVectorINS_3ISD10ArgFlagsTyELj4EED2Ev.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZN4llvm11SmallVectorINS_7CCState9ByValInfoELj4EED2Ev.exit.i
  call void @free(ptr noundef %i.ds) #25
  br label %_ZN4llvm11SmallVectorINS_3ISD10ArgFlagsTyELj4EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_3ISD10ArgFlagsTyELj4EED2Ev.exit.i: ; preds = %bb.v, %_ZN4llvm11SmallVectorINS_7CCState9ByValInfoELj4EED2Ev.exit.i
  %i.dv = getelementptr inbounds nuw i8, ptr %15, i64 144
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !21 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %15, i64 160
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZN4llvm11SmallVectorINS_11CCValAssignELj4EED2Ev.exit.i, label %bb.w

bb.w:                                             ; preds = %_ZN4llvm11SmallVectorINS_3ISD10ArgFlagsTyELj4EED2Ev.exit.i
  call void @free(ptr noundef %i.dw) #25
  br label %_ZN4llvm11SmallVectorINS_11CCValAssignELj4EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_11CCValAssignELj4EED2Ev.exit.i: ; preds = %bb.w, %_ZN4llvm11SmallVectorINS_3ISD10ArgFlagsTyELj4EED2Ev.exit.i
  %i.dz = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !21 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %15, i64 80
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZN4llvm7CCStateD2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZN4llvm11SmallVectorINS_11CCValAssignELj4EED2Ev.exit.i
  call void @free(ptr noundef %i.ea) #25
  br label %_ZN4llvm7CCStateD2Ev.exit

_ZN4llvm7CCStateD2Ev.exit:                        ; preds = %_ZN4llvm11SmallVectorINS_11CCValAssignELj4EED2Ev.exit.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  %i.ed = load ptr, ptr %14, align 8, !tbaa !21   ; 2 uses
  %i.ee = icmp eq ptr %i.ed, %i.i
  br i1 %i.ee, label %_ZN4llvm11SmallVectorINS_11CCValAssignELj16EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZN4llvm7CCStateD2Ev.exit
  call void @free(ptr noundef %i.ed) #25
  br label %_ZN4llvm11SmallVectorINS_11CCValAssignELj16EED2Ev.exit

_ZN4llvm11SmallVectorINS_11CCValAssignELj16EED2Ev.exit: ; preds = %_ZN4llvm7CCStateD2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.093.0149, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.595.0144, 1
  ret { ptr, i32 } %.fca.1.insert
}

declare void @_ZN4llvm7CCStateC1EjbRNS_15MachineFunctionERNS_15SmallVectorImplINS_11CCValAssignEEERNS_11LLVMContextEb(ptr noundef nonnull align 8 dereferenceable(420), i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) unnamed_addr #4

declare void @_ZN4llvm7CCState22AnalyzeFormalArgumentsERKNS_15SmallVectorImplINS_3ISD8InputArgEEEPFbjNS_3MVTES7_NS_11CCValAssign7LocInfoENS2_10ArgFlagsTyEPNS_4TypeERS0_E(ptr noundef nonnull align 8 dereferenceable(420), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZL8CC_BPF32jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i64 %4, i64 %5, ptr nofree readnone captures(none) %6, ptr noundef nonnull align 8 dereferenceable(420) %7) #3 {
bb.a:
  %8 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %9 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %10 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  switch i16 %2, label %.thread61 [
    i16 7, label %bb.b
    i16 8, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.c = load i32, ptr %i.b, align 4, !tbaa !155  ; 5 uses
  %i.d = and i32 %i.c, 16384
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEEPKt.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = and i32 %i.c, 32768
  %.not.i.i.1 = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEEPKt.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = and i32 %i.c, 65536
  %.not.i.i.2 = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEEPKt.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = and i32 %i.c, 131072
  %.not.i.i.3 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.3, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEEPKt.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = and i32 %i.c, 262144
  %.not.i.i.4 = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.4, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEEPKt.exit, label %.thread61

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEEPKt.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0613.i.i.lcssa.wide = phi i64 [ 0, %bb.b ], [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.e ], [ 4, %bb.f ] ; 2 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr @_ZZL8CC_BPF32jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList4, i64 %.0613.i.i.lcssa.wide
  %i.j = load i16, ptr %i.i, align 2, !tbaa !163  ; 2 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr @_ZZL8CC_BPF64jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList1, i64 %.0613.i.i.lcssa.wide
  %i.l = load i16, ptr %i.k, align 2, !tbaa !163
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.j) #25
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.l) #25
  %i.m = zext i16 %i.j to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i8 0, ptr %i.n, align 8, !tbaa !612, !alias.scope !632
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %0, ptr %i.o, align 8, !tbaa !635, !alias.scope !632
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 2 uses
  %i.q = load i8, ptr %i.p, align 4, !alias.scope !632
  %i.r = and i8 %i.q, -128
  %i.s = trunc i32 %3 to i8
  %i.t = shl i8 %i.s, 1
  %i.u = and i8 %i.t, 126
  %i.v = or disjoint i8 %i.r, %i.u
  store i8 %i.v, ptr %i.p, align 4, !alias.scope !632
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 22
  store i16 %1, ptr %i.w, align 2, !tbaa !203, !alias.scope !632
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i16 7, ptr %i.x, align 8, !tbaa !203, !alias.scope !632
  store i32 %i.m, ptr %8, align 8, !tbaa !155, !alias.scope !632
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !644, !nonnull !19, !align !415 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !495 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !496
  %.not.i.i29 = icmp ult i32 %i.ab, %i.ad
  br i1 %.not.i.i29, label %bb.h, label %bb.g, !prof !629

bb.g:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEEPKt.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(26) %8)
  br label %bb.i

bb.h:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEEPKt.exit
  %i.ae = zext i32 %i.ab to i64
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !21
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.af, i64 %i.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false)
  %i.ah = load i32, ptr %i.aa, align 8, !tbaa !495
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %i.aa, align 8, !tbaa !495
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.v

bb.j:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !21
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !155 ; 5 uses
  %i.am = and i32 %i.al, 4
  %.not.i.i31 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i31, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEEPKt.exit34, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = and i32 %i.al, 8
  %.not.i.i31.1 = icmp eq i32 %i.an, 0
  br i1 %.not.i.i31.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEEPKt.exit34, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = and i32 %i.al, 16
  %.not.i.i31.2 = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i31.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEEPKt.exit34, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = and i32 %i.al, 32
  %.not.i.i31.3 = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i31.3, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEEPKt.exit34, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = and i32 %i.al, 64
  %.not.i.i31.4 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i31.4, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEEPKt.exit34, label %.thread61

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEEPKt.exit34: ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  %.0613.i.i30.lcssa.wide = phi i64 [ 0, %bb.j ], [ 1, %bb.k ], [ 2, %bb.l ], [ 3, %bb.m ], [ 4, %bb.n ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr @_ZZL8CC_BPF64jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList1, i64 %.0613.i.i30.lcssa.wide
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !163 ; 2 uses
  %i.at = getelementptr inbounds nuw [2 x i8], ptr @_ZZL8CC_BPF32jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList4, i64 %.0613.i.i30.lcssa.wide
  %i.au = load i16, ptr %i.at, align 2, !tbaa !163
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.as) #25
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.au) #25
  %i.av = zext i16 %i.as to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i8 0, ptr %i.aw, align 8, !tbaa !612, !alias.scope !667
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 %0, ptr %i.ax, align 8, !tbaa !635, !alias.scope !667
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 4, !alias.scope !667
  %i.ba = and i8 %i.az, -128
  %i.bb = trunc i32 %3 to i8
  %i.bc = shl i8 %i.bb, 1
  %i.bd = and i8 %i.bc, 126
  %i.be = or disjoint i8 %i.ba, %i.bd
  store i8 %i.be, ptr %i.ay, align 4, !alias.scope !667
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 22
  store i16 %1, ptr %i.bf, align 2, !tbaa !203, !alias.scope !667
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i16 8, ptr %i.bg, align 8, !tbaa !203, !alias.scope !667
  store i32 %i.av, ptr %9, align 8, !tbaa !155, !alias.scope !667
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !644, !nonnull !19, !align !415 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 3 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !495 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !496
  %.not.i.i35 = icmp ult i32 %i.bk, %i.bm
  br i1 %.not.i.i35, label %bb.p, label %bb.o, !prof !629

bb.o:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEEPKt.exit34
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(26) %9)
  br label %bb.q

bb.p:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEEPKt.exit34
  %i.bn = zext i32 %i.bk to i64
  %i.bo = load ptr, ptr %i.bi, align 8, !tbaa !21
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %i.bo, i64 %i.bn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false)
  %i.bq = load i32, ptr %i.bj, align 8, !tbaa !495
  %i.br = add i32 %i.bq, 1
  store i32 %i.br, ptr %i.bj, align 8, !tbaa !495
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.v

.thread61:                                        ; preds = %bb.n, %bb.f, %bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !670, !range !18, !noundef !19
  %i.bu = trunc nuw i8 %i.bt to i1
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !671 ; 2 uses
  br i1 %i.bu, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.thread61
  %i.bx = add i64 %i.bw, 15
  %i.by = and i64 %i.bx, -8                       ; 2 uses
  %i.bz = sub i64 0, %i.by
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit

bb.s:                                             ; preds = %.thread61
  %i.ca = add i64 %i.bw, 7
  %i.cb = and i64 %i.ca, -8                       ; 2 uses
  %i.cc = add nsw i64 %i.cb, 8
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit

_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit: ; preds = %bb.r, %bb.s
  %.sink = phi i64 [ %i.by, %bb.r ], [ %i.cc, %bb.s ]
  %.0.i = phi i64 [ %i.bz, %bb.r ], [ %i.cb, %bb.s ]
  store i64 %.sink, ptr %i.bv, align 8, !tbaa !671
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.cd, align 8, !tbaa !173
  %.sroa.speculated.i = tail call i8 @llvm.umax.i8(i8 %.sroa.0.0.copyload.i.i, i8 3)
  store i8 %.sroa.speculated.i, ptr %i.cd, align 8, !tbaa !173
  tail call void @_ZN4llvm7CCState18ensureMaxAlignmentENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %7, i8 3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.ce = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 %0, ptr %i.cf, align 8, !tbaa !635, !alias.scope !672
  %i.cg = getelementptr inbounds nuw i8, ptr %10, i64 20 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 4, !alias.scope !672
  %i.ci = and i8 %i.ch, -128
  %i.cj = trunc i32 %3 to i8
  %i.ck = shl i8 %i.cj, 1
  %i.cl = and i8 %i.ck, 126
  %i.cm = or disjoint i8 %i.ci, %i.cl
  store i8 %i.cm, ptr %i.cg, align 4, !alias.scope !672
  %i.cn = getelementptr inbounds nuw i8, ptr %10, i64 22
  store i16 %1, ptr %i.cn, align 2, !tbaa !203, !alias.scope !672
  %i.co = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i16 %2, ptr %i.co, align 8, !tbaa !203, !alias.scope !672
  store i8 1, ptr %i.ce, align 8, !tbaa !612, !alias.scope !672
  store i64 %.0.i, ptr %10, align 8, !tbaa !630, !alias.scope !672
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !644, !nonnull !19, !align !415 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 3 uses
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !495 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !496
  %.not.i.i37 = icmp ult i32 %i.cs, %i.cu
  br i1 %.not.i.i37, label %bb.u, label %bb.t, !prof !629

bb.t:                                             ; preds = %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, ptr noundef nonnull align 8 dereferenceable(26) %10)
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit38

bb.u:                                             ; preds = %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit
  %i.cv = zext i32 %i.cs to i64
  %i.cw = load ptr, ptr %i.cq, align 8, !tbaa !21
  %i.cx = getelementptr inbounds nuw [32 x i8], ptr %i.cw, i64 %i.cv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.cx, ptr noundef nonnull align 8 dereferenceable(32) %10, i64 32, i1 false)
  %i.cy = load i32, ptr %i.cr, align 8, !tbaa !495
  %i.cz = add i32 %i.cy, 1
  store i32 %i.cz, ptr %i.cr, align 8, !tbaa !495
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit38

_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit38: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.v

bb.v:                                             ; preds = %bb.q, %bb.i, %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit38
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZL8CC_BPF64jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i64 %4, i64 %5, ptr nofree readnone captures(none) %6, ptr noundef nonnull align 8 dereferenceable(420) %7) #3 {
bb.a:
  %8 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %9 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  switch i16 %2, label %.thread47 [
    i16 5, label %.critedge
    i16 6, label %.critedge
    i16 7, label %.critedge
    i16 8, label %.thread
  ]

.critedge:                                        ; preds = %bb.a, %bb.a, %bb.a
  %i.a = and i64 %4, 2
  %.not49 = icmp eq i64 %i.a, 0
  br i1 %.not49, label %bb.b, label %.thread

bb.b:                                             ; preds = %.critedge
  %i.b = trunc i64 %4 to i1
  %. = select i1 %i.b, i32 2, i32 3
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %.critedge
  %.01641 = phi i32 [ %3, %bb.a ], [ 1, %.critedge ], [ %., %bb.b ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.e = load i32, ptr %i.d, align 4, !tbaa !155  ; 5 uses
  %i.f = and i32 %i.e, 4
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.c

bb.c:                                             ; preds = %.thread
  %i.g = and i32 %i.e, 8
  %.not.i.i.1 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = and i32 %i.e, 16
  %.not.i.i.2 = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = and i32 %i.e, 32
  %.not.i.i.3 = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.3, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = and i32 %i.e, 64
  %.not.i.i.4 = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.4, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %.thread47

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %.thread
  %.0613.i.i.lcssa.wide = phi i64 [ 0, %.thread ], [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.e ], [ 4, %bb.f ]
  %i.k = getelementptr inbounds nuw [2 x i8], ptr @_ZZL8CC_BPF64jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList1, i64 %.0613.i.i.lcssa.wide
  %i.l = load i16, ptr %i.k, align 2, !tbaa !163  ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.l) #25
  %i.m = zext i16 %i.l to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i8 0, ptr %i.n, align 8, !tbaa !612, !alias.scope !675
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %0, ptr %i.o, align 8, !tbaa !635, !alias.scope !675
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 2 uses
  %i.q = load i8, ptr %i.p, align 4, !alias.scope !675
  %i.r = and i8 %i.q, -128
  %i.s = trunc i32 %.01641 to i8
  %i.t = shl i8 %i.s, 1
  %i.u = and i8 %i.t, 126
  %i.v = or disjoint i8 %i.r, %i.u
  store i8 %i.v, ptr %i.p, align 4, !alias.scope !675
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 22
  store i16 %1, ptr %i.w, align 2, !tbaa !203, !alias.scope !675
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i16 8, ptr %i.x, align 8, !tbaa !203, !alias.scope !675
  store i32 %i.m, ptr %8, align 8, !tbaa !155, !alias.scope !675
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !644, !nonnull !19, !align !415 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !495 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !496
  %.not.i.i18 = icmp ult i32 %i.ab, %i.ad
  br i1 %.not.i.i18, label %bb.h, label %bb.g, !prof !629

bb.g:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(26) %8)
  br label %bb.i

bb.h:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  %i.ae = zext i32 %i.ab to i64
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !21
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.af, i64 %i.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false)
  %i.ah = load i32, ptr %i.aa, align 8, !tbaa !495
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %i.aa, align 8, !tbaa !495
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.n

.thread47:                                        ; preds = %bb.f, %bb.a
  %.01642 = phi i32 [ %3, %bb.a ], [ %.01641, %bb.f ]
  %.sroa.031.040 = phi i16 [ %2, %bb.a ], [ 8, %bb.f ]
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !670, !range !18, !noundef !19
  %i.al = trunc nuw i8 %i.ak to i1
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !671 ; 2 uses
  br i1 %i.al, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.thread47
  %i.ao = add i64 %i.an, 15
  %i.ap = and i64 %i.ao, -8                       ; 2 uses
  %i.aq = sub i64 0, %i.ap
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit

bb.k:                                             ; preds = %.thread47
  %i.ar = add i64 %i.an, 7
  %i.as = and i64 %i.ar, -8                       ; 2 uses
  %i.at = add nsw i64 %i.as, 8
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit

_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit: ; preds = %bb.j, %bb.k
  %.sink = phi i64 [ %i.ap, %bb.j ], [ %i.at, %bb.k ]
  %.0.i = phi i64 [ %i.aq, %bb.j ], [ %i.as, %bb.k ]
  store i64 %.sink, ptr %i.am, align 8, !tbaa !671
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.au, align 8, !tbaa !173
  %.sroa.speculated.i = tail call i8 @llvm.umax.i8(i8 %.sroa.0.0.copyload.i.i, i8 3)
  store i8 %.sroa.speculated.i, ptr %i.au, align 8, !tbaa !173
  tail call void @_ZN4llvm7CCState18ensureMaxAlignmentENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %7, i8 3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 %0, ptr %i.aw, align 8, !tbaa !635, !alias.scope !678
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 4, !alias.scope !678
  %i.az = and i8 %i.ay, -128
  %i.ba = trunc i32 %.01642 to i8
  %i.bb = shl i8 %i.ba, 1
  %i.bc = and i8 %i.bb, 126
  %i.bd = or disjoint i8 %i.az, %i.bc
  store i8 %i.bd, ptr %i.ax, align 4, !alias.scope !678
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 22
  store i16 %1, ptr %i.be, align 2, !tbaa !203, !alias.scope !678
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i16 %.sroa.031.040, ptr %i.bf, align 8, !tbaa !203, !alias.scope !678
  store i8 1, ptr %i.av, align 8, !tbaa !612, !alias.scope !678
  store i64 %.0.i, ptr %9, align 8, !tbaa !630, !alias.scope !678
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !644, !nonnull !19, !align !415 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !495 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !496
  %.not.i.i19 = icmp ult i32 %i.bj, %i.bl
  br i1 %.not.i.i19, label %bb.m, label %bb.l, !prof !629

bb.l:                                             ; preds = %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 8 dereferenceable(26) %9)
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit20

bb.m:                                             ; preds = %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit
  %i.bm = zext i32 %i.bj to i64
  %i.bn = load ptr, ptr %i.bh, align 8, !tbaa !21
  %i.bo = getelementptr inbounds nuw [32 x i8], ptr %i.bn, i64 %i.bm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bo, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false)
  %i.bp = load i32, ptr %i.bi, align 8, !tbaa !495
  %i.bq = add i32 %i.bp, 1
  store i32 %i.bq, ptr %i.bi, align 8, !tbaa !495
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit20

_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit20: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.n

bb.n:                                             ; preds = %bb.i, %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit20
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm18raw_string_ostreamC2ERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #3 comdat align 2 {
_ZN4llvm11raw_ostream13SetUnbufferedEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !224
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.b, align 8, !tbaa !228
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 1, ptr %i.c, align 4, !tbaa !229
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %0, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %1, ptr %i.e, align 8, !tbaa !230
  tail call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef null, i64 noundef 0, i32 noundef 0) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm3EVT5printERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @_ZNK4llvm3EVT12getEVTStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %0) #25
  %i.a = load ptr, ptr %2, align 8, !tbaa !429
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !223
  %i.d = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.a, i64 noundef %i.c) #25 ; 0 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !429    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.h = load i64, ptr %i.f, align 8, !tbaa !173
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #10

declare i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520), ptr noundef, ptr, i64) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL17convertLocValTypeRN4llvm12SelectionDAGERKNS_5SDLocERKNS_11CCValAssignENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(26) %2, i16 %3, ptr %4, ptr nofree noundef byval(%"class.llvm::SDValue") align 8 captures(none) %5) unnamed_addr #3 {
bb.a:
  %6 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %7 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4
  %i.c = lshr i8 %i.b, 1
  %i.d = and i8 %i.c, 63
  switch i8 %i.d, label %bb.d [
    i8 1, label %bb.b
    i8 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 22
  %.sroa.0.0.copyload.i = load i16, ptr %i.e, align 2, !tbaa !203
  %i.f = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG12getValueTypeENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %0, i16 %.sroa.0.0.copyload.i, ptr null) #25 ; 2 uses
  %.fca.0.extract22 = extractvalue { ptr, i32 } %i.f, 0
  %.fca.1.extract23 = extractvalue { ptr, i32 } %i.f, 1
  store ptr %.fca.0.extract22, ptr %6, align 8
end_hunk_0
