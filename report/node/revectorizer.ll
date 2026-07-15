inline.NumInlined: 2710
inline.NumDeleted: 1072
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN2v88internal8compiler12Revectorizer14SetEffectInputEPNS1_8PackNodeEiRPNS1_4NodeE:bb.a
  %.020.i.i.i.i.i.i = phi ptr [ %i.cg, %bb.j ], [ %i.bt, %bb.i ]
  %i.cg = load ptr, ptr %.020.i.i.i.i.i.i, align 8 ; 5 uses
  %.not18.i.i.i.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not18.i.i.i.i.i.i, label %_ZNK2v88internal8compiler12Revectorizer11GetPackNodeEPNS1_4NodeE.exit, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load i64, ptr %i.ch, align 8            ; 2 uses
  %i.cj = urem i64 %i.ci, %i.am
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.cj, %i.bq
  br i1 %.not19.i.i.i.i.i.i, label %bb.j, label %..loopexit_crit_edge21.i.i.i.i.i.i, !llvm.loop !19

..loopexit_crit_edge21.i.i.i.i.i.i:               ; preds = %bb.k
  br label %_ZNK2v88internal8compiler12Revectorizer11GetPackNodeEPNS1_4NodeE.exit, !llvm.loop !19

_ZNSt13unordered_mapIPN2v88internal8compiler4NodeEPNS2_8PackNodeENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSE_.exit.i.i: ; preds = %bb.j, %bb.i
  %.sroa.06.1.i.i.i.i = phi ptr [ %i.bt, %bb.i ], [ %i.cg, %bb.j ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8
  br label %_ZNK2v88internal8compiler12Revectorizer11GetPackNodeEPNS1_4NodeE.exit

_ZNK2v88internal8compiler12Revectorizer11GetPackNodeEPNS1_4NodeE.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNK2v88internal8compiler4Node7InputAtEi.exit, %..loopexit_crit_edge21.i.i.i.i.i.i, %_ZNSt13unordered_mapIPN2v88internal8compiler4NodeEPNS2_8PackNodeENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSE_.exit.i.i
  %.0.i.i = phi ptr [ %i.cl, %_ZNSt13unordered_mapIPN2v88internal8compiler4NodeEPNS2_8PackNodeENS0_4base4hashIS4_EESt8equal_toIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S6_EEEE4findERSE_.exit.i.i ], [ null, %..loopexit_crit_edge21.i.i.i.i.i.i ], [ null, %_ZNK2v88internal8compiler4Node7InputAtEi.exit ], [ null, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.cm = icmp eq ptr %.0.i.i, %1
  br i1 %i.cm, label %bb.f, label %.split.us

.split.us:                                        ; preds = %_ZNK2v88internal8compiler12Revectorizer11GetPackNodeEPNS1_4NodeE.exit, %_ZNK2v88internal8compiler12Revectorizer11GetPackNodeEPNS1_4NodeE.exit.us
  %.us-phi = phi ptr [ %.0.i.i.us, %_ZNK2v88internal8compiler12Revectorizer11GetPackNodeEPNS1_4NodeE.exit.us ], [ %.0.i.i, %_ZNK2v88internal8compiler12Revectorizer11GetPackNodeEPNS1_4NodeE.exit ] ; 2 uses
  %.us-phi32 = phi i1 [ %.not.i.i.us, %_ZNK2v88internal8compiler12Revectorizer11GetPackNodeEPNS1_4NodeE.exit.us ], [ %.not.i.i, %_ZNK2v88internal8compiler12Revectorizer11GetPackNodeEPNS1_4NodeE.exit ]
  %.us-phi33 = phi ptr [ %i.v, %_ZNK2v88internal8compiler12Revectorizer11GetPackNodeEPNS1_4NodeE.exit.us ], [ %i.aw, %_ZNK2v88internal8compiler12Revectorizer11GetPackNodeEPNS1_4NodeE.exit ] ; 2 uses
  %.not = icmp eq ptr %.us-phi, null
  br i1 %.not, label %bb.o, label %bb.l

bb.l:                                             ; preds = %.split.us
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.cp = load ptr, ptr %i.co, align 8            ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.cr = load ptr, ptr %i.cq, align 8            ; 3 uses
  %i.cs = ptrtoint ptr %i.cp to i64
  %i.ct = ptrtoint ptr %i.cr to i64               ; 3 uses
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = ashr exact i64 %i.cu, 3
  %i.cw = add nsw i64 %i.i, 1                     ; 5 uses
  %i.cx = icmp ult i64 %i.cv, %i.cw
  br i1 %i.cx, label %bb.m, label %_ZN2v88internal8compiler8PackNode10SetOperandEmPS2_.exit

bb.m:                                             ; preds = %bb.l
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = sub i64 %i.da, %i.ct
  %i.dc = ashr exact i64 %i.db, 3
  %.not.i.i.i = icmp ugt i64 %i.cw, %i.dc
  br i1 %.not.i.i.i, label %bb.n, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler8PackNodeEE14EnsureCapacityEm.exit.i.i, !prof !9

bb.n:                                             ; preds = %bb.m
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler8PackNodeEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.cn, i64 noundef %i.cw)
  %.pre.i.i = load ptr, ptr %i.cq, align 8        ; 2 uses
  %.pre13.i.i = ptrtoint ptr %.pre.i.i to i64
  %.pre.i = load ptr, ptr %i.co, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler8PackNodeEE14EnsureCapacityEm.exit.i.i

_ZN2v88internal10ZoneVectorIPNS0_8compiler8PackNodeEE14EnsureCapacityEm.exit.i.i: ; preds = %bb.n, %bb.m
  %i.dd = phi ptr [ %i.cp, %bb.m ], [ %.pre.i, %bb.n ] ; 3 uses
  %.pre-phi.i.i = phi i64 [ %i.ct, %bb.m ], [ %.pre13.i.i, %bb.n ]
  %i.de = phi ptr [ %i.cr, %bb.m ], [ %.pre.i.i, %bb.n ] ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.cw ; 2 uses
  %i.dg = icmp ult ptr %i.dd, %i.df
  br i1 %i.dg, label %.lr.ph.preheader.i.i, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler8PackNodeEE6resizeEm.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler8PackNodeEE14EnsureCapacityEm.exit.i.i
  %i.dh = ptrtoint ptr %i.dd to i64               ; 2 uses
  %i.di = shl nuw nsw i64 %i.cw, 3
  %i.dj = add nuw i64 %.pre-phi.i.i, %i.di
  %i.dk = add i64 %i.dh, 8
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %i.dj, i64 %i.dk)
  %i.dl = xor i64 %i.dh, -1
  %i.dm = add i64 %umax.i.i, %i.dl
  %i.dn = and i64 %i.dm, -8
  %i.do = add i64 %i.dn, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.dd, i8 0, i64 %i.do, i1 false)
  %.pre4.pre.i = load ptr, ptr %i.cq, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler8PackNodeEE6resizeEm.exit.i

_ZN2v88internal10ZoneVectorIPNS0_8compiler8PackNodeEE6resizeEm.exit.i: ; preds = %.lr.ph.preheader.i.i, %_ZN2v88internal10ZoneVectorIPNS0_8compiler8PackNodeEE14EnsureCapacityEm.exit.i.i
  %.pre4.i = phi ptr [ %i.de, %_ZN2v88internal10ZoneVectorIPNS0_8compiler8PackNodeEE14EnsureCapacityEm.exit.i.i ], [ %.pre4.pre.i, %.lr.ph.preheader.i.i ]
  store ptr %i.df, ptr %i.co, align 8
  br label %_ZN2v88internal8compiler8PackNode10SetOperandEmPS2_.exit

_ZN2v88internal8compiler8PackNode10SetOperandEmPS2_.exit: ; preds = %bb.l, %_ZN2v88internal10ZoneVectorIPNS0_8compiler8PackNodeEE6resizeEm.exit.i
  %i.dp = phi ptr [ %.pre4.i, %_ZN2v88internal10ZoneVectorIPNS0_8compiler8PackNodeEE6resizeEm.exit.i ], [ %i.cr, %bb.l ]
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.i
  store ptr %.us-phi, ptr %i.dq, align 8
  br label %.loopexit

bb.o:                                             ; preds = %.split.us
  br i1 %.us-phi32, label %bb.p, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit23

bb.p:                                             ; preds = %bb.o
  %i.dr = load ptr, ptr %.us-phi33, align 8
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = add i64 %i.ds, 16
  %i.du = inttoptr i64 %i.dt to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit23

_ZNK2v88internal8compiler4Node7InputAtEi.exit23:  ; preds = %bb.o, %bb.p
  %.sink.i.i22 = phi ptr [ %i.du, %bb.p ], [ %.us-phi33, %bb.o ]
  %i.dv = getelementptr inbounds [8 x i8], ptr %.sink.i.i22, i64 %i.i
  %i.dw = load ptr, ptr %i.dv, align 8
  store ptr %i.dw, ptr %3, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.b, %bb.a, %_ZNK2v88internal8compiler4Node7InputAtEi.exit23, %_ZN2v88internal8compiler8PackNode10SetOperandEmPS2_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler12Revectorizer17SetMemoryOpInputsERNS_4base11SmallVectorIPNS1_4NodeELm2ESaIS6_EEEPNS1_8PackNodeEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4
  %i.f = and i32 %i.e, 251658240
  %.not.i.i = icmp eq i32 %i.f, 251658240
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = add i64 %i.g, 32
  %i.i = inttoptr i64 %i.h to ptr                 ; 6 uses
  br i1 %.not.i.i, label %bb.b, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = add i64 %i.k, 16
  %i.m = inttoptr i64 %i.l to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit

_ZNK2v88internal8compiler4Node7InputAtEi.exit:    ; preds = %bb.a, %bb.b
  %.sink.i.i = phi ptr [ %i.m, %bb.b ], [ %i.i, %bb.a ]
  %i.n = load ptr, ptr %.sink.i.i, align 8
  %i.o = load ptr, ptr %1, align 8
  store ptr %i.n, ptr %i.o, align 8
  %i.p = load i32, ptr %i.d, align 4
  %i.q = and i32 %i.p, 251658240
  %.not.i.i13 = icmp eq i32 %i.q, 251658240
  br i1 %.not.i.i13, label %bb.c, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit15

bb.c:                                             ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit
  %i.r = load ptr, ptr %i.i, align 8
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = add i64 %i.s, 16
  %i.u = inttoptr i64 %i.t to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit15

_ZNK2v88internal8compiler4Node7InputAtEi.exit15:  ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit, %bb.c
  %.sink.i.i14 = phi ptr [ %i.u, %bb.c ], [ %i.i, %_ZNK2v88internal8compiler4Node7InputAtEi.exit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.sink.i.i14, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %1, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.w, ptr %i.y, align 8
  %i.z = sext i32 %3 to i64
  %i.aa = load ptr, ptr %1, align 8
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.z
  tail call void @_ZN2v88internal8compiler12Revectorizer14SetEffectInputEPNS1_8PackNodeEiRPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
  %i.ac = load i32, ptr %i.d, align 4
  %i.ad = and i32 %i.ac, 251658240
  %.not.i.i16 = icmp eq i32 %i.ad, 251658240
  br i1 %.not.i.i16, label %bb.d, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit18

bb.d:                                             ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit15
  %i.ae = load ptr, ptr %i.i, align 8
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = add i64 %i.af, 16
  %i.ah = inttoptr i64 %i.ag to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit18

_ZNK2v88internal8compiler4Node7InputAtEi.exit18:  ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit15, %bb.d
  %.sink.i.i17 = phi ptr [ %i.ah, %bb.d ], [ %i.i, %_ZNK2v88internal8compiler4Node7InputAtEi.exit15 ]
  %i.ai = add nsw i32 %3, 1
  %i.aj = sext i32 %i.ai to i64                   ; 2 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %.sink.i.i17, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = load ptr, ptr %1, align 8
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.aj
  store ptr %i.al, ptr %i.an, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler12Revectorizer13VectorizeTreeEPNS1_8PackNodeE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %3 = alloca %"struct.std::array.712", align 8   ; 4 uses
  %4 = alloca %"struct.std::array.711", align 8   ; 5 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %5 = alloca %"class.v8::base::SmallVector.515", align 8 ; 47 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca [32 x i8], align 16               ; 75 uses
  %6 = ptrtoaddr ptr %i.c to i64                  ; 3 uses
  %i.d = alloca [32 x i8], align 16               ; 35 uses
  %7 = alloca %"class.v8::internal::compiler::Node::Uses", align 8 ; 4 uses
  %i.e = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !5, !noundef !6
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str) #16
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__._ZN2v88internal8compiler12Revectorizer13VectorizeTreeEPNS1_8PackNodeE) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 38 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load ptr, ptr %i.j, align 8              ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 5 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !5, !noundef !6
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.e, label %bb.hr

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str) #16
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.q = load i32, ptr %i.p, align 4
  %i.r = and i32 %i.q, 16777215
  %i.s = load ptr, ptr %i.i, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.38, i32 noundef %i.r, ptr noundef %i.u) #16
  %.pre = load ptr, ptr %i.l, align 8
  br label %bb.hr

bb.f:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 20 ; 24 uses
  %i.w = load i32, ptr %i.v, align 4              ; 2 uses
  %i.x = and i32 %i.w, 251658240
  %.not.i = icmp eq i32 %i.x, 251658240
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = lshr i32 %i.w, 24
  %i.z = and i32 %i.y, 15
  br label %_ZNK2v88internal8compiler4Node10InputCountEv.exit

bb.h:                                             ; preds = %bb.f
  %i.aa = ptrtoint ptr %i.i to i64
  %i.ab = add i64 %i.aa, 32
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i32, ptr %i.ae, align 8
  br label %_ZNK2v88internal8compiler4Node10InputCountEv.exit

_ZNK2v88internal8compiler4Node10InputCountEv.exit: ; preds = %bb.g, %bb.h
  %i.ag = phi i32 [ %i.z, %bb.g ], [ %i.af, %bb.h ] ; 132 uses
  %i.ah = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !5, !noundef !6
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK2v88internal8compiler4Node10InputCountEv.exit
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str) #16
  %i.aj = load i32, ptr %i.v, align 4
  %i.ak = and i32 %i.aj, 16777215
  %i.al = load ptr, ptr %i.i, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.39, i32 noundef %i.ak, ptr noundef %i.an, i32 noundef %i.ag) #16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNK2v88internal8compiler4Node10InputCountEv.exit
  %i.ao = load ptr, ptr %i.i, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load i16, ptr %i.ap, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr null, ptr %i.a, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 130 uses
  %i.as = load ptr, ptr %i.ar, align 8            ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 792 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %.not.i189 = icmp eq ptr %i.au, null
  br i1 %.not.i189, label %bb.k, label %_ZN2v88internal8compiler12MachineGraph4DeadEv.exit

bb.k:                                             ; preds = %bb.j
  %i.av = load ptr, ptr %i.as, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = tail call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder4DeadEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #16
  %i.az = tail call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.av, ptr noundef %i.ay, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #16 ; 2 uses
  store ptr %i.az, ptr %i.at, align 8
  br label %_ZN2v88internal8compiler12MachineGraph4DeadEv.exit

_ZN2v88internal8compiler12MachineGraph4DeadEv.exit: ; preds = %bb.j, %bb.k
  %i.ba = phi ptr [ %i.az, %bb.k ], [ %i.au, %bb.j ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.bb = sext i32 %i.ag to i64                   ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  store ptr %i.bc, ptr %5, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store ptr %i.bc, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %i.bf, ptr %i.be, align 8
  %i.bg = icmp ugt i32 %i.ag, 2
  br i1 %i.bg, label %bb.l, label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm2ESaIS5_EE6resizeEm.exit

bb.l:                                             ; preds = %_ZN2v88internal8compiler12MachineGraph4DeadEv.exit
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm2ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(40) %5, i64 noundef %i.bb)
  %.pre.i = load ptr, ptr %5, align 8
  br label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm2ESaIS5_EE6resizeEm.exit

_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm2ESaIS5_EE6resizeEm.exit: ; preds = %_ZN2v88internal8compiler12MachineGraph4DeadEv.exit, %bb.l
  %i.bh = phi ptr [ %.pre.i, %bb.l ], [ %i.bc, %_ZN2v88internal8compiler12MachineGraph4DeadEv.exit ]
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bb
  store ptr %i.bi, ptr %i.bd, align 8
  %i.bj = icmp sgt i32 %i.ag, 0
  br i1 %i.bj, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm2ESaIS5_EE6resizeEm.exit
  %wide.trip.count = zext nneg i32 %i.ag to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.bk = icmp ult i32 %i.ag, 4
  br i1 %i.bk, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod460 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod460)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.bl = load ptr, ptr %5, align 8
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.epil
  store ptr %i.ba, ptr %i.bm, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !51

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm2ESaIS5_EE6resizeEm.exit
  switch i16 %i.aq, label %bb.fv [
    i16 36, label %bb.m
    i16 54, label %bb.n
    i16 620, label %bb.o
    i16 649, label %bb.p
    i16 717, label %bb.q
    i16 738, label %bb.r
    i16 780, label %bb.s
    i16 823, label %bb.t
    i16 621, label %bb.u
    i16 650, label %bb.v
    i16 718, label %bb.w
    i16 739, label %bb.x
    i16 782, label %bb.y
    i16 825, label %bb.z
    i16 622, label %bb.aa
    i16 651, label %bb.ab
    i16 719, label %bb.ac
    i16 740, label %bb.ad
    i16 784, label %bb.ae
    i16 623, label %bb.af
    i16 652, label %bb.ag
    i16 781, label %bb.ah
    i16 783, label %bb.ai
    i16 797, label %bb.aj
    i16 798, label %bb.ak
    i16 824, label %bb.al
    i16 826, label %bb.am
    i16 836, label %bb.an
    i16 837, label %bb.ao
    i16 626, label %bb.ap
    i16 655, label %bb.aq
    i16 720, label %bb.ar
    i16 743, label %bb.as
    i16 787, label %bb.at
    i16 829, label %bb.au
    i16 627, label %bb.av
    i16 656, label %bb.aw
    i16 722, label %bb.ax
    i16 747, label %bb.ay
    i16 791, label %bb.az
    i16 833, label %bb.ba
    i16 628, label %bb.bb
    i16 657, label %bb.bc
    i16 629, label %bb.bd
    i16 658, label %bb.be
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler12Revectorizer13VectorizeTreeEPNS1_8PackNodeE:bb.a
bb.eu:                                            ; preds = %.loopexit335
  %i.ada = call noundef zeroext i1 @_ZN2v88internal4wasm11SimdShuffle13TryMatchSplatILi2ELi16ELi16EEEbPKhPiQaaaagtT_Li0EeqrmT0_T1_Li0EeqrmT0_T_Li0E(ptr noundef nonnull %i.acy, ptr noundef nonnull %i.b)
  br i1 %i.ada, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.40) #17
  unreachable

bb.ew:                                            ; preds = %bb.eu, %.loopexit335
  %.sink433 = phi i32 [ 14, %.loopexit335 ], [ 15, %bb.eu ]
  %.sink431 = phi i32 [ 2, %.loopexit335 ], [ 3, %bb.eu ]
  %i.adb = load ptr, ptr %i.ar, align 8
  %i.adc = getelementptr inbounds nuw i8, ptr %i.adb, i64 16
  %i.add = load ptr, ptr %i.adc, align 8
  %i.ade = call noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder13LoadTransformENS1_16MemoryAccessKindENS1_18LoadTransformationE(ptr noundef nonnull align 8 dereferenceable(40) %i.add, i8 noundef zeroext 2, i32 noundef %.sink433) #16
  %i.adf = load i32, ptr %i.b, align 4            ; 2 uses
  %i.adg = shl nsw i32 %i.adf, %.sink431          ; 2 uses
  %i.adh = ashr i32 %i.adg, 4
  %i.adi = load i32, ptr %i.v, align 4
  %i.adj = and i32 %i.adi, 251658240
  %.not.i.i242 = icmp eq i32 %i.adj, 251658240
  %i.adk = ptrtoint ptr %i.i to i64
  %i.adl = add i64 %i.adk, 32
  %i.adm = inttoptr i64 %i.adl to ptr             ; 2 uses
  br i1 %.not.i.i242, label %bb.ex, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit244

bb.ex:                                            ; preds = %bb.ew
  %i.adn = load ptr, ptr %i.adm, align 8
  %i.ado = ptrtoint ptr %i.adn to i64
  %i.adp = add i64 %i.ado, 16
  %i.adq = inttoptr i64 %i.adp to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit244

_ZNK2v88internal8compiler4Node7InputAtEi.exit244: ; preds = %bb.ew, %bb.ex
  %.sink.i.i243 = phi ptr [ %i.adq, %bb.ex ], [ %i.adm, %bb.ew ]
  %i.adr = sext i32 %i.adh to i64
  %i.ads = getelementptr inbounds [8 x i8], ptr %.sink.i.i243, i64 %i.adr
  %i.adt = load ptr, ptr %i.ads, align 8          ; 7 uses
  store ptr %i.adt, ptr %i.a, align 8
  %i.adu = load ptr, ptr %i.be, align 8
  %i.adv = load ptr, ptr %5, align 8              ; 2 uses
  %i.adw = ptrtoint ptr %i.adu to i64
  %i.adx = ptrtoint ptr %i.adv to i64
  %i.ady = sub i64 %i.adw, %i.adx
  %i.adz = icmp ult i64 %i.ady, 32
  br i1 %i.adz, label %bb.ey, label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm2ESaIS5_EE6resizeEm.exit246

bb.ey:                                            ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit244
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm2ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(40) %5, i64 noundef 4)
  %.pre.i245 = load ptr, ptr %5, align 8
  %.pre384 = load i32, ptr %i.b, align 4
  br label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm2ESaIS5_EE6resizeEm.exit246

_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm2ESaIS5_EE6resizeEm.exit246: ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit244, %bb.ey
  %i.aea = phi i32 [ %.pre384, %bb.ey ], [ %i.adf, %_ZNK2v88internal8compiler4Node7InputAtEi.exit244 ]
  %i.aeb = phi ptr [ %.pre.i245, %bb.ey ], [ %i.adv, %_ZNK2v88internal8compiler4Node7InputAtEi.exit244 ] ; 2 uses
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aeb, i64 32
  store ptr %i.aec, ptr %i.bd, align 8
  %.not181 = icmp eq i32 %i.aea, 0
  br i1 %.not181, label %bb.fc, label %bb.ez

bb.ez:                                            ; preds = %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm2ESaIS5_EE6resizeEm.exit246
  %i.aed = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.aee = load ptr, ptr %i.aed, align 8          ; 2 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aee, i64 16 ; 3 uses
  %i.aeg = load i64, ptr %i.aef, align 8
  %i.aeh = call i64 @_ZNK2v88internal8compiler19SourcePositionTable17GetSourcePositionEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(72) %i.aee, ptr noundef %i.adt) #16 ; 2 uses
  %.not.i.i247 = icmp eq i64 %i.aeh, 0
  br i1 %.not.i.i247, label %_ZN2v88internal8compiler19SourcePositionTable5ScopeC2EPS2_PNS1_4NodeE.exit, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  store i64 %i.aeh, ptr %i.aef, align 8
  br label %_ZN2v88internal8compiler19SourcePositionTable5ScopeC2EPS2_PNS1_4NodeE.exit

_ZN2v88internal8compiler19SourcePositionTable5ScopeC2EPS2_PNS1_4NodeE.exit: ; preds = %bb.ez, %bb.fa
  %i.aei = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aej = load ptr, ptr %i.aei, align 8
  %i.aek = load ptr, ptr %i.ar, align 8
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aek, i64 16
  %i.aem = load ptr, ptr %i.ael, align 8
  %i.aen = call noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder8Int64AddEv(ptr noundef nonnull align 8 dereferenceable(40) %i.aem) #16
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.adt, i64 20
  %i.aep = load i32, ptr %i.aeo, align 4
  %i.aeq = and i32 %i.aep, 251658240
  %.not.i.i248 = icmp eq i32 %i.aeq, 251658240
  %i.aer = ptrtoint ptr %i.adt to i64
  %i.aes = add i64 %i.aer, 32
  %i.aet = inttoptr i64 %i.aes to ptr             ; 3 uses
  br i1 %.not.i.i248, label %bb.fb, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit250

bb.fb:                                            ; preds = %_ZN2v88internal8compiler19SourcePositionTable5ScopeC2EPS2_PNS1_4NodeE.exit
  %i.aeu = load ptr, ptr %i.aet, align 8
  %i.aev = ptrtoint ptr %i.aeu to i64
  %i.aew = add i64 %i.aev, 16
  %i.aex = inttoptr i64 %i.aew to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit250

_ZNK2v88internal8compiler4Node7InputAtEi.exit250: ; preds = %_ZN2v88internal8compiler19SourcePositionTable5ScopeC2EPS2_PNS1_4NodeE.exit, %bb.fb
  %.sink.i.i249 = phi ptr [ %i.aex, %bb.fb ], [ %i.aet, %_ZN2v88internal8compiler19SourcePositionTable5ScopeC2EPS2_PNS1_4NodeE.exit ]
  %i.aey = load ptr, ptr %.sink.i.i249, align 8
  %i.aez = load ptr, ptr %i.ar, align 8
  %i.afa = sext i32 %i.adg to i64
  %i.afb = call noundef ptr @_ZN2v88internal8compiler12MachineGraph13Int64ConstantEl(ptr noundef nonnull align 8 dereferenceable(800) %i.aez, i64 noundef %i.afa) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store ptr %i.aey, ptr %4, align 8
  %i.afc = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.afb, ptr %i.afc, align 8
  %i.afd = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.aej, ptr noundef %i.aen, i32 noundef 2, ptr noundef nonnull %4, i1 noundef zeroext false) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.afe = load ptr, ptr %5, align 8
  store ptr %i.afd, ptr %i.afe, align 8
  store i64 %i.aeg, ptr %i.aef, align 8
  br label %bb.fe

bb.fc:                                            ; preds = %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm2ESaIS5_EE6resizeEm.exit246
  %i.aff = getelementptr inbounds nuw i8, ptr %i.adt, i64 20
  %i.afg = load i32, ptr %i.aff, align 4
  %i.afh = and i32 %i.afg, 251658240
  %.not.i.i251 = icmp eq i32 %i.afh, 251658240
  %i.afi = ptrtoint ptr %i.adt to i64
  %i.afj = add i64 %i.afi, 32
  %i.afk = inttoptr i64 %i.afj to ptr             ; 3 uses
  br i1 %.not.i.i251, label %bb.fd, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit253

bb.fd:                                            ; preds = %bb.fc
  %i.afl = load ptr, ptr %i.afk, align 8
  %i.afm = ptrtoint ptr %i.afl to i64
  %i.afn = add i64 %i.afm, 16
  %i.afo = inttoptr i64 %i.afn to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit253

_ZNK2v88internal8compiler4Node7InputAtEi.exit253: ; preds = %bb.fc, %bb.fd
  %.sink.i.i252 = phi ptr [ %i.afo, %bb.fd ], [ %i.afk, %bb.fc ]
  %i.afp = load ptr, ptr %.sink.i.i252, align 8
  store ptr %i.afp, ptr %i.aeb, align 8
  br label %bb.fe

bb.fe:                                            ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit253, %_ZNK2v88internal8compiler4Node7InputAtEi.exit250
  %.pre-phi393 = phi ptr [ %i.afk, %_ZNK2v88internal8compiler4Node7InputAtEi.exit253 ], [ %i.aet, %_ZNK2v88internal8compiler4Node7InputAtEi.exit250 ] ; 6 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %i.adt, i64 20 ; 3 uses
  %i.afr = load i32, ptr %i.afq, align 4
  %i.afs = and i32 %i.afr, 251658240
  %.not.i.i254 = icmp eq i32 %i.afs, 251658240
  br i1 %.not.i.i254, label %bb.ff, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit256

bb.ff:                                            ; preds = %bb.fe
  %i.aft = load ptr, ptr %.pre-phi393, align 8
  %i.afu = ptrtoint ptr %i.aft to i64
  %i.afv = add i64 %i.afu, 16
  %i.afw = inttoptr i64 %i.afv to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit256

_ZNK2v88internal8compiler4Node7InputAtEi.exit256: ; preds = %bb.fe, %bb.ff
  %.sink.i.i255 = phi ptr [ %i.afw, %bb.ff ], [ %.pre-phi393, %bb.fe ]
  %i.afx = getelementptr inbounds nuw i8, ptr %.sink.i.i255, i64 8
  %i.afy = load ptr, ptr %i.afx, align 8
  %i.afz = load ptr, ptr %5, align 8              ; 3 uses
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afz, i64 8
  store ptr %i.afy, ptr %i.aga, align 8
  %i.agb = load i32, ptr %i.afq, align 4
  %i.agc = and i32 %i.agb, 251658240
  %.not.i.i257 = icmp eq i32 %i.agc, 251658240
  br i1 %.not.i.i257, label %bb.fg, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit259

bb.fg:                                            ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit256
  %i.agd = load ptr, ptr %.pre-phi393, align 8
  %i.age = ptrtoint ptr %i.agd to i64
  %i.agf = add i64 %i.age, 16
  %i.agg = inttoptr i64 %i.agf to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit259

_ZNK2v88internal8compiler4Node7InputAtEi.exit259: ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit256, %bb.fg
  %.sink.i.i258 = phi ptr [ %i.agg, %bb.fg ], [ %.pre-phi393, %_ZNK2v88internal8compiler4Node7InputAtEi.exit256 ]
  %i.agh = getelementptr inbounds nuw i8, ptr %.sink.i.i258, i64 16
  %i.agi = load ptr, ptr %i.agh, align 8
  %i.agj = getelementptr inbounds nuw i8, ptr %i.afz, i64 16
  store ptr %i.agi, ptr %i.agj, align 8
  %i.agk = load i32, ptr %i.afq, align 4
  %i.agl = and i32 %i.agk, 251658240
  %.not.i.i260 = icmp eq i32 %i.agl, 251658240
  br i1 %.not.i.i260, label %bb.fh, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit262

bb.fh:                                            ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit259
  %i.agm = load ptr, ptr %.pre-phi393, align 8
  %i.agn = ptrtoint ptr %i.agm to i64
  %i.ago = add i64 %i.agn, 16
  %i.agp = inttoptr i64 %i.ago to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit262

_ZNK2v88internal8compiler4Node7InputAtEi.exit262: ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit259, %bb.fh
  %.sink.i.i261 = phi ptr [ %i.agp, %bb.fh ], [ %.pre-phi393, %_ZNK2v88internal8compiler4Node7InputAtEi.exit259 ]
  %i.agq = getelementptr inbounds nuw i8, ptr %.sink.i.i261, i64 24
  %i.agr = load ptr, ptr %i.agq, align 8
  %i.ags = getelementptr inbounds nuw i8, ptr %i.afz, i64 24
  store ptr %i.agr, ptr %i.ags, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %bb.fw

_ZN2v88internal8compiler12_GLOBAL__N_17IsSplatINS0_10ZoneVectorIPNS1_4NodeEEEEEbRKT_.exit: ; preds = %bb.et
  %i.agt = load ptr, ptr %i.i, align 8
  %i.agu = call noundef nonnull align 1 dereferenceable(16) ptr @_ZN2v88internal8compiler24S128ImmediateParameterOfEPKNS1_8OperatorE(ptr noundef %i.agt) #16 ; 37 uses
  %8 = ptrtoaddr ptr %i.agu to i64                ; 2 uses
  %i.agv = load ptr, ptr %i.k, align 8
  %i.agw = call noundef nonnull align 1 dereferenceable(16) ptr @_ZN2v88internal8compiler24S128ImmediateParameterOfEPKNS1_8OperatorE(ptr noundef %i.agv) #16 ; 37 uses
  %9 = ptrtoaddr ptr %i.agw to i64                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.agx = load i32, ptr %i.v, align 4
  %i.agy = and i32 %i.agx, 251658240
  %.not.i.i263 = icmp eq i32 %i.agy, 251658240
  %i.agz = ptrtoint ptr %i.i to i64
  %i.aha = add i64 %i.agz, 32
  %i.ahb = inttoptr i64 %i.aha to ptr             ; 2 uses
  br i1 %.not.i.i263, label %bb.fi, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit268

bb.fi:                                            ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_17IsSplatINS0_10ZoneVectorIPNS1_4NodeEEEEEbRKT_.exit
  %i.ahc = load ptr, ptr %i.ahb, align 8
  %i.ahd = ptrtoint ptr %i.ahc to i64
  %i.ahe = add i64 %i.ahd, 16
  %i.ahf = inttoptr i64 %i.ahe to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit268

_ZNK2v88internal8compiler4Node7InputAtEi.exit268: ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_17IsSplatINS0_10ZoneVectorIPNS1_4NodeEEEEEbRKT_.exit, %bb.fi
  %.in = phi ptr [ %i.ahf, %bb.fi ], [ %i.ahb, %_ZN2v88internal8compiler12_GLOBAL__N_17IsSplatINS0_10ZoneVectorIPNS1_4NodeEEEEEbRKT_.exit ] ; 2 uses
  %i.ahg = load ptr, ptr %.in, align 8
  %i.ahh = getelementptr inbounds nuw i8, ptr %.in, i64 8
  %i.ahi = load ptr, ptr %i.ahh, align 8
  %i.ahj = icmp eq ptr %i.ahg, %i.ahi
  br i1 %i.ahj, label %bb.fj, label %vector.memcheck

bb.fj:                                            ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit268
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.ahl = load i32, ptr %i.ahk, align 4
  %i.ahm = and i32 %i.ahl, 251658240
  %.not.i.i269 = icmp eq i32 %i.ahm, 251658240
  %i.ahn = ptrtoint ptr %i.k to i64
  %i.aho = add i64 %i.ahn, 32
  %i.ahp = inttoptr i64 %i.aho to ptr             ; 2 uses
  br i1 %.not.i.i269, label %bb.fk, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit274

bb.fk:                                            ; preds = %bb.fj
  %i.ahq = load ptr, ptr %i.ahp, align 8
  %i.ahr = ptrtoint ptr %i.ahq to i64
  %i.ahs = add i64 %i.ahr, 16
  %i.aht = inttoptr i64 %i.ahs to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit274

_ZNK2v88internal8compiler4Node7InputAtEi.exit274: ; preds = %bb.fj, %bb.fk
  %.in328 = phi ptr [ %i.aht, %bb.fk ], [ %i.ahp, %bb.fj ] ; 2 uses
  %i.ahu = load ptr, ptr %.in328, align 8
  %i.ahv = getelementptr inbounds nuw i8, ptr %.in328, i64 8
  %i.ahw = load ptr, ptr %i.ahv, align 8
  %i.ahx = icmp eq ptr %i.ahu, %i.ahw
  br i1 %i.ahx, label %.preheader332.preheader, label %vector.memcheck

.preheader332.preheader:                          ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit274
  %10 = add nuw i64 %8, 16
  %11 = add nuw i64 %6, 32                        ; 2 uses
  %12 = add nuw i64 %9, 16
  %rt.bound0 = icmp ugt i64 %11, %9
  %rt.bound1 = icmp ugt i64 %12, %6
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.bound0452 = icmp ugt i64 %10, %6
  %rt.bound1453 = icmp ugt i64 %11, %8
  %rt.conflict454 = and i1 %rt.bound0452, %rt.bound1453
  %rt.conflict.all = or i1 %rt.conflict, %rt.conflict454
  %rt.guard = freeze i1 %rt.conflict.all
  br i1 %rt.guard, label %.preheader332.preheader.rtscalar, label %.preheader332.preheader.rtvec

vector.memcheck:                                  ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit268, %_ZNK2v88internal8compiler4Node7InputAtEi.exit274
  %scevgep = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %scevgep446 = getelementptr inbounds nuw i8, ptr %i.agu, i64 16
  %scevgep447 = getelementptr inbounds nuw i8, ptr %i.agw, i64 16
  %bound0 = icmp ult ptr %i.c, %scevgep446
  %bound1 = icmp ult ptr %i.agu, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0448 = icmp ult ptr %i.c, %scevgep447
  %bound1449 = icmp ult ptr %i.agw, %scevgep
  %found.conflict450 = and i1 %bound0448, %bound1449
  %conflict.rdx = or i1 %found.conflict, %found.conflict450
  br i1 %conflict.rdx, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck
  %wide.load = load <16 x i8>, ptr %i.agu, align 1, !alias.scope !54 ; 3 uses
  %i.ahy = icmp ult <16 x i8> %wide.load, splat (i8 16)
  %i.ahz = add <16 x i8> %wide.load, splat (i8 16)
  %i.aia = select <16 x i1> %i.ahy, <16 x i8> %wide.load, <16 x i8> %i.ahz
  store <16 x i8> %i.aia, ptr %i.c, align 16, !alias.scope !57, !noalias !59
  %wide.load451 = load <16 x i8>, ptr %i.agw, align 1, !alias.scope !61 ; 3 uses
  %i.aib = icmp ult <16 x i8> %wide.load451, splat (i8 16)
  %i.aic = or disjoint <16 x i8> %wide.load451, splat (i8 16)
  %i.aid = add <16 x i8> %wide.load451, splat (i8 32)
  %i.aie = select <16 x i1> %i.aib, <16 x i8> %i.aic, <16 x i8> %i.aid
  %i.aif = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store <16 x i8> %i.aie, ptr %i.aif, align 16, !alias.scope !57, !noalias !59
  br label %.loopexit333

scalar.ph:                                        ; preds = %vector.memcheck
  %i.aig = load i8, ptr %i.agu, align 1           ; 3 uses
  %i.aih = icmp ult i8 %i.aig, 16
  %i.aii = add i8 %i.aig, 16
  %spec.select = select i1 %i.aih, i8 %i.aig, i8 %i.aii
  store i8 %spec.select, ptr %i.c, align 16
  %i.aij = load i8, ptr %i.agw, align 1           ; 3 uses
  %i.aik = icmp ult i8 %i.aij, 16
  %i.ail = or disjoint i8 %i.aij, 16
  %i.aim = add i8 %i.aij, 32
  %.sink = select i1 %i.aik, i8 %i.ail, i8 %i.aim
  %i.ain = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i8 %.sink, ptr %i.ain, align 16
  %i.aio = getelementptr inbounds nuw i8, ptr %i.agu, i64 1
  %i.aip = load i8, ptr %i.aio, align 1           ; 3 uses
  %i.aiq = icmp ult i8 %i.aip, 16
  %i.air = add i8 %i.aip, 16
  %spec.select.1 = select i1 %i.aiq, i8 %i.aip, i8 %i.air
  %i.ais = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %spec.select.1, ptr %i.ais, align 1
  %i.ait = getelementptr inbounds nuw i8, ptr %i.agw, i64 1
  %i.aiu = load i8, ptr %i.ait, align 1           ; 3 uses
  %i.aiv = icmp ult i8 %i.aiu, 16
  %i.aiw = or disjoint i8 %i.aiu, 16
  %i.aix = add i8 %i.aiu, 32
  %.sink.1 = select i1 %i.aiv, i8 %i.aiw, i8 %i.aix
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  store i8 %.sink.1, ptr %i.aiy, align 1
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.agu, i64 2
  %i.aja = load i8, ptr %i.aiz, align 1           ; 3 uses
  %i.ajb = icmp ult i8 %i.aja, 16
  %i.ajc = add i8 %i.aja, 16
  %spec.select.2 = select i1 %i.ajb, i8 %i.aja, i8 %i.ajc
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 %spec.select.2, ptr %i.ajd, align 2
  %i.aje = getelementptr inbounds nuw i8, ptr %i.agw, i64 2
  %i.ajf = load i8, ptr %i.aje, align 1           ; 3 uses
  %i.ajg = icmp ult i8 %i.ajf, 16
  %i.ajh = or disjoint i8 %i.ajf, 16
  %i.aji = add i8 %i.ajf, 32
  %.sink.2 = select i1 %i.ajg, i8 %i.ajh, i8 %i.aji
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.c, i64 18
  store i8 %.sink.2, ptr %i.ajj, align 2
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.agu, i64 3
  %i.ajl = load i8, ptr %i.ajk, align 1           ; 3 uses
  %i.ajm = icmp ult i8 %i.ajl, 16
  %i.ajn = add i8 %i.ajl, 16
  %spec.select.3 = select i1 %i.ajm, i8 %i.ajl, i8 %i.ajn
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  store i8 %spec.select.3, ptr %i.ajo, align 1
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.agw, i64 3
  %i.ajq = load i8, ptr %i.ajp, align 1           ; 3 uses
  %i.ajr = icmp ult i8 %i.ajq, 16
  %i.ajs = or disjoint i8 %i.ajq, 16
  %i.ajt = add i8 %i.ajq, 32
  %.sink.3 = select i1 %i.ajr, i8 %i.ajs, i8 %i.ajt
  %i.aju = getelementptr inbounds nuw i8, ptr %i.c, i64 19
  store i8 %.sink.3, ptr %i.aju, align 1
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.agu, i64 4
  %i.ajw = load i8, ptr %i.ajv, align 1           ; 3 uses
  %i.ajx = icmp ult i8 %i.ajw, 16
  %i.ajy = add i8 %i.ajw, 16
  %spec.select.4 = select i1 %i.ajx, i8 %i.ajw, i8 %i.ajy
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i8 %spec.select.4, ptr %i.ajz, align 4
  %i.aka = getelementptr inbounds nuw i8, ptr %i.agw, i64 4
  %i.akb = load i8, ptr %i.aka, align 1           ; 3 uses
  %i.akc = icmp ult i8 %i.akb, 16
  %i.akd = or disjoint i8 %i.akb, 16
  %i.ake = add i8 %i.akb, 32
  %.sink.4 = select i1 %i.akc, i8 %i.akd, i8 %i.ake
  %i.akf = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i8 %.sink.4, ptr %i.akf, align 4
  %i.akg = getelementptr inbounds nuw i8, ptr %i.agu, i64 5
  %i.akh = load i8, ptr %i.akg, align 1           ; 3 uses
  %i.aki = icmp ult i8 %i.akh, 16
  %i.akj = add i8 %i.akh, 16
  %spec.select.5 = select i1 %i.aki, i8 %i.akh, i8 %i.akj
  %i.akk = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  store i8 %spec.select.5, ptr %i.akk, align 1
  %i.akl = getelementptr inbounds nuw i8, ptr %i.agw, i64 5
  %i.akm = load i8, ptr %i.akl, align 1           ; 3 uses
  %i.akn = icmp ult i8 %i.akm, 16
  %i.ako = or disjoint i8 %i.akm, 16
  %i.akp = add i8 %i.akm, 32
  %.sink.5 = select i1 %i.akn, i8 %i.ako, i8 %i.akp
  %i.akq = getelementptr inbounds nuw i8, ptr %i.c, i64 21
  store i8 %.sink.5, ptr %i.akq, align 1
  %i.akr = getelementptr inbounds nuw i8, ptr %i.agu, i64 6
  %i.aks = load i8, ptr %i.akr, align 1           ; 3 uses
  %i.akt = icmp ult i8 %i.aks, 16
  %i.aku = add i8 %i.aks, 16
  %spec.select.6 = select i1 %i.akt, i8 %i.aks, i8 %i.aku
  %i.akv = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  store i8 %spec.select.6, ptr %i.akv, align 2
  %i.akw = getelementptr inbounds nuw i8, ptr %i.agw, i64 6
  %i.akx = load i8, ptr %i.akw, align 1           ; 3 uses
  %i.aky = icmp ult i8 %i.akx, 16
  %i.akz = or disjoint i8 %i.akx, 16
  %i.ala = add i8 %i.akx, 32
  %.sink.6 = select i1 %i.aky, i8 %i.akz, i8 %i.ala
  %i.alb = getelementptr inbounds nuw i8, ptr %i.c, i64 22
  store i8 %.sink.6, ptr %i.alb, align 2
  %i.alc = getelementptr inbounds nuw i8, ptr %i.agu, i64 7
  %i.ald = load i8, ptr %i.alc, align 1           ; 3 uses
  %i.ale = icmp ult i8 %i.ald, 16
  %i.alf = add i8 %i.ald, 16
  %spec.select.7 = select i1 %i.ale, i8 %i.ald, i8 %i.alf
  %i.alg = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  store i8 %spec.select.7, ptr %i.alg, align 1
  %i.alh = getelementptr inbounds nuw i8, ptr %i.agw, i64 7
  %i.ali = load i8, ptr %i.alh, align 1           ; 3 uses
  %i.alj = icmp ult i8 %i.ali, 16
  %i.alk = or disjoint i8 %i.ali, 16
  %i.all = add i8 %i.ali, 32
  %.sink.7 = select i1 %i.alj, i8 %i.alk, i8 %i.all
  %i.alm = getelementptr inbounds nuw i8, ptr %i.c, i64 23
  store i8 %.sink.7, ptr %i.alm, align 1
  %i.aln = getelementptr inbounds nuw i8, ptr %i.agu, i64 8
  %i.alo = load i8, ptr %i.aln, align 1           ; 3 uses
  %i.alp = icmp ult i8 %i.alo, 16
  %i.alq = add i8 %i.alo, 16
  %spec.select.8 = select i1 %i.alp, i8 %i.alo, i8 %i.alq
  %i.alr = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 %spec.select.8, ptr %i.alr, align 8
  %i.als = getelementptr inbounds nuw i8, ptr %i.agw, i64 8
  %i.alt = load i8, ptr %i.als, align 1           ; 3 uses
  %i.alu = icmp ult i8 %i.alt, 16
  %i.alv = or disjoint i8 %i.alt, 16
  %i.alw = add i8 %i.alt, 32
  %.sink.8 = select i1 %i.alu, i8 %i.alv, i8 %i.alw
  %i.alx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i8 %.sink.8, ptr %i.alx, align 8
  %i.aly = getelementptr inbounds nuw i8, ptr %i.agu, i64 9
  %i.alz = load i8, ptr %i.aly, align 1           ; 3 uses
  %i.ama = icmp ult i8 %i.alz, 16
  %i.amb = add i8 %i.alz, 16
  %spec.select.9 = select i1 %i.ama, i8 %i.alz, i8 %i.amb
  %i.amc = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  store i8 %spec.select.9, ptr %i.amc, align 1
  %i.amd = getelementptr inbounds nuw i8, ptr %i.agw, i64 9
  %i.ame = load i8, ptr %i.amd, align 1           ; 3 uses
  %i.amf = icmp ult i8 %i.ame, 16
  %i.amg = or disjoint i8 %i.ame, 16
  %i.amh = add i8 %i.ame, 32
  %.sink.9 = select i1 %i.amf, i8 %i.amg, i8 %i.amh
  %i.ami = getelementptr inbounds nuw i8, ptr %i.c, i64 25
  store i8 %.sink.9, ptr %i.ami, align 1
  %i.amj = getelementptr inbounds nuw i8, ptr %i.agu, i64 10
  %i.amk = load i8, ptr %i.amj, align 1           ; 3 uses
  %i.aml = icmp ult i8 %i.amk, 16
  %i.amm = add i8 %i.amk, 16
  %spec.select.10 = select i1 %i.aml, i8 %i.amk, i8 %i.amm
  %i.amn = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  store i8 %spec.select.10, ptr %i.amn, align 2
  %i.amo = getelementptr inbounds nuw i8, ptr %i.agw, i64 10
  %i.amp = load i8, ptr %i.amo, align 1           ; 3 uses
  %i.amq = icmp ult i8 %i.amp, 16
  %i.amr = or disjoint i8 %i.amp, 16
  %i.ams = add i8 %i.amp, 32
  %.sink.10 = select i1 %i.amq, i8 %i.amr, i8 %i.ams
  %i.amt = getelementptr inbounds nuw i8, ptr %i.c, i64 26
  store i8 %.sink.10, ptr %i.amt, align 2
  %i.amu = getelementptr inbounds nuw i8, ptr %i.agu, i64 11
  %i.amv = load i8, ptr %i.amu, align 1           ; 3 uses
  %i.amw = icmp ult i8 %i.amv, 16
  %i.amx = add i8 %i.amv, 16
  %spec.select.11 = select i1 %i.amw, i8 %i.amv, i8 %i.amx
  %i.amy = getelementptr inbounds nuw i8, ptr %i.c, i64 11
  store i8 %spec.select.11, ptr %i.amy, align 1
  %i.amz = getelementptr inbounds nuw i8, ptr %i.agw, i64 11
  %i.ana = load i8, ptr %i.amz, align 1           ; 3 uses
  %i.anb = icmp ult i8 %i.ana, 16
  %i.anc = or disjoint i8 %i.ana, 16
  %i.and = add i8 %i.ana, 32
  %.sink.11 = select i1 %i.anb, i8 %i.anc, i8 %i.and
  %i.ane = getelementptr inbounds nuw i8, ptr %i.c, i64 27
  store i8 %.sink.11, ptr %i.ane, align 1
  %i.anf = getelementptr inbounds nuw i8, ptr %i.agu, i64 12
  %i.ang = load i8, ptr %i.anf, align 1           ; 3 uses
  %i.anh = icmp ult i8 %i.ang, 16
  %i.ani = add i8 %i.ang, 16
  %spec.select.12 = select i1 %i.anh, i8 %i.ang, i8 %i.ani
  %i.anj = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i8 %spec.select.12, ptr %i.anj, align 4
  %i.ank = getelementptr inbounds nuw i8, ptr %i.agw, i64 12
  %i.anl = load i8, ptr %i.ank, align 1           ; 3 uses
  %i.anm = icmp ult i8 %i.anl, 16
  %i.ann = or disjoint i8 %i.anl, 16
  %i.ano = add i8 %i.anl, 32
  %.sink.12 = select i1 %i.anm, i8 %i.ann, i8 %i.ano
  %i.anp = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  store i8 %.sink.12, ptr %i.anp, align 4
  %i.anq = getelementptr inbounds nuw i8, ptr %i.agu, i64 13
  %i.anr = load i8, ptr %i.anq, align 1           ; 3 uses
  %i.ans = icmp ult i8 %i.anr, 16
  %i.ant = add i8 %i.anr, 16
  %spec.select.13 = select i1 %i.ans, i8 %i.anr, i8 %i.ant
  %i.anu = getelementptr inbounds nuw i8, ptr %i.c, i64 13
  store i8 %spec.select.13, ptr %i.anu, align 1
  %i.anv = getelementptr inbounds nuw i8, ptr %i.agw, i64 13
  %i.anw = load i8, ptr %i.anv, align 1           ; 3 uses
  %i.anx = icmp ult i8 %i.anw, 16
  %i.any = or disjoint i8 %i.anw, 16
  %i.anz = add i8 %i.anw, 32
  %.sink.13 = select i1 %i.anx, i8 %i.any, i8 %i.anz
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.c, i64 29
  store i8 %.sink.13, ptr %i.aoa, align 1
  %i.aob = getelementptr inbounds nuw i8, ptr %i.agu, i64 14
  %i.aoc = load i8, ptr %i.aob, align 1           ; 3 uses
  %i.aod = icmp ult i8 %i.aoc, 16
  %i.aoe = add i8 %i.aoc, 16
  %spec.select.14 = select i1 %i.aod, i8 %i.aoc, i8 %i.aoe
  %i.aof = getelementptr inbounds nuw i8, ptr %i.c, i64 14
  store i8 %spec.select.14, ptr %i.aof, align 2
  %i.aog = getelementptr inbounds nuw i8, ptr %i.agw, i64 14
  %i.aoh = load i8, ptr %i.aog, align 1           ; 3 uses
  %i.aoi = icmp ult i8 %i.aoh, 16
  %i.aoj = or disjoint i8 %i.aoh, 16
  %i.aok = add i8 %i.aoh, 32
  %.sink.14 = select i1 %i.aoi, i8 %i.aoj, i8 %i.aok
  %i.aol = getelementptr inbounds nuw i8, ptr %i.c, i64 30
  store i8 %.sink.14, ptr %i.aol, align 2
  %i.aom = getelementptr inbounds nuw i8, ptr %i.agu, i64 15
  %i.aon = load i8, ptr %i.aom, align 1           ; 3 uses
  %i.aoo = icmp ult i8 %i.aon, 16
  %i.aop = add i8 %i.aon, 16
  %spec.select.15 = select i1 %i.aoo, i8 %i.aon, i8 %i.aop
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.c, i64 15
  store i8 %spec.select.15, ptr %i.aoq, align 1
  %i.aor = getelementptr inbounds nuw i8, ptr %i.agw, i64 15
  %i.aos = load i8, ptr %i.aor, align 1           ; 3 uses
  %i.aot = icmp ult i8 %i.aos, 16
  %i.aou = or disjoint i8 %i.aos, 16
  %i.aov = add i8 %i.aos, 32
  %.sink.15 = select i1 %i.aot, i8 %i.aou, i8 %i.aov
  %i.aow = getelementptr inbounds nuw i8, ptr %i.c, i64 31
  store i8 %.sink.15, ptr %i.aow, align 1
  br label %.loopexit333

.loopexit333:                                     ; preds = %.preheader332.preheader.rtvec, %.preheader332.preheader.rtscalar, %scalar.ph, %vector.body
  %i.aox = load ptr, ptr %i.ar, align 8
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aox, i64 16
  %i.aoz = load ptr, ptr %i.aoy, align 8
  %i.apa = call noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder12I8x32ShuffleEPKh(ptr noundef nonnull align 8 dereferenceable(40) %i.aoz, ptr noundef nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %bb.fw

bb.fl:                                            ; preds = %._crit_edge
  %i.apb = load ptr, ptr %i.ar, align 8
  %i.apc = getelementptr inbounds nuw i8, ptr %i.apb, i64 16
  %i.apd = load ptr, ptr %i.apc, align 8
  %i.ape = call noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder8S256ZeroEv(ptr noundef nonnull align 8 dereferenceable(40) %i.apd) #16
  br label %bb.fw

bb.fm:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  %i.apf = load ptr, ptr %i.i, align 8
  %i.apg = call noundef nonnull align 1 dereferenceable(16) ptr @_ZN2v88internal8compiler24S128ImmediateParameterOfEPKNS1_8OperatorE(ptr noundef %i.apf) #16 ; 16 uses
  %i.aph = load ptr, ptr %i.k, align 8
  %i.api = call noundef nonnull align 1 dereferenceable(16) ptr @_ZN2v88internal8compiler24S128ImmediateParameterOfEPKNS1_8OperatorE(ptr noundef %i.aph) #16 ; 16 uses
  %i.apj = load i8, ptr %i.apg, align 1
  store i8 %i.apj, ptr %i.d, align 16
  %i.apk = load i8, ptr %i.api, align 1
  %i.apl = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i8 %i.apk, ptr %i.apl, align 16
  %i.apm = getelementptr inbounds nuw i8, ptr %i.apg, i64 1
  %i.apn = load i8, ptr %i.apm, align 1
  %i.apo = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 %i.apn, ptr %i.apo, align 1
  %i.app = getelementptr inbounds nuw i8, ptr %i.api, i64 1
  %i.apq = load i8, ptr %i.app, align 1
  %i.apr = getelementptr inbounds nuw i8, ptr %i.d, i64 17
  store i8 %i.apq, ptr %i.apr, align 1
  %i.aps = getelementptr inbounds nuw i8, ptr %i.apg, i64 2
  %i.apt = load i8, ptr %i.aps, align 1
  %i.apu = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i8 %i.apt, ptr %i.apu, align 2
  %i.apv = getelementptr inbounds nuw i8, ptr %i.api, i64 2
  %i.apw = load i8, ptr %i.apv, align 1
  %i.apx = getelementptr inbounds nuw i8, ptr %i.d, i64 18
  store i8 %i.apw, ptr %i.apx, align 2
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apg, i64 3
  %i.apz = load i8, ptr %i.apy, align 1
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  store i8 %i.apz, ptr %i.aqa, align 1
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.api, i64 3
  %i.aqc = load i8, ptr %i.aqb, align 1
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.d, i64 19
  store i8 %i.aqc, ptr %i.aqd, align 1
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.apg, i64 4
  %i.aqf = load i8, ptr %i.aqe, align 1
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i8 %i.aqf, ptr %i.aqg, align 4
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.api, i64 4
  %i.aqi = load i8, ptr %i.aqh, align 1
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i8 %i.aqi, ptr %i.aqj, align 4
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.apg, i64 5
  %i.aql = load i8, ptr %i.aqk, align 1
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.d, i64 5
  store i8 %i.aql, ptr %i.aqm, align 1
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.api, i64 5
  %i.aqo = load i8, ptr %i.aqn, align 1
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.d, i64 21
  store i8 %i.aqo, ptr %i.aqp, align 1
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.apg, i64 6
  %i.aqr = load i8, ptr %i.aqq, align 1
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  store i8 %i.aqr, ptr %i.aqs, align 2
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.api, i64 6
  %i.aqu = load i8, ptr %i.aqt, align 1
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.d, i64 22
  store i8 %i.aqu, ptr %i.aqv, align 2
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.apg, i64 7
  %i.aqx = load i8, ptr %i.aqw, align 1
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.d, i64 7
  store i8 %i.aqx, ptr %i.aqy, align 1
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.api, i64 7
  %i.ara = load i8, ptr %i.aqz, align 1
  %i.arb = getelementptr inbounds nuw i8, ptr %i.d, i64 23
  store i8 %i.ara, ptr %i.arb, align 1
  %i.arc = getelementptr inbounds nuw i8, ptr %i.apg, i64 8
  %i.ard = load i8, ptr %i.arc, align 1
  %i.are = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i8 %i.ard, ptr %i.are, align 8
  %i.arf = getelementptr inbounds nuw i8, ptr %i.api, i64 8
  %i.arg = load i8, ptr %i.arf, align 1
  %i.arh = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i8 %i.arg, ptr %i.arh, align 8
  %i.ari = getelementptr inbounds nuw i8, ptr %i.apg, i64 9
  %i.arj = load i8, ptr %i.ari, align 1
  %i.ark = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  store i8 %i.arj, ptr %i.ark, align 1
  %i.arl = getelementptr inbounds nuw i8, ptr %i.api, i64 9
  %i.arm = load i8, ptr %i.arl, align 1
  %i.arn = getelementptr inbounds nuw i8, ptr %i.d, i64 25
  store i8 %i.arm, ptr %i.arn, align 1
  %i.aro = getelementptr inbounds nuw i8, ptr %i.apg, i64 10
  %i.arp = load i8, ptr %i.aro, align 1
  %i.arq = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  store i8 %i.arp, ptr %i.arq, align 2
  %i.arr = getelementptr inbounds nuw i8, ptr %i.api, i64 10
  %i.ars = load i8, ptr %i.arr, align 1
  %i.art = getelementptr inbounds nuw i8, ptr %i.d, i64 26
  store i8 %i.ars, ptr %i.art, align 2
  %i.aru = getelementptr inbounds nuw i8, ptr %i.apg, i64 11
  %i.arv = load i8, ptr %i.aru, align 1
  %i.arw = getelementptr inbounds nuw i8, ptr %i.d, i64 11
  store i8 %i.arv, ptr %i.arw, align 1
  %i.arx = getelementptr inbounds nuw i8, ptr %i.api, i64 11
  %i.ary = load i8, ptr %i.arx, align 1
  %i.arz = getelementptr inbounds nuw i8, ptr %i.d, i64 27
  store i8 %i.ary, ptr %i.arz, align 1
  %i.asa = getelementptr inbounds nuw i8, ptr %i.apg, i64 12
  %i.asb = load i8, ptr %i.asa, align 1
  %i.asc = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i8 %i.asb, ptr %i.asc, align 4
  %i.asd = getelementptr inbounds nuw i8, ptr %i.api, i64 12
  %i.ase = load i8, ptr %i.asd, align 1
  %i.asf = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i8 %i.ase, ptr %i.asf, align 4
  %i.asg = getelementptr inbounds nuw i8, ptr %i.apg, i64 13
  %i.ash = load i8, ptr %i.asg, align 1
  %i.asi = getelementptr inbounds nuw i8, ptr %i.d, i64 13
  store i8 %i.ash, ptr %i.asi, align 1
  %i.asj = getelementptr inbounds nuw i8, ptr %i.api, i64 13
  %i.ask = load i8, ptr %i.asj, align 1
  %i.asl = getelementptr inbounds nuw i8, ptr %i.d, i64 29
  store i8 %i.ask, ptr %i.asl, align 1
  %i.asm = getelementptr inbounds nuw i8, ptr %i.apg, i64 14
  %i.asn = load i8, ptr %i.asm, align 1
  %i.aso = getelementptr inbounds nuw i8, ptr %i.d, i64 14
  store i8 %i.asn, ptr %i.aso, align 2
  %i.asp = getelementptr inbounds nuw i8, ptr %i.api, i64 14
  %i.asq = load i8, ptr %i.asp, align 1
  %i.asr = getelementptr inbounds nuw i8, ptr %i.d, i64 30
  store i8 %i.asq, ptr %i.asr, align 2
  %i.ass = getelementptr inbounds nuw i8, ptr %i.apg, i64 15
  %i.ast = load i8, ptr %i.ass, align 1
  %i.asu = getelementptr inbounds nuw i8, ptr %i.d, i64 15
  store i8 %i.ast, ptr %i.asu, align 1
  %i.asv = getelementptr inbounds nuw i8, ptr %i.api, i64 15
  %i.asw = load i8, ptr %i.asv, align 1
  %i.asx = getelementptr inbounds nuw i8, ptr %i.d, i64 31
  store i8 %i.asw, ptr %i.asx, align 1
  %i.asy = load ptr, ptr %i.ar, align 8
  %i.asz = getelementptr inbounds nuw i8, ptr %i.asy, i64 16
  %i.ata = load ptr, ptr %i.asz, align 8
  %i.atb = call noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder9S256ConstEPKh(ptr noundef nonnull align 8 dereferenceable(40) %i.ata, ptr noundef nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  br label %bb.fw

bb.fn:                                            ; preds = %._crit_edge
  %i.atc = load ptr, ptr %i.ar, align 8
  %i.atd = getelementptr inbounds nuw i8, ptr %i.atc, i64 16
  %i.ate = load ptr, ptr %i.atd, align 8
  %i.atf = call noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder13ProtectedLoadENS0_11MachineTypeE(ptr noundef nonnull align 8 dereferenceable(40) %i.ate, i16 20) #16
  call void @_ZN2v88internal8compiler12Revectorizer17SetMemoryOpInputsERNS_4base11SmallVectorIPNS1_4NodeELm2ESaIS6_EEEPNS1_8PackNodeEi(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull %1, i32 noundef 2)
  br label %bb.fw

bb.fo:                                            ; preds = %._crit_edge
  %i.atg = load ptr, ptr %i.ar, align 8
  %i.ath = getelementptr inbounds nuw i8, ptr %i.atg, i64 16
  %i.ati = load ptr, ptr %i.ath, align 8
  %i.atj = call noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder4LoadENS0_11MachineTypeE(ptr noundef nonnull align 8 dereferenceable(40) %i.ati, i16 20) #16
  call void @_ZN2v88internal8compiler12Revectorizer17SetMemoryOpInputsERNS_4base11SmallVectorIPNS1_4NodeELm2ESaIS6_EEEPNS1_8PackNodeEi(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull %1, i32 noundef 2)
  br label %bb.fw

bb.fp:                                            ; preds = %._crit_edge
  %i.atk = load ptr, ptr %i.ar, align 8
  %i.atl = getelementptr inbounds nuw i8, ptr %i.atk, i64 16
  %i.atm = load ptr, ptr %i.atl, align 8
  %i.atn = call noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder14ProtectedStoreENS0_21MachineRepresentationE(ptr noundef nonnull align 8 dereferenceable(40) %i.atm, i8 noundef zeroext 20) #16
  call void @_ZN2v88internal8compiler12Revectorizer17SetMemoryOpInputsERNS_4base11SmallVectorIPNS1_4NodeELm2ESaIS6_EEEPNS1_8PackNodeEi(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull %1, i32 noundef 3)
  br label %bb.fw

bb.fq:                                            ; preds = %._crit_edge
  %i.ato = load ptr, ptr %i.i, align 8
  %i.atp = call noundef nonnull align 1 dereferenceable(2) ptr @_ZN2v88internal8compiler21StoreRepresentationOfEPKNS1_8OperatorE(ptr noundef %i.ato) #16
  %i.atq = getelementptr inbounds nuw i8, ptr %i.atp, i64 1
  %i.atr = load i8, ptr %i.atq, align 1
  %i.ats = load ptr, ptr %i.ar, align 8
  %i.att = getelementptr inbounds nuw i8, ptr %i.ats, i64 16
  %i.atu = load ptr, ptr %i.att, align 8
  %.sroa.2.0.insert.ext = zext i8 %i.atr to i16
  %.sroa.2.0.insert.shift = shl nuw i16 %.sroa.2.0.insert.ext, 8
  %.sroa.0314.0.insert.insert = or disjoint i16 %.sroa.2.0.insert.shift, 20
  %i.atv = call noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder5StoreENS1_19StoreRepresentationE(ptr noundef nonnull align 8 dereferenceable(40) %i.atu, i16 %.sroa.0314.0.insert.insert) #16
  call void @_ZN2v88internal8compiler12Revectorizer17SetMemoryOpInputsERNS_4base11SmallVectorIPNS1_4NodeELm2ESaIS6_EEEPNS1_8PackNodeEi(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull %1, i32 noundef 3)
  br label %bb.fw

bb.fr:                                            ; preds = %._crit_edge
  %i.atw = load ptr, ptr %i.i, align 8
  %i.atx = call noundef nonnull align 4 dereferenceable(8) ptr @_ZN2v88internal8compiler25LoadTransformParametersOfEPKNS1_8OperatorE(ptr noundef %i.atw) #16 ; 2 uses
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.atx, i64 4
  %.sroa.443.0.copyload = load i32, ptr %.sroa.443.0..sroa_idx, align 4 ; 2 uses
  %i.aty = icmp ult i32 %.sroa.443.0.copyload, 10
  br i1 %i.aty, label %switch.lookup, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.40) #17
  unreachable

switch.lookup:                                    ; preds = %bb.fr
  %.sroa.042.0.copyload = load i8, ptr %i.atx, align 4
  %i.atz = zext nneg i32 %.sroa.443.0.copyload to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN2v88internal8compiler12Revectorizer13VectorizeTreeEPNS1_8PackNodeE, i64 %i.atz
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.aua = load ptr, ptr %i.ar, align 8
  %i.aub = getelementptr inbounds nuw i8, ptr %i.aua, i64 16
  %i.auc = load ptr, ptr %i.aub, align 8
  %i.aud = call noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder13LoadTransformENS1_16MemoryAccessKindENS1_18LoadTransformationE(ptr noundef nonnull align 8 dereferenceable(40) %i.auc, i8 noundef zeroext %.sroa.042.0.copyload, i32 noundef %switch.ext) #16
  call void @_ZN2v88internal8compiler12Revectorizer17SetMemoryOpInputsERNS_4base11SmallVectorIPNS1_4NodeELm2ESaIS6_EEEPNS1_8PackNodeEi(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull %1, i32 noundef 2)
  br label %bb.fw

bb.ft:                                            ; preds = %._crit_edge
  %i.aue = load i32, ptr %i.v, align 4
  %i.auf = and i32 %i.aue, 251658240
  %.not.i.i275 = icmp eq i32 %i.auf, 251658240
  %i.aug = ptrtoint ptr %i.i to i64
  %i.auh = add i64 %i.aug, 32
  %i.aui = inttoptr i64 %i.auh to ptr             ; 2 uses
  br i1 %.not.i.i275, label %bb.fu, label %.thread

bb.fu:                                            ; preds = %bb.ft
  %i.auj = load ptr, ptr %i.aui, align 8
  %i.auk = ptrtoint ptr %i.auj to i64
  %i.aul = add i64 %i.auk, 16
  %i.aum = inttoptr i64 %i.aul to ptr
  br label %.thread

.thread:                                          ; preds = %bb.fu, %bb.ft
  %.sink.i.i276 = phi ptr [ %i.aum, %bb.fu ], [ %i.aui, %bb.ft ]
  %i.aun = load ptr, ptr %.sink.i.i276, align 8
  store ptr %i.aun, ptr %i.l, align 8
  br label %bb.hq

bb.fv:                                            ; preds = %._crit_edge
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.40) #17
  unreachable

bb.fw:                                            ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit262, %.loopexit333, %switch.lookup, %bb.fq, %bb.fp, %bb.fo, %bb.fn, %bb.fm, %bb.fl, %_ZNK2v88internal8compiler4Node7InputAtEi.exit240, %_ZNK2v88internal8compiler4Node7InputAtEi.exit237, %_ZNK2v88internal8compiler4Node7InputAtEi.exit234, %_ZNK2v88internal8compiler4Node7InputAtEi.exit231, %_ZNK2v88internal8compiler4Node7InputAtEi.exit228, %_ZNK2v88internal8compiler4Node7InputAtEi.exit225, %_ZNK2v88internal8compiler4Node7InputAtEi.exit222, %_ZNK2v88internal8compiler4Node7InputAtEi.exit219, %_ZNK2v88internal8compiler4Node7InputAtEi.exit216, %_ZNK2v88internal8compiler4Node7InputAtEi.exit213, %_ZNK2v88internal8compiler4Node7InputAtEi.exit210, %_ZNK2v88internal8compiler4Node7InputAtEi.exit207, %_ZNK2v88internal8compiler4Node7InputAtEi.exit204, %_ZNK2v88internal8compiler4Node7InputAtEi.exit201, %_ZNK2v88internal8compiler4Node7InputAtEi.exit198, %_ZNK2v88internal8compiler4Node7InputAtEi.exit195, %_ZNK2v88internal8compiler4Node7InputAtEi.exit192, %_ZNK2v88internal8compiler4Node7InputAtEi.exit, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m
  %.1 = phi ptr [ %i.cc, %bb.m ], [ %i.ck, %bb.n ], [ %i.cs, %bb.o ], [ %i.cw, %bb.p ], [ %i.da, %bb.q ], [ %i.de, %bb.r ], [ %i.di, %bb.s ], [ %i.dm, %bb.t ], [ %i.dq, %bb.u ], [ %i.du, %bb.v ], [ %i.dy, %bb.w ], [ %i.ec, %bb.x ], [ %i.eg, %bb.y ], [ %i.ek, %bb.z ], [ %i.eo, %bb.aa ], [ %i.es, %bb.ab ], [ %i.ew, %bb.ac ], [ %i.fa, %bb.ad ], [ %i.fe, %bb.ae ], [ %i.fi, %bb.af ], [ %i.fm, %bb.ag ], [ %i.fq, %bb.ah ], [ %i.fu, %bb.ai ], [ %i.fy, %bb.aj ], [ %i.gc, %bb.ak ], [ %i.gg, %bb.al ], [ %i.gk, %bb.am ], [ %i.go, %bb.an ], [ %i.gs, %bb.ao ], [ %i.gw, %bb.ap ], [ %i.ha, %bb.aq ], [ %i.he, %bb.ar ], [ %i.hi, %bb.as ], [ %i.hm, %bb.at ], [ %i.hq, %bb.au ], [ %i.hu, %bb.av ], [ %i.hy, %bb.aw ], [ %i.ic, %bb.ax ], [ %i.ig, %bb.ay ], [ %i.ik, %bb.az ], [ %i.io, %bb.ba ], [ %i.is, %bb.bb ], [ %i.iw, %bb.bc ], [ %i.ja, %bb.bd ], [ %i.je, %bb.be ], [ %i.ji, %bb.bf ], [ %i.jm, %bb.bg ], [ %i.jq, %bb.bh ], [ %i.ju, %bb.bi ], [ %i.jy, %bb.bj ], [ %i.kc, %bb.bk ], [ %i.kg, %bb.bl ], [ %i.kk, %bb.bm ], [ %i.ko, %bb.bn ], [ %i.ks, %bb.bo ], [ %i.kw, %bb.bp ], [ %i.la, %bb.bq ], [ %i.le, %bb.br ], [ %i.li, %bb.bs ], [ %i.lm, %bb.bt ], [ %i.lq, %bb.bu ], [ %i.lu, %bb.bv ], [ %i.ly, %bb.bw ], [ %i.mc, %bb.bx ], [ %i.mg, %bb.by ], [ %i.mk, %bb.bz ], [ %i.mo, %bb.ca ], [ %i.ms, %bb.cb ], [ %i.mw, %bb.cc ], [ %i.na, %bb.cd ], [ %i.ne, %bb.ce ], [ %i.ni, %bb.cf ], [ %i.nm, %bb.cg ], [ %i.nq, %bb.ch ], [ %i.nu, %bb.ci ], [ %i.ny, %bb.cj ], [ %i.oc, %bb.ck ], [ %i.og, %bb.cl ], [ %i.ok, %bb.cm ], [ %i.oo, %bb.cn ], [ %i.os, %bb.co ], [ %i.ow, %bb.cp ], [ %i.pa, %bb.cq ], [ %i.pe, %bb.cr ], [ %i.pi, %bb.cs ], [ %i.pm, %bb.ct ], [ %i.pq, %bb.cu ], [ %i.pu, %bb.cv ], [ %i.py, %bb.cw ], [ %i.qc, %bb.cx ], [ %i.qg, %bb.cy ], [ %i.qk, %bb.cz ], [ %i.qo, %bb.da ], [ %i.qs, %bb.db ], [ %i.qw, %bb.dc ], [ %i.ra, %bb.dd ], [ %i.re, %bb.de ], [ %i.ri, %bb.df ], [ %i.rm, %bb.dg ], [ %i.rq, %_ZNK2v88internal8compiler4Node7InputAtEi.exit ], [ %i.sh, %_ZNK2v88internal8compiler4Node7InputAtEi.exit192 ], [ %i.sy, %_ZNK2v88internal8compiler4Node7InputAtEi.exit195 ], [ %i.tp, %_ZNK2v88internal8compiler4Node7InputAtEi.exit198 ], [ %i.ug, %_ZNK2v88internal8compiler4Node7InputAtEi.exit201 ], [ %i.ux, %_ZNK2v88internal8compiler4Node7InputAtEi.exit204 ], [ %i.vo, %_ZNK2v88internal8compiler4Node7InputAtEi.exit207 ], [ %i.wf, %_ZNK2v88internal8compiler4Node7InputAtEi.exit210 ], [ %i.ww, %_ZNK2v88internal8compiler4Node7InputAtEi.exit213 ], [ %i.xl, %_ZNK2v88internal8compiler4Node7InputAtEi.exit216 ], [ %i.ya, %_ZNK2v88internal8compiler4Node7InputAtEi.exit219 ], [ %i.yp, %_ZNK2v88internal8compiler4Node7InputAtEi.exit222 ], [ %i.ze, %_ZNK2v88internal8compiler4Node7InputAtEi.exit225 ], [ %i.zt, %_ZNK2v88internal8compiler4Node7InputAtEi.exit228 ], [ %i.aai, %_ZNK2v88internal8compiler4Node7InputAtEi.exit231 ], [ %i.aax, %_ZNK2v88internal8compiler4Node7InputAtEi.exit234 ], [ %i.abm, %_ZNK2v88internal8compiler4Node7InputAtEi.exit237 ], [ %i.acb, %_ZNK2v88internal8compiler4Node7InputAtEi.exit240 ], [ %i.ade, %_ZNK2v88internal8compiler4Node7InputAtEi.exit262 ], [ %i.apa, %.loopexit333 ], [ %i.ape, %bb.fl ], [ %i.atb, %bb.fm ], [ %i.atf, %bb.fn ], [ %i.atj, %bb.fo ], [ %i.atn, %bb.fp ], [ %i.atv, %bb.fq ], [ %i.aud, %switch.lookup ] ; 2 uses
  %.0165 = phi i32 [ %i.ag, %bb.m ], [ %i.ag, %bb.n ], [ %i.ag, %bb.o ], [ %i.ag, %bb.p ], [ %i.ag, %bb.q ], [ %i.ag, %bb.r ], [ %i.ag, %bb.s ], [ %i.ag, %bb.t ], [ %i.ag, %bb.u ], [ %i.ag, %bb.v ], [ %i.ag, %bb.w ], [ %i.ag, %bb.x ], [ %i.ag, %bb.y ], [ %i.ag, %bb.z ], [ %i.ag, %bb.aa ], [ %i.ag, %bb.ab ], [ %i.ag, %bb.ac ], [ %i.ag, %bb.ad ], [ %i.ag, %bb.ae ], [ %i.ag, %bb.af ], [ %i.ag, %bb.ag ], [ %i.ag, %bb.ah ], [ %i.ag, %bb.ai ], [ %i.ag, %bb.aj ], [ %i.ag, %bb.ak ], [ %i.ag, %bb.al ], [ %i.ag, %bb.am ], [ %i.ag, %bb.an ], [ %i.ag, %bb.ao ], [ %i.ag, %bb.ap ], [ %i.ag, %bb.aq ], [ %i.ag, %bb.ar ], [ %i.ag, %bb.as ], [ %i.ag, %bb.at ], [ %i.ag, %bb.au ], [ %i.ag, %bb.av ], [ %i.ag, %bb.aw ], [ %i.ag, %bb.ax ], [ %i.ag, %bb.ay ], [ %i.ag, %bb.az ], [ %i.ag, %bb.ba ], [ %i.ag, %bb.bb ], [ %i.ag, %bb.bc ], [ %i.ag, %bb.bd ], [ %i.ag, %bb.be ], [ %i.ag, %bb.bf ], [ %i.ag, %bb.bg ], [ %i.ag, %bb.bh ], [ %i.ag, %bb.bi ], [ %i.ag, %bb.bj ], [ %i.ag, %bb.bk ], [ %i.ag, %bb.bl ], [ %i.ag, %bb.bm ], [ %i.ag, %bb.bn ], [ %i.ag, %bb.bo ], [ %i.ag, %bb.bp ], [ %i.ag, %bb.bq ], [ %i.ag, %bb.br ], [ %i.ag, %bb.bs ], [ %i.ag, %bb.bt ], [ %i.ag, %bb.bu ], [ %i.ag, %bb.bv ], [ %i.ag, %bb.bw ], [ %i.ag, %bb.bx ], [ %i.ag, %bb.by ], [ %i.ag, %bb.bz ], [ %i.ag, %bb.ca ], [ %i.ag, %bb.cb ], [ %i.ag, %bb.cc ], [ %i.ag, %bb.cd ], [ %i.ag, %bb.ce ], [ %i.ag, %bb.cf ], [ %i.ag, %bb.cg ], [ %i.ag, %bb.ch ], [ %i.ag, %bb.ci ], [ %i.ag, %bb.cj ], [ %i.ag, %bb.ck ], [ %i.ag, %bb.cl ], [ %i.ag, %bb.cm ], [ %i.ag, %bb.cn ], [ %i.ag, %bb.co ], [ %i.ag, %bb.cp ], [ %i.ag, %bb.cq ], [ %i.ag, %bb.cr ], [ %i.ag, %bb.cs ], [ %i.ag, %bb.ct ], [ %i.ag, %bb.cu ], [ %i.ag, %bb.cv ], [ %i.ag, %bb.cw ], [ %i.ag, %bb.cx ], [ %i.ag, %bb.cy ], [ %i.ag, %bb.cz ], [ %i.ag, %bb.da ], [ %i.ag, %bb.db ], [ %i.ag, %bb.dc ], [ %i.ag, %bb.dd ], [ %i.ag, %bb.de ], [ %i.ag, %bb.df ], [ %i.ag, %bb.dg ], [ %i.ag, %_ZNK2v88internal8compiler4Node7InputAtEi.exit ], [ %i.ag, %_ZNK2v88internal8compiler4Node7InputAtEi.exit192 ], [ %i.ag, %_ZNK2v88internal8compiler4Node7InputAtEi.exit195 ], [ %i.ag, %_ZNK2v88internal8compiler4Node7InputAtEi.exit198 ], [ %i.ag, %_ZNK2v88internal8compiler4Node7InputAtEi.exit201 ], [ %i.ag, %_ZNK2v88internal8compiler4Node7InputAtEi.exit204 ], [ %i.ag, %_ZNK2v88internal8compiler4Node7InputAtEi.exit207 ], [ %i.ag, %_ZNK2v88internal8compiler4Node7InputAtEi.exit210 ], [ %i.ag, %_ZNK2v88internal8compiler4Node7InputAtEi.exit213 ], [ %i.ag, %_ZNK2v88internal8compiler4Node7InputAtEi.exit216 ], [ %i.ag, %_ZNK2v88internal8compiler4Node7InputAtEi.exit219 ], [ %i.ag, %_ZNK2v88internal8compiler4Node7InputAtEi.exit222 ], [ %i.ag, %_ZNK2v88internal8compiler4Node7InputAtEi.exit225 ], [ %i.ag, %_ZNK2v88internal8compiler4Node7InputAtEi.exit228 ], [ %i.ag, %_ZNK2v88internal8compiler4Node7InputAtEi.exit231 ], [ %i.ag, %_ZNK2v88internal8compiler4Node7InputAtEi.exit234 ], [ %i.ag, %_ZNK2v88internal8compiler4Node7InputAtEi.exit237 ], [ %i.ag, %_ZNK2v88internal8compiler4Node7InputAtEi.exit240 ], [ 4, %_ZNK2v88internal8compiler4Node7InputAtEi.exit262 ], [ %i.ag, %.loopexit333 ], [ %i.ag, %bb.fl ], [ %i.ag, %bb.fm ], [ %i.ag, %bb.fn ], [ %i.ag, %bb.fo ], [ %i.ag, %bb.fp ], [ %i.ag, %bb.fq ], [ %i.ag, %switch.lookup ] ; 3 uses
  %.not182 = icmp eq ptr %.1, null
  br i1 %.not182, label %bb.hq, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.auo = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.aup = load ptr, ptr %i.auo, align 8          ; 2 uses
  %i.auq = getelementptr inbounds nuw i8, ptr %i.aup, i64 16 ; 3 uses
  %i.aur = load i64, ptr %i.auq, align 8
  %i.aus = call i64 @_ZNK2v88internal8compiler19SourcePositionTable17GetSourcePositionEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(72) %i.aup, ptr noundef nonnull %i.i) #16 ; 2 uses
  %.not.i.i278 = icmp eq i64 %i.aus, 0
  br i1 %.not.i.i278, label %_ZN2v88internal8compiler19SourcePositionTable5ScopeC2EPS2_PNS1_4NodeE.exit279, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  store i64 %i.aus, ptr %i.auq, align 8
  br label %_ZN2v88internal8compiler19SourcePositionTable5ScopeC2EPS2_PNS1_4NodeE.exit279

_ZN2v88internal8compiler19SourcePositionTable5ScopeC2EPS2_PNS1_4NodeE.exit279: ; preds = %bb.fx, %bb.fy
  %i.aut = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.auu = load ptr, ptr %i.aut, align 8
  %i.auv = load ptr, ptr %5, align 8
  %i.auw = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.auu, ptr noundef nonnull %.1, i32 noundef %.0165, ptr noundef %i.auv, i1 noundef zeroext true) #16 ; 13 uses
  store ptr %i.auw, ptr %i.l, align 8
  %i.aux = icmp sgt i32 %.0165, 0
  br i1 %i.aux, label %.lr.ph345, label %.preheader

.lr.ph345:                                        ; preds = %_ZN2v88internal8compiler19SourcePositionTable5ScopeC2EPS2_PNS1_4NodeE.exit279
  %i.auy = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.auz = getelementptr inbounds nuw i8, ptr %i.auw, i64 20
  %i.ava = ptrtoint ptr %i.auw to i64
  %i.avb = add i64 %i.ava, 32
  %i.avc = inttoptr i64 %i.avb to ptr             ; 2 uses
  %wide.trip.count382 = zext nneg i32 %.0165 to i64
  br label %bb.fz

.preheader:                                       ; preds = %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, %_ZN2v88internal8compiler19SourcePositionTable5ScopeC2EPS2_PNS1_4NodeE.exit279
  %i.avd = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ave = load ptr, ptr %i.avd, align 8
  %i.avf = load ptr, ptr %i.g, align 8            ; 3 uses
  %.not356 = icmp eq ptr %i.ave, %i.avf
  br i1 %.not356, label %._crit_edge354, label %.lr.ph353

.lr.ph353:                                        ; preds = %.preheader
  %i.avg = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.not10.i290 = icmp eq ptr %i.auw, null
  %i.avh = getelementptr inbounds nuw i8, ptr %i.auw, i64 20
  br label %bb.ge

bb.fz:                                            ; preds = %.lr.ph345, %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit
  %indvars.iv379 = phi i64 [ 0, %.lr.ph345 ], [ %indvars.iv.next380, %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit ] ; 6 uses
  %i.avi = load ptr, ptr %5, align 8
  %i.avj = getelementptr inbounds nuw [8 x i8], ptr %i.avi, i64 %indvars.iv379
  %i.avk = load ptr, ptr %i.avj, align 8
  %i.avl = icmp eq ptr %i.avk, %i.ba
  br i1 %i.avl, label %bb.ga, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit

bb.ga:                                            ; preds = %bb.fz
  %i.avm = load ptr, ptr %i.auy, align 8
  %i.avn = getelementptr inbounds nuw [8 x i8], ptr %i.avm, i64 %indvars.iv379
  %i.avo = load ptr, ptr %i.avn, align 8
  %i.avp = call noundef ptr @_ZN2v88internal8compiler12Revectorizer13VectorizeTreeEPNS1_8PackNodeE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %i.avo) ; 5 uses
  %i.avq = load i32, ptr %i.auz, align 4
  %i.avr = and i32 %i.avq, 251658240
  %.not.i.i280 = icmp eq i32 %i.avr, 251658240
  br i1 %.not.i.i280, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i: ; preds = %bb.ga
  %i.avs = load ptr, ptr %i.avc, align 8          ; 2 uses
  %i.avt = ptrtoint ptr %i.avs to i64
  %i.avu = add i64 %i.avt, 16
  %i.avv = inttoptr i64 %i.avu to ptr
  %i.avw = getelementptr inbounds nuw [8 x i8], ptr %i.avv, i64 %indvars.iv379 ; 2 uses
  %i.avx = load ptr, ptr %i.avw, align 8          ; 2 uses
  %.not.i281 = icmp eq ptr %i.avx, %i.avp
  br i1 %.not.i281, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i: ; preds = %bb.ga
  %i.avy = getelementptr inbounds nuw [8 x i8], ptr %i.avc, i64 %indvars.iv379 ; 2 uses
  %i.avz = load ptr, ptr %i.avy, align 8          ; 2 uses
  %.not18.i = icmp eq ptr %i.avz, %i.avp
  br i1 %.not18.i, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i

_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i
  %i.awa = phi ptr [ %i.avy, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i ], [ %i.avw, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i ]
  %i.awb = phi ptr [ %i.avz, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i ], [ %i.avx, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i ] ; 2 uses
  %i.awc = phi ptr [ %i.auw, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i ], [ %i.avs, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i ]
  %i.awd = xor i64 %indvars.iv379, -1
  %i.awe = getelementptr inbounds [24 x i8], ptr %i.awc, i64 %i.awd ; 2 uses
  %.not14.i = icmp eq ptr %i.awb, null
  br i1 %.not14.i, label %bb.gc, label %bb.gb

bb.gb:                                            ; preds = %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i
  call void @_ZN2v88internal8compiler4Node9RemoveUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.awb, ptr noundef nonnull %i.awe) #16
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i
  store ptr %i.avp, ptr %i.awa, align 8
  %.not15.i = icmp eq ptr %i.avp, null
  br i1 %.not15.i, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  call void @_ZN2v88internal8compiler4Node9AppendUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.avp, ptr noundef nonnull %i.awe) #16
  br label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit

_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit: ; preds = %bb.gd, %bb.gc, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i, %bb.fz
  %indvars.iv.next380 = add nuw nsw i64 %indvars.iv379, 1 ; 2 uses
  %exitcond383.not = icmp eq i64 %indvars.iv.next380, %wide.trip.count382
  br i1 %exitcond383.not, label %.preheader, label %bb.fz, !llvm.loop !62

._crit_edge354:                                   ; preds = %bb.hi, %.preheader
  %.lcssa339 = phi ptr [ %i.avf, %.preheader ], [ %i.bat, %bb.hi ] ; 2 uses
  %.lcssa = phi i64 [ 0, %.preheader ], [ %i.baz, %bb.hi ] ; 2 uses
  %i.awf = icmp eq i16 %i.aq, 879
  br i1 %i.awf, label %bb.hj, label %_ZN2v88internal8compiler12_GLOBAL__N_17IsSplatINS0_10ZoneVectorIPNS1_4NodeEEEEEbRKT_.exit298

bb.ge:                                            ; preds = %.lr.ph353, %bb.hi
  %i.awg = phi ptr [ %i.avf, %.lr.ph353 ], [ %i.bat, %bb.hi ] ; 3 uses
  %.0173352 = phi i64 [ 0, %.lr.ph353 ], [ %i.bau, %bb.hi ] ; 7 uses
  %.not183 = icmp eq i64 %.0173352, 0
  br i1 %.not183, label %._crit_edge385, label %bb.gf

._crit_edge385:                                   ; preds = %bb.ge
  %.pre386 = load ptr, ptr %i.awg, align 8
  br label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  %i.awh = getelementptr [8 x i8], ptr %i.awg, i64 %.0173352 ; 2 uses
  %i.awi = load ptr, ptr %i.awh, align 8          ; 2 uses
  %i.awj = getelementptr i8, ptr %i.awh, i64 -8
  %i.awk = load ptr, ptr %i.awj, align 8
  %i.awl = icmp eq ptr %i.awi, %i.awk
  br i1 %i.awl, label %bb.hi, label %bb.gg

bb.gg:                                            ; preds = %._crit_edge385, %bb.gf
  %i.awm = phi ptr [ %.pre386, %._crit_edge385 ], [ %i.awi, %bb.gf ] ; 2 uses
  %i.awn = getelementptr inbounds nuw i8, ptr %i.awm, i64 24
  %i.awo = load ptr, ptr %i.awn, align 8          ; 2 uses
  %.not.i.i282 = icmp eq ptr %i.awo, null
  br i1 %.not.i.i282, label %._crit_edge351, label %.lr.ph350

.lr.ph350:                                        ; preds = %bb.gg
  %i.awp = trunc i64 %.0173352 to i32
  br label %bb.gh

._crit_edge351.loopexit:                          ; preds = %_ZN2v88internal8compiler4Edge8UpdateToEPNS1_4NodeE.exit
  %.pre387 = load ptr, ptr %i.g, align 8
  %.phi.trans.insert388 = getelementptr inbounds nuw [8 x i8], ptr %.pre387, i64 %.0173352
  %.pre389 = load ptr, ptr %.phi.trans.insert388, align 8
  br label %._crit_edge351

._crit_edge351:                                   ; preds = %bb.gg, %._crit_edge351.loopexit
  %i.awq = phi ptr [ %.pre389, %._crit_edge351.loopexit ], [ %i.awm, %bb.gg ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  store ptr %i.awq, ptr %7, align 8
  %i.awr = call noundef zeroext i1 @_ZNK2v88internal8compiler4Node4Uses5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %.pre391 = load ptr, ptr %i.g, align 8          ; 2 uses
  br i1 %i.awr, label %bb.hh, label %bb.hi

bb.gh:                                            ; preds = %_ZN2v88internal8compiler4Edge8UpdateToEPNS1_4NodeE.exit, %.lr.ph350
  %.0171349 = phi ptr [ null, %.lr.ph350 ], [ %.2, %_ZN2v88internal8compiler4Edge8UpdateToEPNS1_4NodeE.exit ] ; 7 uses
  %.sroa.0309.0347 = phi ptr [ %i.awo, %.lr.ph350 ], [ %.sroa.6.0348, %_ZN2v88internal8compiler4Edge8UpdateToEPNS1_4NodeE.exit ] ; 8 uses
  %.sroa.6.0348 = load ptr, ptr %.sroa.0309.0347, align 8 ; 2 uses
  %i.aws = getelementptr inbounds nuw i8, ptr %.sroa.0309.0347, i64 16
  %i.awt = load i32, ptr %i.aws, align 8          ; 2 uses
  %i.awu = lshr i32 %i.awt, 1
  %i.awv = getelementptr inbounds nuw i8, ptr %.sroa.0309.0347, i64 24
  %i.aww = zext nneg i32 %i.awu to i64            ; 2 uses
  %i.awx = getelementptr inbounds nuw [24 x i8], ptr %i.awv, i64 %i.aww ; 3 uses
  %i.awy = trunc i32 %i.awt to i1                 ; 2 uses
  %i.awz = ptrtoint ptr %i.awx to i64
  %.v.v.i.i = select i1 %i.awy, i64 32, i64 16
  %.v.i.i = add i64 %.v.v.i.i, %i.awz
  %i.axa = inttoptr i64 %.v.i.i to ptr
  %i.axb = getelementptr inbounds nuw [8 x i8], ptr %i.axa, i64 %i.aww ; 8 uses
  br i1 %i.awy, label %_ZNK2v88internal8compiler4Edge4fromEv.exit, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.axc = load ptr, ptr %i.awx, align 8
  br label %_ZNK2v88internal8compiler4Edge4fromEv.exit

_ZNK2v88internal8compiler4Edge4fromEv.exit:       ; preds = %bb.gh, %bb.gi
  %i.axd = phi ptr [ %i.axc, %bb.gi ], [ %i.awx, %bb.gh ] ; 8 uses
  %i.axe = load ptr, ptr %i.avg, align 8          ; 4 uses
  %i.axf = getelementptr inbounds nuw i8, ptr %i.axe, i64 216
  %i.axg = load i64, ptr %i.axf, align 8
  %.not.not.i.i.i.i = icmp eq i64 %i.axg, 0
  br i1 %.not.not.i.i.i.i, label %bb.gj, label %bb.gm

bb.gj:                                            ; preds = %_ZNK2v88internal8compiler4Edge4fromEv.exit
  %i.axh = getelementptr inbounds nuw i8, ptr %i.axe, i64 208
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gl, %bb.gj
  %.sroa.06.0.in.i.i.i.i = phi ptr [ %i.axh, %bb.gj ], [ %.sroa.06.0.i.i.i.i, %bb.gl ]
  %.sroa.06.0.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i, align 8 ; 4 uses
  %i.axi = icmp eq ptr %.sroa.06.0.i.i.i.i, null
  br i1 %i.axi, label %_ZNK2v88internal8compiler12Revectorizer11GetPackNodeEPNS1_4NodeE.exit.thread, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.axj = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i, i64 8
  %i.axk = load ptr, ptr %i.axj, align 8
  %i.axl = icmp eq ptr %i.axd, %i.axk
  br i1 %i.axl, label %_ZNK2v88internal8compiler12Revectorizer11GetPackNodeEPNS1_4NodeE.exit, label %bb.gk, !llvm.loop !18

bb.gm:                                            ; preds = %_ZNK2v88internal8compiler4Edge4fromEv.exit
  %i.axm = ptrtoint ptr %i.axd to i64             ; 2 uses
  %i.axn = xor i64 %i.axm, -1
  %i.axo = shl i64 %i.axm, 21
  %i.axp = add i64 %i.axo, %i.axn                 ; 2 uses
  %i.axq = lshr i64 %i.axp, 24
  %i.axr = xor i64 %i.axq, %i.axp
  %i.axs = mul i64 %i.axr, 265                    ; 2 uses
  %i.axt = lshr i64 %i.axs, 14
  %i.axu = xor i64 %i.axt, %i.axs
  %i.axv = mul i64 %i.axu, 21                     ; 2 uses
  %i.axw = lshr i64 %i.axv, 28
  %i.axx = xor i64 %i.axw, %i.axv
  %i.axy = mul i64 %i.axx, 2147483649             ; 3 uses
  %i.axz = getelementptr inbounds nuw i8, ptr %i.axe, i64 200
  %i.aya = load i64, ptr %i.axz, align 8          ; 2 uses
  %i.ayb = urem i64 %i.axy, %i.aya                ; 2 uses
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.axe, i64 192
  %i.ayd = load ptr, ptr %i.ayc, align 8
  %i.aye = getelementptr inbounds nuw [8 x i8], ptr %i.ayd, i64 %i.ayb
  %i.ayf = load ptr, ptr %i.aye, align 8          ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ayf, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNK2v88internal8compiler12Revectorizer11GetPackNodeEPNS1_4NodeE.exit.thread, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.ayg = load ptr, ptr %i.ayf, align 8          ; 4 uses
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.ayg, i64 8
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.ayg, i64 24
  %i.ayj = load i64, ptr %i.ayi, align 8
  %i.ayk = icmp eq i64 %i.axy, %i.ayj
  %i.ayl = load ptr, ptr %i.ayh, align 8
  %i.aym = icmp eq ptr %i.axd, %i.ayl
  %i.ayn = select i1 %i.ayk, i1 %i.aym, i1 false
  br i1 %i.ayn, label %_ZNK2v88internal8compiler12Revectorizer11GetPackNodeEPNS1_4NodeE.exit, label %.lr.ph.i.i.i.i.i.i

bb.go:                                            ; preds = %bb.gp
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.ayt, i64 8
  %i.ayp = icmp eq i64 %i.axy, %i.ayv
  %i.ayq = load ptr, ptr %i.ayo, align 8
  %i.ayr = icmp eq ptr %i.axd, %i.ayq
  %i.ays = select i1 %i.ayp, i1 %i.ayr, i1 false
  br i1 %i.ays, label %_ZNK2v88internal8compiler12Revectorizer11GetPackNodeEPNS1_4NodeE.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !19

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.gn, %bb.go
  %.020.i.i.i.i.i.i = phi ptr [ %i.ayt, %bb.go ], [ %i.ayg, %bb.gn ]
  %i.ayt = load ptr, ptr %.020.i.i.i.i.i.i, align 8 ; 5 uses
  %.not18.i.i.i.i.i.i = icmp eq ptr %i.ayt, null
  br i1 %.not18.i.i.i.i.i.i, label %_ZNK2v88internal8compiler12Revectorizer11GetPackNodeEPNS1_4NodeE.exit.thread, label %bb.gp

bb.gp:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.ayt, i64 24
  %i.ayv = load i64, ptr %i.ayu, align 8          ; 2 uses
  %i.ayw = urem i64 %i.ayv, %i.aya
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.ayw, %i.ayb
  br i1 %.not19.i.i.i.i.i.i, label %bb.go, label %..loopexit_crit_edge21.i.i.i.i.i.i, !llvm.loop !19

..loopexit_crit_edge21.i.i.i.i.i.i:               ; preds = %bb.gp
  br label %_ZNK2v88internal8compiler12Revectorizer11GetPackNodeEPNS1_4NodeE.exit.thread, !llvm.loop !19

_ZNK2v88internal8compiler12Revectorizer11GetPackNodeEPNS1_4NodeE.exit: ; preds = %bb.go, %bb.gl, %bb.gn
  %.sroa.06.1.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i, %bb.gl ], [ %i.ayg, %bb.gn ], [ %i.ayt, %bb.go ]
  %i.ayx = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 16
  %i.ayy = load ptr, ptr %i.ayx, align 8
  %.not184 = icmp eq ptr %i.ayy, null
  br i1 %.not184, label %_ZNK2v88internal8compiler12Revectorizer11GetPackNodeEPNS1_4NodeE.exit.thread, label %_ZN2v88internal8compiler4Edge8UpdateToEPNS1_4NodeE.exit

_ZNK2v88internal8compiler12Revectorizer11GetPackNodeEPNS1_4NodeE.exit.thread: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.gk, %bb.gm, %..loopexit_crit_edge21.i.i.i.i.i.i, %_ZNK2v88internal8compiler12Revectorizer11GetPackNodeEPNS1_4NodeE.exit
  %i.ayz = call noundef zeroext i1 @_ZN2v88internal8compiler14NodeProperties11IsValueEdgeENS1_4EdgeE(ptr nonnull %.sroa.0309.0347, ptr %i.axb) #16
  br i1 %i.ayz, label %bb.gq, label %bb.ha

bb.gq:                                            ; preds = %_ZNK2v88internal8compiler12Revectorizer11GetPackNodeEPNS1_4NodeE.exit.thread
  %i.aza = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !5, !noundef !6
  %i.azb = trunc nuw i8 %i.aza to i1
  br i1 %i.azb, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %bb.gq
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str) #16
  %i.azc = getelementptr inbounds nuw i8, ptr %i.axd, i64 20
  %i.azd = load i32, ptr %i.azc, align 4
  %i.aze = and i32 %i.azd, 16777215
  %i.azf = load ptr, ptr %i.axd, align 8
  %i.azg = getelementptr inbounds nuw i8, ptr %i.azf, i64 8
  %i.azh = load ptr, ptr %i.azg, align 8
  %i.azi = load ptr, ptr %i.axb, align 8          ; 2 uses
  %i.azj = getelementptr inbounds nuw i8, ptr %i.azi, i64 20
  %i.azk = load i32, ptr %i.azj, align 4
  %i.azl = and i32 %i.azk, 16777215
  %i.azm = load ptr, ptr %i.azi, align 8
  %i.azn = getelementptr inbounds nuw i8, ptr %i.azm, i64 8
  %i.azo = load ptr, ptr %i.azn, align 8
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.41, i32 noundef %i.aze, ptr noundef %i.azh, i32 noundef %i.azl, ptr noundef %i.azo) #16
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq
  %.not185 = icmp eq ptr %.0171349, null
  br i1 %.not185, label %bb.gt, label %bb.gw

bb.gt:                                            ; preds = %bb.gs
  %i.azp = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !5, !noundef !6
  %i.azq = trunc nuw i8 %i.azp to i1
  br i1 %i.azq, label %bb.gu, label %bb.gv

bb.gu:                                            ; preds = %bb.gt
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str) #16
  %i.azr = load i32, ptr %i.avh, align 4
  %i.azs = and i32 %i.azr, 16777215
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.42, i64 noundef %.0173352, i32 noundef %i.azs) #16
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %bb.gt
  %i.azt = load ptr, ptr %i.aut, align 8
  %i.azu = load ptr, ptr %i.ar, align 8
  %i.azv = getelementptr inbounds nuw i8, ptr %i.azu, i64 16
  %i.azw = load ptr, ptr %i.azv, align 8
  %i.azx = call noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder11ExtractF128Ei(ptr noundef nonnull align 8 dereferenceable(40) %i.azw, i32 noundef %i.awp) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store ptr %i.auw, ptr %3, align 8
  %i.azy = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.azt, ptr noundef %i.azx, i32 noundef 1, ptr noundef nonnull %3, i1 noundef zeroext false) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gv, %bb.gs
  %.1172 = phi ptr [ %.0171349, %bb.gs ], [ %i.azy, %bb.gv ] ; 6 uses
  %i.azz = load ptr, ptr %i.axb, align 8          ; 3 uses
  %.not.i285 = icmp eq ptr %i.azz, %.1172
  br i1 %.not.i285, label %_ZN2v88internal8compiler4Edge8UpdateToEPNS1_4NodeE.exit, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %.not9.i = icmp eq ptr %i.azz, null
  br i1 %.not9.i, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  call void @_ZN2v88internal8compiler4Node9RemoveUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.azz, ptr noundef nonnull %.sroa.0309.0347) #16
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gy, %bb.gx
  store ptr %.1172, ptr %i.axb, align 8
  %.not10.i = icmp eq ptr %.1172, null
  br i1 %.not10.i, label %_ZN2v88internal8compiler4Edge8UpdateToEPNS1_4NodeE.exit, label %_ZN2v88internal8compiler4Edge8UpdateToEPNS1_4NodeE.exit.sink.split

bb.ha:                                            ; preds = %_ZNK2v88internal8compiler12Revectorizer11GetPackNodeEPNS1_4NodeE.exit.thread
  %i.baa = call noundef zeroext i1 @_ZN2v88internal8compiler14NodeProperties12IsEffectEdgeENS1_4EdgeE(ptr nonnull %.sroa.0309.0347, ptr %i.axb) #16
  br i1 %i.baa, label %bb.hb, label %_ZN2v88internal8compiler4Edge8UpdateToEPNS1_4NodeE.exit

bb.hb:                                            ; preds = %bb.ha
  %i.bab = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !5, !noundef !6
  %i.bac = trunc nuw i8 %i.bab to i1
  br i1 %i.bac, label %bb.hc, label %bb.hd

bb.hc:                                            ; preds = %bb.hb
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str) #16
  %i.bad = getelementptr inbounds nuw i8, ptr %i.axd, i64 20
  %i.bae = load i32, ptr %i.bad, align 4
  %i.baf = and i32 %i.bae, 16777215
  %i.bag = load ptr, ptr %i.axd, align 8
  %i.bah = getelementptr inbounds nuw i8, ptr %i.bag, i64 8
  %i.bai = load ptr, ptr %i.bah, align 8
  %i.baj = load ptr, ptr %i.axb, align 8          ; 2 uses
  %i.bak = getelementptr inbounds nuw i8, ptr %i.baj, i64 20
  %i.bal = load i32, ptr %i.bak, align 4
  %i.bam = and i32 %i.bal, 16777215
  %i.ban = load ptr, ptr %i.baj, align 8
  %i.bao = getelementptr inbounds nuw i8, ptr %i.ban, i64 8
  %i.bap = load ptr, ptr %i.bao, align 8
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.43, i32 noundef %i.baf, ptr noundef %i.bai, i32 noundef %i.bam, ptr noundef %i.bap) #16
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hc, %bb.hb
  %i.baq = load ptr, ptr %i.axb, align 8          ; 3 uses
  %.not.i287 = icmp eq ptr %i.baq, %i.auw
  br i1 %.not.i287, label %_ZN2v88internal8compiler4Edge8UpdateToEPNS1_4NodeE.exit, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %.not9.i288 = icmp eq ptr %i.baq, null
  br i1 %.not9.i288, label %bb.hg, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  call void @_ZN2v88internal8compiler4Node9RemoveUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.baq, ptr noundef nonnull %.sroa.0309.0347) #16
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %bb.he
  store ptr %i.auw, ptr %i.axb, align 8
  br i1 %.not10.i290, label %_ZN2v88internal8compiler4Edge8UpdateToEPNS1_4NodeE.exit, label %_ZN2v88internal8compiler4Edge8UpdateToEPNS1_4NodeE.exit.sink.split

_ZN2v88internal8compiler4Edge8UpdateToEPNS1_4NodeE.exit.sink.split: ; preds = %bb.hg, %bb.gz
  %.sink437 = phi ptr [ %.1172, %bb.gz ], [ %i.auw, %bb.hg ]
  %.2.ph = phi ptr [ %.1172, %bb.gz ], [ %.0171349, %bb.hg ]
  call void @_ZN2v88internal8compiler4Node9AppendUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %.sink437, ptr noundef nonnull %.sroa.0309.0347) #16
  br label %_ZN2v88internal8compiler4Edge8UpdateToEPNS1_4NodeE.exit

_ZN2v88internal8compiler4Edge8UpdateToEPNS1_4NodeE.exit: ; preds = %_ZN2v88internal8compiler4Edge8UpdateToEPNS1_4NodeE.exit.sink.split, %bb.hg, %bb.hd, %bb.gz, %bb.gw, %bb.ha, %_ZNK2v88internal8compiler12Revectorizer11GetPackNodeEPNS1_4NodeE.exit
  %.2 = phi ptr [ %.0171349, %_ZNK2v88internal8compiler12Revectorizer11GetPackNodeEPNS1_4NodeE.exit ], [ %.0171349, %bb.ha ], [ %.0171349, %bb.hg ], [ %.1172, %bb.gw ], [ null, %bb.gz ], [ %.0171349, %bb.hd ], [ %.2.ph, %_ZN2v88internal8compiler4Edge8UpdateToEPNS1_4NodeE.exit.sink.split ]
  %.not.i292 = icmp eq ptr %.sroa.6.0348, null
  br i1 %.not.i292, label %._crit_edge351.loopexit, label %bb.gh

bb.hh:                                            ; preds = %._crit_edge351
  %i.bar = getelementptr inbounds nuw [8 x i8], ptr %.pre391, i64 %.0173352
  %i.bas = load ptr, ptr %i.bar, align 8
  call void @_ZN2v88internal8compiler4Node4KillEv(ptr noundef nonnull align 8 dereferenceable(32) %i.bas) #16
  %.pre390 = load ptr, ptr %i.g, align 8
  br label %bb.hi

bb.hi:                                            ; preds = %._crit_edge351, %bb.hh, %bb.gf
  %i.bat = phi ptr [ %.pre391, %._crit_edge351 ], [ %.pre390, %bb.hh ], [ %i.awg, %bb.gf ] ; 3 uses
  %i.bau = add nuw i64 %.0173352, 1               ; 2 uses
  %i.bav = load ptr, ptr %i.avd, align 8
  %i.baw = ptrtoint ptr %i.bav to i64
  %i.bax = ptrtoint ptr %i.bat to i64
  %i.bay = sub i64 %i.baw, %i.bax
  %i.baz = ashr exact i64 %i.bay, 3               ; 2 uses
  %i.bba = icmp ult i64 %i.bau, %i.baz
  br i1 %i.bba, label %bb.ge, label %._crit_edge354, !llvm.loop !63

bb.hj:                                            ; preds = %._crit_edge354
  %i.bbb = icmp ult i64 %.lcssa, 2
  br i1 %i.bbb, label %.loopexit, label %.lr.ph.i293

.lr.ph.i293:                                      ; preds = %bb.hj
  %i.bbc = load ptr, ptr %.lcssa339, align 8
  br label %bb.hl

bb.hk:                                            ; preds = %bb.hl
  %i.bbd = add nuw i64 %.071.i294, 1              ; 2 uses
  %exitcond.not.i297 = icmp eq i64 %i.bbd, %.lcssa
  br i1 %exitcond.not.i297, label %.loopexit, label %bb.hl, !llvm.loop !20

bb.hl:                                            ; preds = %bb.hk, %.lr.ph.i293
  %.071.i294 = phi i64 [ 1, %.lr.ph.i293 ], [ %i.bbd, %bb.hk ] ; 2 uses
  %i.bbe = getelementptr inbounds nuw [8 x i8], ptr %.lcssa339, i64 %.071.i294
  %i.bbf = load ptr, ptr %i.bbe, align 8
  %.not.i295 = icmp eq ptr %i.bbf, %i.bbc
  br i1 %.not.i295, label %bb.hk, label %_ZN2v88internal8compiler12_GLOBAL__N_17IsSplatINS0_10ZoneVectorIPNS1_4NodeEEEEEbRKT_.exit298

.loopexit:                                        ; preds = %bb.hk, %bb.hj
  %i.bbg = load ptr, ptr %i.a, align 8            ; 3 uses
  call void @_ZN2v88internal8compiler14NodeProperties18ReplaceEffectInputEPNS1_4NodeES4_i(ptr noundef %i.bbg, ptr noundef %i.auw, i32 noundef 0) #16
  %i.bbh = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !5, !noundef !6
  %i.bbi = trunc nuw i8 %i.bbh to i1
  br i1 %i.bbi, label %bb.hm, label %bb.hn

bb.hm:                                            ; preds = %.loopexit
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str) #16
  %i.bbj = getelementptr inbounds nuw i8, ptr %i.bbg, i64 20
  %i.bbk = load i32, ptr %i.bbj, align 4
  %i.bbl = and i32 %i.bbk, 16777215
  %i.bbm = load ptr, ptr %i.bbg, align 8
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.bbm, i64 8
  %i.bbo = load ptr, ptr %i.bbn, align 8
  %i.bbp = getelementptr inbounds nuw i8, ptr %i.auw, i64 20
  %i.bbq = load i32, ptr %i.bbp, align 4
  %i.bbr = and i32 %i.bbq, 16777215
  %i.bbs = load ptr, ptr %i.auw, align 8
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.bbs, i64 8
  %i.bbu = load ptr, ptr %i.bbt, align 8
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.43, i32 noundef %i.bbl, ptr noundef %i.bbo, i32 noundef %i.bbr, ptr noundef %i.bbu) #16
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hm, %.loopexit
  call void @_ZN2v88internal8compiler14NodeProperties17ReplaceValueInputEPNS1_4NodeES4_i(ptr noundef nonnull %i.i, ptr noundef %i.ba, i32 noundef 0) #16
  call void @_ZN2v88internal8compiler14NodeProperties17ReplaceValueInputEPNS1_4NodeES4_i(ptr noundef nonnull %i.i, ptr noundef %i.ba, i32 noundef 1) #16
  %i.bbv = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !5, !noundef !6
  %i.bbw = trunc nuw i8 %i.bbv to i1
  br i1 %i.bbw, label %bb.ho, label %bb.hp

bb.ho:                                            ; preds = %bb.hn
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str) #16
  %i.bbx = load i32, ptr %i.v, align 4
  %i.bby = and i32 %i.bbx, 16777215
  %i.bbz = load ptr, ptr %i.i, align 8
  %i.bca = getelementptr inbounds nuw i8, ptr %i.bbz, i64 8
  %i.bcb = load ptr, ptr %i.bca, align 8
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.44, i32 noundef %i.bby, ptr noundef %i.bcb) #16
  br label %bb.hp

bb.hp:                                            ; preds = %bb.ho, %bb.hn
  %i.bcc = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store ptr %i.bcc, ptr %2, align 8
  %i.bcd = call { ptr, i8 } @_ZNSt10_HashtableIPN2v88internal8compiler4NodeES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKS4_SK_NS6_10_AllocNodeISaINS6_10_Hash_nodeIS4_Lb0EEEEEEEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.bcc, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %_ZN2v88internal8compiler12_GLOBAL__N_17IsSplatINS0_10ZoneVectorIPNS1_4NodeEEEEEbRKT_.exit298

_ZN2v88internal8compiler12_GLOBAL__N_17IsSplatINS0_10ZoneVectorIPNS1_4NodeEEEEEbRKT_.exit298: ; preds = %bb.hl, %bb.hp, %._crit_edge354
  store i64 %i.aur, ptr %i.auq, align 8
  br label %bb.hq

bb.hq:                                            ; preds = %.thread, %_ZN2v88internal8compiler12_GLOBAL__N_17IsSplatINS0_10ZoneVectorIPNS1_4NodeEEEEEbRKT_.exit298, %bb.fw
  %i.bce = load ptr, ptr %i.l, align 8
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm2ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(40) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.hr

bb.hr:                                            ; preds = %bb.d, %bb.e, %bb.hq
  %.0 = phi ptr [ %i.bce, %bb.hq ], [ %.pre, %bb.e ], [ %i.m, %bb.d ]
  ret ptr %.0

.preheader332.preheader.rtvec:                    ; preds = %.preheader332.preheader
  %13 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %14 = load <16 x i8>, ptr %i.agu, align 1
  %15 = and <16 x i8> %14, splat (i8 15)
  store <16 x i8> %15, ptr %i.c, align 16
  %16 = load <16 x i8>, ptr %i.agw, align 1
  %17 = and <16 x i8> %16, splat (i8 15)
  %18 = or disjoint <16 x i8> %17, splat (i8 16)
  store <16 x i8> %18, ptr %13, align 16
  br label %.loopexit333

.preheader332.preheader.rtscalar:                 ; preds = %.preheader332.preheader
  %19 = load i8, ptr %i.agu, align 1
  %20 = and i8 %19, 15
  store i8 %20, ptr %i.c, align 16
  %21 = load i8, ptr %i.agw, align 1
  %22 = and i8 %21, 15
  %23 = or disjoint i8 %22, 16
  %24 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i8 %23, ptr %24, align 16
  %25 = getelementptr inbounds nuw i8, ptr %i.agu, i64 1
  %26 = load i8, ptr %25, align 1
  %27 = and i8 %26, 15
  %28 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %27, ptr %28, align 1
  %29 = getelementptr inbounds nuw i8, ptr %i.agw, i64 1
  %30 = load i8, ptr %29, align 1
  %31 = and i8 %30, 15
  %32 = or disjoint i8 %31, 16
  %33 = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  store i8 %32, ptr %33, align 1
  %34 = getelementptr inbounds nuw i8, ptr %i.agu, i64 2
  %35 = load i8, ptr %34, align 1
  %36 = and i8 %35, 15
  %37 = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 %36, ptr %37, align 2
  %38 = getelementptr inbounds nuw i8, ptr %i.agw, i64 2
  %39 = load i8, ptr %38, align 1
  %40 = and i8 %39, 15
  %41 = or disjoint i8 %40, 16
  %42 = getelementptr inbounds nuw i8, ptr %i.c, i64 18
  store i8 %41, ptr %42, align 2
  %43 = getelementptr inbounds nuw i8, ptr %i.agu, i64 3
  %44 = load i8, ptr %43, align 1
  %45 = and i8 %44, 15
  %46 = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  store i8 %45, ptr %46, align 1
  %47 = getelementptr inbounds nuw i8, ptr %i.agw, i64 3
  %48 = load i8, ptr %47, align 1
  %49 = and i8 %48, 15
  %50 = or disjoint i8 %49, 16
  %51 = getelementptr inbounds nuw i8, ptr %i.c, i64 19
  store i8 %50, ptr %51, align 1
  %52 = getelementptr inbounds nuw i8, ptr %i.agu, i64 4
  %53 = load i8, ptr %52, align 1
  %54 = and i8 %53, 15
  %55 = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i8 %54, ptr %55, align 4
  %56 = getelementptr inbounds nuw i8, ptr %i.agw, i64 4
  %57 = load i8, ptr %56, align 1
  %58 = and i8 %57, 15
  %59 = or disjoint i8 %58, 16
  %60 = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i8 %59, ptr %60, align 4
  %61 = getelementptr inbounds nuw i8, ptr %i.agu, i64 5
  %62 = load i8, ptr %61, align 1
  %63 = and i8 %62, 15
  %64 = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  store i8 %63, ptr %64, align 1
  %65 = getelementptr inbounds nuw i8, ptr %i.agw, i64 5
  %66 = load i8, ptr %65, align 1
  %67 = and i8 %66, 15
  %68 = or disjoint i8 %67, 16
  %69 = getelementptr inbounds nuw i8, ptr %i.c, i64 21
  store i8 %68, ptr %69, align 1
  %70 = getelementptr inbounds nuw i8, ptr %i.agu, i64 6
  %71 = load i8, ptr %70, align 1
  %72 = and i8 %71, 15
  %73 = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  store i8 %72, ptr %73, align 2
  %74 = getelementptr inbounds nuw i8, ptr %i.agw, i64 6
  %75 = load i8, ptr %74, align 1
  %76 = and i8 %75, 15
  %77 = or disjoint i8 %76, 16
  %78 = getelementptr inbounds nuw i8, ptr %i.c, i64 22
  store i8 %77, ptr %78, align 2
  %79 = getelementptr inbounds nuw i8, ptr %i.agu, i64 7
  %80 = load i8, ptr %79, align 1
  %81 = and i8 %80, 15
  %82 = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  store i8 %81, ptr %82, align 1
  %83 = getelementptr inbounds nuw i8, ptr %i.agw, i64 7
  %84 = load i8, ptr %83, align 1
  %85 = and i8 %84, 15
  %86 = or disjoint i8 %85, 16
  %87 = getelementptr inbounds nuw i8, ptr %i.c, i64 23
  store i8 %86, ptr %87, align 1
  %88 = getelementptr inbounds nuw i8, ptr %i.agu, i64 8
  %89 = load i8, ptr %88, align 1
  %90 = and i8 %89, 15
  %91 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 %90, ptr %91, align 8
  %92 = getelementptr inbounds nuw i8, ptr %i.agw, i64 8
  %93 = load i8, ptr %92, align 1
  %94 = and i8 %93, 15
  %95 = or disjoint i8 %94, 16
  %96 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i8 %95, ptr %96, align 8
  %97 = getelementptr inbounds nuw i8, ptr %i.agu, i64 9
  %98 = load i8, ptr %97, align 1
  %99 = and i8 %98, 15
  %100 = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  store i8 %99, ptr %100, align 1
  %101 = getelementptr inbounds nuw i8, ptr %i.agw, i64 9
  %102 = load i8, ptr %101, align 1
  %103 = and i8 %102, 15
  %104 = or disjoint i8 %103, 16
  %105 = getelementptr inbounds nuw i8, ptr %i.c, i64 25
  store i8 %104, ptr %105, align 1
  %106 = getelementptr inbounds nuw i8, ptr %i.agu, i64 10
  %107 = load i8, ptr %106, align 1
  %108 = and i8 %107, 15
  %109 = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  store i8 %108, ptr %109, align 2
  %110 = getelementptr inbounds nuw i8, ptr %i.agw, i64 10
  %111 = load i8, ptr %110, align 1
  %112 = and i8 %111, 15
  %113 = or disjoint i8 %112, 16
  %114 = getelementptr inbounds nuw i8, ptr %i.c, i64 26
  store i8 %113, ptr %114, align 2
  %115 = getelementptr inbounds nuw i8, ptr %i.agu, i64 11
  %116 = load i8, ptr %115, align 1
  %117 = and i8 %116, 15
  %118 = getelementptr inbounds nuw i8, ptr %i.c, i64 11
  store i8 %117, ptr %118, align 1
  %119 = getelementptr inbounds nuw i8, ptr %i.agw, i64 11
  %120 = load i8, ptr %119, align 1
  %121 = and i8 %120, 15
  %122 = or disjoint i8 %121, 16
  %123 = getelementptr inbounds nuw i8, ptr %i.c, i64 27
  store i8 %122, ptr %123, align 1
  %124 = getelementptr inbounds nuw i8, ptr %i.agu, i64 12
  %125 = load i8, ptr %124, align 1
  %126 = and i8 %125, 15
  %127 = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i8 %126, ptr %127, align 4
  %128 = getelementptr inbounds nuw i8, ptr %i.agw, i64 12
  %129 = load i8, ptr %128, align 1
  %130 = and i8 %129, 15
  %131 = or disjoint i8 %130, 16
  %132 = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  store i8 %131, ptr %132, align 4
  %133 = getelementptr inbounds nuw i8, ptr %i.agu, i64 13
  %134 = load i8, ptr %133, align 1
  %135 = and i8 %134, 15
  %136 = getelementptr inbounds nuw i8, ptr %i.c, i64 13
  store i8 %135, ptr %136, align 1
  %137 = getelementptr inbounds nuw i8, ptr %i.agw, i64 13
  %138 = load i8, ptr %137, align 1
  %139 = and i8 %138, 15
  %140 = or disjoint i8 %139, 16
  %141 = getelementptr inbounds nuw i8, ptr %i.c, i64 29
  store i8 %140, ptr %141, align 1
  %142 = getelementptr inbounds nuw i8, ptr %i.agu, i64 14
  %143 = load i8, ptr %142, align 1
  %144 = and i8 %143, 15
  %145 = getelementptr inbounds nuw i8, ptr %i.c, i64 14
  store i8 %144, ptr %145, align 2
  %146 = getelementptr inbounds nuw i8, ptr %i.agw, i64 14
  %147 = load i8, ptr %146, align 1
  %148 = and i8 %147, 15
  %149 = or disjoint i8 %148, 16
  %150 = getelementptr inbounds nuw i8, ptr %i.c, i64 30
  store i8 %149, ptr %150, align 2
  %151 = getelementptr inbounds nuw i8, ptr %i.agu, i64 15
  %152 = load i8, ptr %151, align 1
  %153 = and i8 %152, 15
  %154 = getelementptr inbounds nuw i8, ptr %i.c, i64 15
  store i8 %153, ptr %154, align 1
  %155 = getelementptr inbounds nuw i8, ptr %i.agw, i64 15
  %156 = load i8, ptr %155, align 1
  %157 = and i8 %156, 15
  %158 = or disjoint i8 %157, 16
  %159 = getelementptr inbounds nuw i8, ptr %i.c, i64 31
  store i8 %158, ptr %159, align 1
  br label %.loopexit333
}

declare noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder3PhiENS0_21MachineRepresentationEi(ptr noundef nonnull align 8 dereferenceable(16), i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = icmp sgt i32 %1, -1
  br i1 %i.a, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp slt i32 %1, %i.d
  br i1 %i.e, label %bb.e, label %bb.d, !prof !10

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.67) #17
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.g = load i32, ptr %i.f, align 4
  %i.h = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.b) #16
  %i.i = load ptr, ptr %0, align 8
  %i.j = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.i) #16
  %i.k = load ptr, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load i32, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.o = load i32, ptr %i.n, align 4
  %i.p = and i32 %i.o, 251658240
  %.not.i.i = icmp eq i32 %i.p, 251658240
  %i.q = ptrtoint ptr %0 to i64
  %i.r = add i64 %i.q, 32
  %i.s = inttoptr i64 %i.r to ptr                 ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = add i64 %i.u, 16
  %i.w = inttoptr i64 %i.v to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit

_ZNK2v88internal8compiler4Node7InputAtEi.exit:    ; preds = %bb.e, %bb.f
  %.sink.i.i = phi ptr [ %i.w, %bb.f ], [ %i.s, %bb.e ]
  %i.x = zext i1 %i.h to i32
  %i.y = zext i1 %i.j to i32
  %i.z = add i32 %i.g, %1
  %i.aa = add i32 %i.z, %i.x
  %i.ab = add i32 %i.aa, %i.y
  %i.ac = add i32 %i.ab, %i.m
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %.sink.i.i, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8
  ret ptr %i.af
}

declare noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder13LoopExitValueENS0_21MachineRepresentationE(ptr noundef nonnull align 8 dereferenceable(16), i8 noundef zeroext) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder8F64x4AddEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder8F32x8AddEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder8I64x4AddEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder8I32x8AddEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder9I16x16AddEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder8I8x32AddEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder8F64x4SubEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder8F32x8SubEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder8I64x4SubEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder8I32x8SubEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder9I16x16SubEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder8I8x32SubEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder8F64x4MulEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder8F32x8MulEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder8I64x4MulEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder8I32x8MulEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder9I16x16MulEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder8F64x4DivEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder8F32x8DivEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder13I16x16AddSatSEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder13I16x16SubSatSEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder13I16x16AddSatUEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder13I16x16SubSatUEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder12I8x32AddSatSEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder12I8x32SubSatSEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder12I8x32AddSatUEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder12I8x32SubSatUEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder7F64x4EqEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder7F32x8EqEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder7I64x4EqEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder7I32x8EqEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder8I16x16EqEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder7I8x32EqEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder7F64x4NeEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder7F32x8NeEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder8I64x4GtSEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder8I32x8GtSEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder9I16x16GtSEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder8I8x32GtSEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder7F64x4LtEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder7F32x8LtEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder7F64x4LeEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder7F32x8LeEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder9I32x8MinSEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder10I16x16MinSEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder9I8x32MinSEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder9I32x8MinUEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder10I16x16MinUEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder9I8x32MinUEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder9I32x8MaxSEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder10I16x16MaxSEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder9I8x32MaxSEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder9I32x8MaxUEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder10I16x16MaxUEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder9I8x32MaxUEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder8F32x8AbsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder8I32x8AbsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder9I16x16AbsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder8I8x32AbsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder8F32x8NegEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder8I32x8NegEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder9I16x16NegEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder8I8x32NegEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder9F64x4SqrtEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder9F32x8SqrtEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder8F64x4MinEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder8F32x8MinEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

end_hunk_1
