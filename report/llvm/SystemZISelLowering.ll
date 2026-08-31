Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SystemZISelLowering?download=true
inline.NumInlined: 11116
inline.NumDeleted: 2735
loop-unroll.NumCompletelyUnrolled: 89
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 99
begin_hunk_0_@_ZL10CC_SystemZjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE:bb.a

_ZN4llvm7CCState11AllocateRegEt.exit.i:           ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #27
  br label %_ZL19CC_SystemZ_XPLINK64jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit.thread

_ZN4llvm7CCState11AllocateRegEt.exit.thread86.i:  ; preds = %bb.j
  %i.bq = and i64 %i.aj, 32768
  %.not148.i = icmp eq i64 %i.bq, 0               ; 2 uses
  %.not206.i = xor i1 %i.am, true
  %brmerge.i = select i1 %.not148.i, i1 true, i1 %.not206.i
  %.mux.i = select i1 %.not148.i, i1 %i.am, i1 false
  br i1 %brmerge.i, label %thread-pre-split95.i, label %bb.o

_ZN4llvm7CCState11AllocateRegEt.exit.thread86.i.thread: ; preds = %bb.k
  %i.br = and i64 %i.aj, 32768
  %.not148.i111 = icmp eq i64 %i.br, 0
  br i1 %.not148.i111, label %.thread109, label %bb.o

bb.o:                                             ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit.thread86.i.thread, %_ZN4llvm7CCState11AllocateRegEt.exit.thread86.i
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !21
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 20
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !158
  %i.bw = and i32 %i.bv, 2048
  %.not.i98.i = icmp eq i32 %i.bw, 0
  br i1 %.not.i98.i, label %bb.p, label %.thread109

bb.p:                                             ; preds = %bb.o
  call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext 171) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #27
  %i.bx = load i32, ptr %i.c, align 4, !tbaa !158
  %.sroa.037.0.copyload.i = load i16, ptr %25, align 2, !tbaa !187
  %.sroa.035.0.copyload.i = load i16, ptr %26, align 2, !tbaa !187
  %i.by = load i32, ptr %i.d, align 4, !tbaa !767
  %i.bz = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i8 0, ptr %i.bz, align 8, !tbaa !735, !alias.scope !781
  %i.ca = getelementptr inbounds nuw i8, ptr %29, i64 16
  store i32 %i.bx, ptr %i.ca, align 8, !tbaa !772, !alias.scope !781
  %i.cb = getelementptr inbounds nuw i8, ptr %29, i64 20 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 4, !alias.scope !781
  %i.cd = and i8 %i.cc, -128
  %i.ce = trunc i32 %i.by to i8
  %i.cf = shl i8 %i.ce, 1
  %i.cg = and i8 %i.cf, 126
  %i.ch = or disjoint i8 %i.cd, %i.cg
  store i8 %i.ch, ptr %i.cb, align 4, !alias.scope !781
  %i.ci = getelementptr inbounds nuw i8, ptr %29, i64 22
  store i16 %.sroa.037.0.copyload.i, ptr %i.ci, align 2, !tbaa !187, !alias.scope !781
  %i.cj = getelementptr inbounds nuw i8, ptr %29, i64 24
  store i16 %.sroa.035.0.copyload.i, ptr %i.cj, align 8, !tbaa !187, !alias.scope !781
  store i32 171, ptr %29, align 8, !tbaa !158, !alias.scope !781
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !780, !nonnull !19, !align !74 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 3 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !208 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !209
  %.not.i.i101.i = icmp ult i32 %i.cn, %i.cp
  br i1 %.not.i.i101.i, label %bb.r, label %bb.q, !prof !210

bb.q:                                             ; preds = %bb.p
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull align 8 dereferenceable(26) %29)
  br label %_ZN4llvm7CCState11AllocateRegEt.exit100.i

bb.r:                                             ; preds = %bb.p
  %i.cq = zext i32 %i.cn to i64
  %i.cr = load ptr, ptr %i.cl, align 8, !tbaa !21
  %i.cs = getelementptr inbounds nuw [32 x i8], ptr %i.cr, i64 %i.cq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.cs, ptr noundef nonnull align 8 dereferenceable(32) %29, i64 32, i1 false)
  %i.ct = load i32, ptr %i.cm, align 8, !tbaa !208
  %i.cu = add i32 %i.ct, 1
  store i32 %i.cu, ptr %i.cm, align 8, !tbaa !208
  br label %_ZN4llvm7CCState11AllocateRegEt.exit100.i

_ZN4llvm7CCState11AllocateRegEt.exit100.i:        ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #27
  br label %_ZL19CC_SystemZ_XPLINK64jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit.thread

thread-pre-split95.i:                             ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit.thread86.i
  %i.cv = icmp eq i16 %.pr98.i, 9
  br i1 %i.cv, label %.thread99.i, label %bb.s

.thread99.i:                                      ; preds = %thread-pre-split95.i
  store i16 8, ptr %26, align 2, !tbaa !187
  store i32 11, ptr %i.d, align 4, !tbaa !767
  br label %.thread109

bb.s:                                             ; preds = %thread-pre-split95.i
  br i1 %.mux.i, label %.thread109, label %.thread102.i

.thread109:                                       ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit.thread86.i.thread, %bb.o, %bb.s, %.thread99.i
  %i.cw = call noundef zeroext i1 @_ZN4llvm23CC_SystemZ_I128IndirectERjRNS_3MVTES2_RNS_11CCValAssign7LocInfoERNS_3ISD10ArgFlagsTyERNS_7CCStateE(ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 2 dereferenceable(2) %25, ptr noundef nonnull align 2 dereferenceable(2) %26, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %27, ptr noundef nonnull align 8 dereferenceable(420) %7)
  br i1 %i.cw, label %_ZL19CC_SystemZ_XPLINK64jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit.thread, label %bb.t

bb.t:                                             ; preds = %.thread109
  %.pr101.i = load i16, ptr %26, align 2, !tbaa !212 ; 2 uses
  %i.cx = icmp eq i16 %.pr101.i, 8
  br i1 %i.cx, label %bb.u, label %.thread102.i

bb.u:                                             ; preds = %bb.t
  %i.cy = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !21
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 20
  %i.db = load i32, ptr %i.da, align 4, !tbaa !158 ; 3 uses
  %i.dc = and i32 %i.db, 4096
  %.not.i.i103.i = icmp eq i32 %i.dc, 0
  br i1 %.not.i.i103.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dd = and i32 %i.db, 8192
  %.not.i.i103.1.i = icmp eq i32 %i.dd, 0
  br i1 %.not.i.i103.1.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.de = and i32 %i.db, 16384
  %.not.i.i103.2.i = icmp eq i32 %i.de, 0
  br i1 %.not.i.i103.2.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i, label %.thread102.i

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i: ; preds = %bb.w, %bb.v, %bb.u
  %.0613.i.i.lcssa.wide.i = phi i64 [ 0, %bb.u ], [ 1, %bb.v ], [ 2, %bb.w ]
  %i.df = getelementptr inbounds nuw [2 x i8], ptr @_ZZL22RetCC_SystemZ_XPLINK64jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList1, i64 %.0613.i.i.lcssa.wide.i
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !170 ; 2 uses
  call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.dg) #27
  %i.dh = zext i16 %i.dg to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #27
  %i.di = load i32, ptr %i.c, align 4, !tbaa !158
  %.sroa.034.0.copyload.i = load i16, ptr %25, align 2, !tbaa !187
  %.sroa.032.0.copyload.i = load i16, ptr %26, align 2, !tbaa !187
  %i.dj = load i32, ptr %i.d, align 4, !tbaa !767
  %i.dk = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i8 0, ptr %i.dk, align 8, !tbaa !735, !alias.scope !784
  %i.dl = getelementptr inbounds nuw i8, ptr %30, i64 16
  store i32 %i.di, ptr %i.dl, align 8, !tbaa !772, !alias.scope !784
  %i.dm = getelementptr inbounds nuw i8, ptr %30, i64 20 ; 2 uses
  %i.dn = load i8, ptr %i.dm, align 4, !alias.scope !784
  %i.do = and i8 %i.dn, -128
  %i.dp = trunc i32 %i.dj to i8
  %i.dq = shl i8 %i.dp, 1
  %i.dr = and i8 %i.dq, 126
  %i.ds = or disjoint i8 %i.do, %i.dr
  store i8 %i.ds, ptr %i.dm, align 4, !alias.scope !784
  %i.dt = getelementptr inbounds nuw i8, ptr %30, i64 22
  store i16 %.sroa.034.0.copyload.i, ptr %i.dt, align 2, !tbaa !187, !alias.scope !784
  %i.du = getelementptr inbounds nuw i8, ptr %30, i64 24
  store i16 %.sroa.032.0.copyload.i, ptr %i.du, align 8, !tbaa !187, !alias.scope !784
  store i32 %i.dh, ptr %30, align 8, !tbaa !158, !alias.scope !784
  %i.dv = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !780, !nonnull !19, !align !74 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8 ; 3 uses
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !208 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 12
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !209
  %.not.i.i104.i = icmp ult i32 %i.dy, %i.ea
  br i1 %.not.i.i104.i, label %bb.y, label %bb.x, !prof !210

bb.x:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.dw, ptr noundef nonnull align 8 dereferenceable(26) %30)
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit105.i

bb.y:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i
  %i.eb = zext i32 %i.dy to i64
  %i.ec = load ptr, ptr %i.dw, align 8, !tbaa !21
  %i.ed = getelementptr inbounds nuw [32 x i8], ptr %i.ec, i64 %i.eb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ed, ptr noundef nonnull align 8 dereferenceable(32) %30, i64 32, i1 false)
  %i.ee = load i32, ptr %i.dx, align 8, !tbaa !208
  %i.ef = add i32 %i.ee, 1
  store i32 %i.ef, ptr %i.dx, align 8, !tbaa !208
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit105.i

_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit105.i: ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #27
  %i.eg = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.eh = load i8, ptr %i.eg, align 8, !tbaa !787, !range !18, !noundef !19
  %i.ei = trunc nuw i8 %i.eh to i1
  %i.ej = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !711 ; 2 uses
  br i1 %i.ei, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit105.i
  %i.el = add i64 %i.ek, 15
  %i.em = and i64 %i.el, -8
  br label %bb.ab

bb.aa:                                            ; preds = %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit105.i
  %i.en = add i64 %i.ek, 7
  %i.eo = and i64 %i.en, -8
  %i.ep = add nsw i64 %i.eo, 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %storemerge.i = phi i64 [ %i.ep, %bb.aa ], [ %i.em, %bb.z ]
  store i64 %storemerge.i, ptr %i.ej, align 8, !tbaa !711
  %i.eq = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i8, ptr %i.eq, align 8, !tbaa !164
  %.sroa.speculated.i.i = call i8 @llvm.umax.i8(i8 %.sroa.0.0.copyload.i.i.i, i8 3)
  store i8 %.sroa.speculated.i.i, ptr %i.eq, align 8, !tbaa !164
  call void @_ZN4llvm7CCState18ensureMaxAlignmentENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %7, i8 3) #27
  br label %_ZL19CC_SystemZ_XPLINK64jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit.thread

.thread102.i:                                     ; preds = %.critedge2.i, %bb.w, %bb.t, %bb.s
  %.pre175183.i = phi i16 [ %.pr101.i, %bb.t ], [ %.pr98.i, %bb.s ], [ 8, %bb.w ], [ %.pre169.i, %.critedge2.i ] ; 4 uses
  %i.er = load ptr, ptr %i.e, align 8, !tbaa !766, !nonnull !19, !align !74
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !434, !nonnull !19, !align !74
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 385
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !156, !range !18, !noundef !19
  %i.ew = trunc nuw i8 %i.ev to i1
  br i1 %i.ew, label %bb.ac, label %.thread113.i

bb.ac:                                            ; preds = %.thread102.i
  switch i16 %.pre175183.i, label %.thread196.i [
    i16 48, label %.critedge4.i
    i16 62, label %.critedge4.i
    i16 73, label %.critedge4.i
    i16 94, label %.critedge4.i
    i16 136, label %.critedge4.i
    i16 154, label %.critedge4.i
  ]

.critedge4.i:                                     ; preds = %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac
  %i.ex = load i64, ptr %27, align 8
  %i.ey = and i64 %i.ex, 34359738368
  %.not149.i = icmp eq i64 %i.ey, 0
  br i1 %.not149.i, label %bb.ad, label %.thread196.i

bb.ad:                                            ; preds = %.critedge4.i
  %i.ez = call noundef zeroext i1 @_ZN4llvm22CC_XPLINK64_Shadow_RegERjRNS_3MVTES2_RNS_11CCValAssign7LocInfoERNS_3ISD10ArgFlagsTyERNS_7CCStateE(ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 2 dereferenceable(2) %25, ptr noundef nonnull align 2 dereferenceable(2) %26, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %27, ptr noundef nonnull align 8 dereferenceable(420) %7)
  br i1 %i.ez, label %_ZL19CC_SystemZ_XPLINK64jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.pre171.i = load ptr, ptr %i.e, align 8, !tbaa !766
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre171.i, i64 16
  %.pre172.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !434
  %.phi.trans.insert173.i = getelementptr inbounds nuw i8, ptr %.pre172.i, i64 385
  %.pre174.i = load i8, ptr %.phi.trans.insert173.i, align 1, !tbaa !156, !range !18
  %.pre175.pre.i = load i16, ptr %26, align 2, !tbaa !212 ; 2 uses
  %i.fa = trunc nuw i8 %.pre174.i to i1
  br i1 %i.fa, label %.thread196.i, label %.thread113.i

.thread196.i:                                     ; preds = %bb.ae, %.critedge4.i, %bb.ac
  %.pre175199.i = phi i16 [ %.pre175.pre.i, %bb.ae ], [ %.pre175183.i, %bb.ac ], [ %.pre175183.i, %.critedge4.i ] ; 4 uses
  switch i16 %.pre175199.i, label %.thread113.i [
    i16 48, label %.critedge6.i
    i16 62, label %.critedge6.i
    i16 73, label %.critedge6.i
    i16 94, label %.critedge6.i
    i16 136, label %.critedge6.i
    i16 154, label %.critedge6.i
  ]

.critedge6.i:                                     ; preds = %.thread196.i, %.thread196.i, %.thread196.i, %.thread196.i, %.thread196.i, %.thread196.i
  %i.fb = load i64, ptr %27, align 8
  %i.fc = and i64 %i.fb, 34359738368
  %.not150.i = icmp eq i64 %i.fc, 0
  br i1 %.not150.i, label %bb.af, label %.thread113.i

bb.af:                                            ; preds = %.critedge6.i
  %i.fd = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !21 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !158 ; 5 uses
  %i.fh = and i32 %i.fg, 134217728
  %.not.i.i107.i = icmp eq i32 %i.fh, 0
  br i1 %.not.i.i107.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit110.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fi = and i32 %i.fg, 268435456
  %.not.i.i107.1.i = icmp eq i32 %i.fi, 0
  br i1 %.not.i.i107.1.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit110.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fj = and i32 %i.fg, 536870912
  %.not.i.i107.2.i = icmp eq i32 %i.fj, 0
  br i1 %.not.i.i107.2.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit110.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fk = and i32 %i.fg, 1073741824
  %.not.i.i107.3.i = icmp eq i32 %i.fk, 0
  br i1 %.not.i.i107.3.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit110.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.not.i.i107.4.i = icmp sgt i32 %i.fg, -1
  br i1 %.not.i.i107.4.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit110.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !158 ; 3 uses
  %i.fn = and i32 %i.fm, 1
  %.not.i.i107.5.i = icmp eq i32 %i.fn, 0
  br i1 %.not.i.i107.5.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit110.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fo = and i32 %i.fm, 2
  %.not.i.i107.6.i = icmp eq i32 %i.fo, 0
  br i1 %.not.i.i107.6.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit110.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fp = and i32 %i.fm, 4
  %.not.i.i107.7.i = icmp eq i32 %i.fp, 0
  br i1 %.not.i.i107.7.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit110.i, label %.thread113.i

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit110.i: ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af
  %.0613.i.i106.lcssa.wide.i = phi i64 [ 0, %bb.af ], [ 1, %bb.ag ], [ 2, %bb.ah ], [ 3, %bb.ai ], [ 4, %bb.aj ], [ 5, %bb.ak ], [ 6, %bb.al ], [ 7, %bb.am ]
  %i.fq = getelementptr inbounds nuw [2 x i8], ptr @_ZZL22RetCC_SystemZ_XPLINK64jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList6, i64 %.0613.i.i106.lcssa.wide.i
  %i.fr = load i16, ptr %i.fq, align 2, !tbaa !170 ; 2 uses
  call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.fr) #27
  %i.fs = zext i16 %i.fr to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #27
  %i.ft = load i32, ptr %i.c, align 4, !tbaa !158
  %.sroa.031.0.copyload.i = load i16, ptr %25, align 2, !tbaa !187
  %.sroa.029.0.copyload.i = load i16, ptr %26, align 2, !tbaa !187
  %i.fu = load i32, ptr %i.d, align 4, !tbaa !767
  %i.fv = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i8 0, ptr %i.fv, align 8, !tbaa !735, !alias.scope !788
  %i.fw = getelementptr inbounds nuw i8, ptr %31, i64 16
  store i32 %i.ft, ptr %i.fw, align 8, !tbaa !772, !alias.scope !788
  %i.fx = getelementptr inbounds nuw i8, ptr %31, i64 20 ; 2 uses
  %i.fy = load i8, ptr %i.fx, align 4, !alias.scope !788
  %i.fz = and i8 %i.fy, -128
  %i.ga = trunc i32 %i.fu to i8
  %i.gb = shl i8 %i.ga, 1
  %i.gc = and i8 %i.gb, 126
  %i.gd = or disjoint i8 %i.fz, %i.gc
  store i8 %i.gd, ptr %i.fx, align 4, !alias.scope !788
  %i.ge = getelementptr inbounds nuw i8, ptr %31, i64 22
  store i16 %.sroa.031.0.copyload.i, ptr %i.ge, align 2, !tbaa !187, !alias.scope !788
  %i.gf = getelementptr inbounds nuw i8, ptr %31, i64 24
  store i16 %.sroa.029.0.copyload.i, ptr %i.gf, align 8, !tbaa !187, !alias.scope !788
  store i32 %i.fs, ptr %31, align 8, !tbaa !158, !alias.scope !788
  %i.gg = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !780, !nonnull !19, !align !74 ; 4 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8 ; 3 uses
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !208 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 12
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !209
  %.not.i.i111.i = icmp ult i32 %i.gj, %i.gl
  br i1 %.not.i.i111.i, label %bb.ao, label %bb.an, !prof !210

bb.an:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit110.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.gh, ptr noundef nonnull align 8 dereferenceable(26) %31)
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit112.i

bb.ao:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit110.i
  %i.gm = zext i32 %i.gj to i64
  %i.gn = load ptr, ptr %i.gh, align 8, !tbaa !21
  %i.go = getelementptr inbounds nuw [32 x i8], ptr %i.gn, i64 %i.gm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.go, ptr noundef nonnull align 8 dereferenceable(32) %31, i64 32, i1 false)
  %i.gp = load i32, ptr %i.gi, align 8, !tbaa !208
  %i.gq = add i32 %i.gp, 1
  store i32 %i.gq, ptr %i.gi, align 8, !tbaa !208
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit112.i

_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit112.i: ; preds = %bb.ao, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #27
  %i.gr = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.gs = load i8, ptr %i.gr, align 8, !tbaa !787, !range !18, !noundef !19
  %i.gt = trunc nuw i8 %i.gs to i1
  %i.gu = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !711 ; 2 uses
  br i1 %i.gt, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit112.i
  %i.gw = add i64 %i.gv, 23
  %i.gx = and i64 %i.gw, -8
  br label %bb.ar

bb.aq:                                            ; preds = %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit112.i
  %i.gy = add i64 %i.gv, 7
  %i.gz = and i64 %i.gy, -8
  %i.ha = add nsw i64 %i.gz, 16
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %storemerge151.i = phi i64 [ %i.ha, %bb.aq ], [ %i.gx, %bb.ap ]
  store i64 %storemerge151.i, ptr %i.gu, align 8, !tbaa !711
  %i.hb = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %.sroa.0.0.copyload.i.i114.i = load i8, ptr %i.hb, align 8, !tbaa !164
  %.sroa.speculated.i115.i = call i8 @llvm.umax.i8(i8 %.sroa.0.0.copyload.i.i114.i, i8 3)
  store i8 %.sroa.speculated.i115.i, ptr %i.hb, align 8, !tbaa !164
  call void @_ZN4llvm7CCState18ensureMaxAlignmentENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %7, i8 3) #27
  br label %_ZL19CC_SystemZ_XPLINK64jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit.thread

.thread113.i:                                     ; preds = %bb.am, %.critedge6.i, %.thread196.i, %bb.ae, %.thread102.i
  %.pre175198.i = phi i16 [ %.pre175199.i, %bb.am ], [ %.pre175199.i, %.thread196.i ], [ %.pre175199.i, %.critedge6.i ], [ %.pre175.pre.i, %bb.ae ], [ %.pre175183.i, %.thread102.i ] ; 3 uses
  %i.hc = and i16 %.pre175198.i, -2
  %switch145.i = icmp eq i16 %i.hc, 14
  br i1 %switch145.i, label %.critedge8.i, label %.thread126.i

.critedge8.i:                                     ; preds = %.thread113.i
  %i.hd = load i64, ptr %27, align 8
  %i.he = and i64 %i.hd, 34359738368
  %.not152.i = icmp eq i64 %i.he, 0
  br i1 %.not152.i, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.critedge8.i
  %i.hf = call noundef zeroext i1 @_ZN4llvm22CC_XPLINK64_Shadow_RegERjRNS_3MVTES2_RNS_11CCValAssign7LocInfoERNS_3ISD10ArgFlagsTyERNS_7CCStateE(ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 2 dereferenceable(2) %25, ptr noundef nonnull align 2 dereferenceable(2) %26, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %27, ptr noundef nonnull align 8 dereferenceable(420) %7)
  br i1 %i.hf, label %_ZL19CC_SystemZ_XPLINK64jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit.thread, label %._crit_edge176.i

._crit_edge176.i:                                 ; preds = %bb.as
  %.pr116.pre.i = load i16, ptr %26, align 2, !tbaa !212
  br label %bb.at
end_hunk_0
begin_hunk_1_@_ZL19convertValVTToLocVTRN4llvm12SelectionDAGERKNS_5SDLocERNS_11CCValAssignENS_7SDValueE:bb.a
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.f
  %.sroa.0.0.copyload.i101.pre = phi i16 [ %.sroa.0.0.copyload.i101.pre.pre, %bb.f ], [ %.sroa.0.0.copyload.i98, %bb.e ] ; 2 uses
  %.sroa.0.0.copyload.i99 = phi i16 [ %.sroa.0.0.copyload.i99.pre, %bb.f ], [ %.sroa.0.0.copyload.i97, %bb.e ]
  %.sroa.057.0 = phi ptr [ %.fca.0.extract12, %bb.f ], [ %3, %bb.e ]
  %.sroa.11.0 = phi i32 [ %.fca.1.extract13, %bb.f ], [ %4, %bb.e ]
  %i.p = add i16 %.sroa.0.0.copyload.i99, -19
  %spec.select.i = icmp ult i16 %i.p, 197
  %i.q = icmp eq i16 %.sroa.0.0.copyload.i101.pre, 8
  %or.cond128 = select i1 %spec.select.i, i1 %i.q, i1 false
  %.sroa.0111.0 = select i1 %or.cond128, i16 94, i16 %.sroa.0.0.copyload.i101.pre ; 2 uses
  store ptr %.sroa.057.0, ptr %9, align 8, !tbaa !597
  %.sroa.11.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx71, align 8, !tbaa !158
  %i.r = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %0, i32 noundef 248, ptr noundef nonnull align 8 dereferenceable(12) %1, i16 %.sroa.0111.0, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9) #27 ; 3 uses
  %i.s = icmp eq i16 %.sroa.0111.0, 94
  br i1 %i.s, label %bb.g, label %bb.j

bb.g:                                             ; preds = %.critedge
  %.fca.1.extract7 = extractvalue { ptr, i32 } %i.r, 1
  %.fca.0.extract6 = extractvalue { ptr, i32 } %i.r, 0
  %.sroa.0.0.copyload.i102 = load i16, ptr %i.m, align 8, !tbaa !187
  store ptr %.fca.0.extract6, ptr %10, align 8, !tbaa !597
  %.sroa.11.0..sroa_idx73 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.fca.1.extract7, ptr %.sroa.11.0..sroa_idx73, align 8, !tbaa !158
  %i.t = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %0, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %1, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #27 ; 2 uses
  %.fca.0.extract1 = extractvalue { ptr, i32 } %i.t, 0
  %.fca.1.extract2 = extractvalue { ptr, i32 } %i.t, 1
  store ptr %.fca.0.extract1, ptr %11, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.fca.1.extract2, ptr %.sroa.24.0..sroa_idx, align 8
  %i.u = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %0, i32 noundef 164, ptr noundef nonnull align 8 dereferenceable(12) %1, i16 %.sroa.0.0.copyload.i102, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11) #27
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  %i.v = insertvalue { ptr, i32 } poison, ptr %3, 0
  %i.w = insertvalue { ptr, i32 } %i.v, i32 %4, 1
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  unreachable

bb.j:                                             ; preds = %bb.g, %.critedge, %bb.h, %bb.d, %bb.c, %bb.b
  %.fca.1.insert.merged = phi { ptr, i32 } [ %i.f, %bb.b ], [ %i.h, %bb.c ], [ %i.j, %bb.d ], [ %i.w, %bb.h ], [ %i.u, %bb.g ], [ %i.r, %.critedge ]
  ret { ptr, i32 } %.fca.1.insert.merged
}

declare { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920), i32, i16, ptr) local_unnamed_addr #4

declare { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr, ptr noundef byval(%"class.llvm::SDValue") align 8) local_unnamed_addr #4

declare { ptr, i32 } @_ZN4llvm12SelectionDAG23getTargetExternalSymbolEPKcNS_3EVTEj(ptr noundef nonnull align 8 dereferenceable(920), ptr noundef, i16, ptr, i32 noundef) local_unnamed_addr #4

declare { ptr, i32 } @_ZN4llvm12SelectionDAG15getRegisterMaskEPKj(ptr noundef nonnull align 8 dereferenceable(920), ptr noundef) local_unnamed_addr #4

declare { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920), i16, ptr, i16, ptr) local_unnamed_addr #4

declare { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, ptr noundef nonnull align 8 dereferenceable(12), ptr, i32, ptr noundef byval(%"class.llvm::ArrayRef.497") align 8) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN4llvm12SelectionDAG14getCALLSEQ_ENDENS_7SDValueEmmS1_RKNS_5SDLocE(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr %1, i32 %2, i64 noundef %3, i64 noundef %4, ptr noundef byval(%"class.llvm::SDValue") align 8 %5, ptr noundef nonnull align 8 dereferenceable(12) %6) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %7 = alloca %"class.llvm::SmallVector.512", align 8 ; 14 uses
  %8 = alloca %"class.llvm::ArrayRef.497", align 8 ; 5 uses
  %i.a = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG17getIntPtrConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %0, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(12) %6, i1 noundef zeroext true) #27 ; 2 uses
  %.fca.0.extract5 = extractvalue { ptr, i32 } %i.a, 0
  %.fca.1.extract6 = extractvalue { ptr, i32 } %i.a, 1
  %i.b = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG17getIntPtrConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %0, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(12) %6, i1 noundef zeroext true) #27 ; 2 uses
  %.fca.0.extract1 = extractvalue { ptr, i32 } %i.b, 0
  %.fca.1.extract2 = extractvalue { ptr, i32 } %i.b, 1
  %.sroa.024.0.copyload = load ptr, ptr %5, align 8, !tbaa !597 ; 2 uses
  %.sroa.225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.225.0.copyload = load i32, ptr %.sroa.225.0..sroa_idx, align 8, !tbaa !158
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.c = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920) %0, i16 1, ptr null, i16 249, ptr null) #27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.d, ptr %7, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 4, ptr %i.f, align 4, !tbaa !209
  store ptr %1, ptr %i.d, align 8
  %.sroa.32.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 %2, ptr %.sroa.32.0..sroa_idx.i.i, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %.fca.0.extract5, ptr %i.g, align 8
  %.sroa.32.0..sroa_idx.i26.i = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i32 %.fca.1.extract6, ptr %.sroa.32.0..sroa_idx.i26.i, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 48
  store ptr %.fca.0.extract1, ptr %i.h, align 8
  %.sroa.32.0..sroa_idx.i29.i = getelementptr inbounds nuw i8, ptr %7, i64 56
  store i32 %.fca.1.extract2, ptr %.sroa.32.0..sroa_idx.i29.i, align 8
  store i32 3, ptr %i.e, align 8, !tbaa !208
  %.not.i = icmp eq ptr %.sroa.024.0.copyload, null
  br i1 %.not.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit33.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 64
  store ptr %.sroa.024.0.copyload, ptr %i.i, align 8
  %.sroa.32.0..sroa_idx.i32.i = getelementptr inbounds nuw i8, ptr %7, i64 72
  store i32 %.sroa.225.0.copyload, ptr %.sroa.32.0..sroa_idx.i32.i, align 8
  store i32 4, ptr %i.e, align 8, !tbaa !208
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit33.i

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit33.i: ; preds = %bb.b, %bb.a
  %i.j = phi i64 [ 4, %bb.b ], [ 3, %bb.a ]
  %i.k = extractvalue { ptr, i32 } %i.c, 1
  %i.l = extractvalue { ptr, i32 } %i.c, 0
  store ptr %i.d, ptr %8, align 8, !tbaa !600
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.j, ptr %i.m, align 8, !tbaa !603
  %i.n = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %0, i32 noundef 334, ptr noundef nonnull align 8 dereferenceable(12) %6, ptr %i.l, i32 %i.k, ptr noundef nonnull byval(%"class.llvm::ArrayRef.497") align 8 %8) #27
  %i.o = load ptr, ptr %7, align 8, !tbaa !21     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.d
  br i1 %i.p, label %_ZN4llvm12SelectionDAG14getCALLSEQ_ENDENS_7SDValueES1_S1_S1_RKNS_5SDLocE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit33.i
  call void @free(ptr noundef %i.o) #27
  br label %_ZN4llvm12SelectionDAG14getCALLSEQ_ENDENS_7SDValueES1_S1_S1_RKNS_5SDLocE.exit

_ZN4llvm12SelectionDAG14getCALLSEQ_ENDENS_7SDValueES1_S1_S1_RKNS_5SDLocE.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit33.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  ret { ptr, i32 } %i.n
}

declare void @_ZN4llvm7CCState17AnalyzeCallResultERKNS_15SmallVectorImplINS_3ISD8InputArgEEEPFbjNS_3MVTES7_NS_11CCValAssign7LocInfoENS2_10ArgFlagsTyEPNS_4TypeERS0_E(ptr noundef nonnull align 8 dereferenceable(420), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZL13RetCC_SystemZjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i64 %4, i64 %5, ptr nofree readnone captures(none) %6, ptr noundef nonnull align 8 dereferenceable(420) %7) #3 {
bb.a:
  %8 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %9 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %10 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %11 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %12 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %13 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %14 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %15 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %16 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %17 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %18 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %19 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %20 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !766, !nonnull !19, !align !74
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !434, !nonnull !19, !align !74 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 452
  %i.f = load i32, ptr %i.e, align 4, !tbaa !591  ; 2 uses
  %i.g = icmp eq i32 %i.f, 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 444
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp eq i32 %i.i, 16
  %i.k = select i1 %i.g, i1 %i.j, i1 false
  br i1 %i.k, label %bb.b, label %_ZL22RetCC_SystemZ_XPLINK64jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit

bb.b:                                             ; preds = %bb.a
  switch i16 %2, label %.thread110.i [
    i16 7, label %bb.c
    i16 8, label %.thread.i
    i16 14, label %bb.o
    i16 15, label %bb.v
    i16 17, label %bb.ac
  ]

bb.c:                                             ; preds = %bb.b
  %i.l = and i64 %4, 2
  %.not125.i = icmp eq i64 %i.l, 0
  br i1 %.not125.i, label %bb.d, label %.thread.i

bb.d:                                             ; preds = %bb.c
  %i.m = trunc i64 %4 to i1
  %..i = select i1 %i.m, i32 2, i32 3
  br label %.thread.i

.thread.i:                                        ; preds = %bb.d, %bb.c, %bb.b
  %.05465.i = phi i32 [ %3, %bb.b ], [ 1, %bb.c ], [ %..i, %bb.d ] ; 3 uses
  %i.n = and i64 %4, 8
  %.not126.i = icmp eq i64 %i.n, 0
  %.phi.trans.insert150.i = getelementptr inbounds nuw i8, ptr %7, i64 64
  %.pre151.i = load ptr, ptr %.phi.trans.insert150.i, align 8, !tbaa !21
  %.phi.trans.insert152.i = getelementptr inbounds nuw i8, ptr %.pre151.i, i64 20
  %.pre153.i = load i32, ptr %.phi.trans.insert152.i, align 4, !tbaa !158 ; 6 uses
  br i1 %.not126.i, label %.thread77.i, label %bb.e

bb.e:                                             ; preds = %.thread.i
  %i.o = and i32 %.pre153.i, 4096
  %.not.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = and i32 %.pre153.i, 8192
  %.not.i.i.1.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.1.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = and i32 %.pre153.i, 16384
  %.not.i.i.2.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.2.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i, label %bb.k

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %.0613.i.i.lcssa.wide.i = phi i64 [ 0, %bb.e ], [ 1, %bb.f ], [ 2, %bb.g ]
  %i.r = getelementptr inbounds nuw [2 x i8], ptr @_ZZL22RetCC_SystemZ_XPLINK64jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList1, i64 %.0613.i.i.lcssa.wide.i
  %i.s = load i16, ptr %i.r, align 2, !tbaa !170  ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.s) #27
  %i.t = zext i16 %i.s to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  %i.u = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i8 0, ptr %i.u, align 8, !tbaa !735, !alias.scope !959
  %i.v = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i32 %0, ptr %i.v, align 8, !tbaa !772, !alias.scope !959
  %i.w = getelementptr inbounds nuw i8, ptr %15, i64 20 ; 2 uses
  %i.x = load i8, ptr %i.w, align 4, !alias.scope !959
  %i.y = and i8 %i.x, -128
  %i.z = trunc i32 %.05465.i to i8
  %i.aa = shl i8 %i.z, 1
  %i.ab = and i8 %i.aa, 126
  %i.ac = or disjoint i8 %i.y, %i.ab
  store i8 %i.ac, ptr %i.w, align 4, !alias.scope !959
  %i.ad = getelementptr inbounds nuw i8, ptr %15, i64 22
  store i16 %1, ptr %i.ad, align 2, !tbaa !187, !alias.scope !959
  %i.ae = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i16 8, ptr %i.ae, align 8, !tbaa !187, !alias.scope !959
  store i32 %i.t, ptr %15, align 8, !tbaa !158, !alias.scope !959
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !780, !nonnull !19, !align !74 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !208 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !209
  %.not.i.i66.i = icmp ult i32 %i.ai, %i.ak
  br i1 %.not.i.i66.i, label %bb.i, label %bb.h, !prof !210

bb.h:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(26) %15)
  br label %bb.j

bb.i:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i
  %i.al = zext i32 %i.ai to i64
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !21
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %i.am, i64 %i.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false)
  %i.ao = load i32, ptr %i.ah, align 8, !tbaa !208
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.ah, align 8, !tbaa !208
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  br label %_ZL17RetCC_SystemZ_ELFjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit

.thread77.i:                                      ; preds = %.thread.i
  %.pre32.a = and i32 %.pre153.i, 16384
  %i.aq = icmp eq i32 %.pre32.a, 0
  br i1 %i.aq, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit71.i, label %.thread77.i.thread

.thread77.i.thread:                               ; preds = %.thread77.i
  %i.ar = and i32 %.pre153.i, 8192
  %.not.i.i68.1.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i68.1.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit71.i, label %bb.k

bb.k:                                             ; preds = %bb.g, %.thread77.i.thread
  %i.as = and i32 %.pre153.i, 4096
  %.not.i.i68.2.i = icmp eq i32 %i.as, 0
  br i1 %.not.i.i68.2.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit71.i, label %.thread110.i

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit71.i: ; preds = %bb.k, %.thread77.i.thread, %.thread77.i
  %.0613.i.i67.lcssa.wide.i = phi i64 [ 0, %.thread77.i ], [ 1, %.thread77.i.thread ], [ 2, %bb.k ]
  %i.at = getelementptr inbounds nuw [2 x i8], ptr @_ZZL22RetCC_SystemZ_XPLINK64jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList2, i64 %.0613.i.i67.lcssa.wide.i
  %i.au = load i16, ptr %i.at, align 2, !tbaa !170 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.au) #27
  %i.av = zext i16 %i.au to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  %i.aw = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i8 0, ptr %i.aw, align 8, !tbaa !735, !alias.scope !962
  %i.ax = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i32 %0, ptr %i.ax, align 8, !tbaa !772, !alias.scope !962
  %i.ay = getelementptr inbounds nuw i8, ptr %16, i64 20 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 4, !alias.scope !962
  %i.ba = and i8 %i.az, -128
  %i.bb = trunc i32 %.05465.i to i8
  %i.bc = shl i8 %i.bb, 1
  %i.bd = and i8 %i.bc, 126
  %i.be = or disjoint i8 %i.ba, %i.bd
  store i8 %i.be, ptr %i.ay, align 4, !alias.scope !962
  %i.bf = getelementptr inbounds nuw i8, ptr %16, i64 22
  store i16 %1, ptr %i.bf, align 2, !tbaa !187, !alias.scope !962
  %i.bg = getelementptr inbounds nuw i8, ptr %16, i64 24
  store i16 8, ptr %i.bg, align 8, !tbaa !187, !alias.scope !962
  store i32 %i.av, ptr %16, align 8, !tbaa !158, !alias.scope !962
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !780, !nonnull !19, !align !74 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 3 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !208 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !209
  %.not.i.i72.i = icmp ult i32 %i.bk, %i.bm
  br i1 %.not.i.i72.i, label %bb.m, label %bb.l, !prof !210

bb.l:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit71.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(26) %16)
  br label %bb.n

bb.m:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit71.i
  %i.bn = zext i32 %i.bk to i64
  %i.bo = load ptr, ptr %i.bi, align 8, !tbaa !21
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %i.bo, i64 %i.bn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %16, i64 32, i1 false)
  %i.bq = load i32, ptr %i.bj, align 8, !tbaa !208
  %i.br = add i32 %i.bq, 1
  store i32 %i.br, ptr %i.bj, align 8, !tbaa !208
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  br label %_ZL17RetCC_SystemZ_ELFjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit

bb.o:                                             ; preds = %bb.b
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !21
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !158 ; 4 uses
  %i.bw = and i32 %i.bv, 2048
  %.not.i.i75.i = icmp eq i32 %i.bw, 0
  br i1 %.not.i.i75.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit78.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bx = and i32 %i.bv, 8192
  %.not.i.i75.1.i = icmp eq i32 %i.bx, 0
  br i1 %.not.i.i75.1.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit78.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.by = and i32 %i.bv, 32768
  %.not.i.i75.2.i = icmp eq i32 %i.by, 0
  br i1 %.not.i.i75.2.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit78.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bz = and i32 %i.bv, 131072
  %.not.i.i75.3.i = icmp eq i32 %i.bz, 0
  br i1 %.not.i.i75.3.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit78.i, label %.thread110.i

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit78.i: ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %.0613.i.i74.lcssa.wide.i = phi i64 [ 0, %bb.o ], [ 1, %bb.p ], [ 2, %bb.q ], [ 3, %bb.r ]
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr @_ZZL17RetCC_SystemZ_ELFjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList4, i64 %.0613.i.i74.lcssa.wide.i
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !170 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.cb) #27
  %i.cc = zext i16 %i.cb to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  %i.cd = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i8 0, ptr %i.cd, align 8, !tbaa !735, !alias.scope !965
  %i.ce = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i32 %0, ptr %i.ce, align 8, !tbaa !772, !alias.scope !965
  %i.cf = getelementptr inbounds nuw i8, ptr %17, i64 20 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 4, !alias.scope !965
  %i.ch = and i8 %i.cg, -128
  %i.ci = trunc i32 %3 to i8
  %i.cj = shl i8 %i.ci, 1
  %i.ck = and i8 %i.cj, 126
  %i.cl = or disjoint i8 %i.ch, %i.ck
  store i8 %i.cl, ptr %i.cf, align 4, !alias.scope !965
  %i.cm = getelementptr inbounds nuw i8, ptr %17, i64 22
  store i16 %1, ptr %i.cm, align 2, !tbaa !187, !alias.scope !965
  %i.cn = getelementptr inbounds nuw i8, ptr %17, i64 24
  store i16 14, ptr %i.cn, align 8, !tbaa !187, !alias.scope !965
  store i32 %i.cc, ptr %17, align 8, !tbaa !158, !alias.scope !965
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !780, !nonnull !19, !align !74 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 3 uses
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !208 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !209
  %.not.i.i79.i = icmp ult i32 %i.cr, %i.ct
  br i1 %.not.i.i79.i, label %bb.t, label %bb.s, !prof !210

bb.s:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit78.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.cp, ptr noundef nonnull align 8 dereferenceable(26) %17)
  br label %bb.u

bb.t:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit78.i
  %i.cu = zext i32 %i.cr to i64
  %i.cv = load ptr, ptr %i.cp, align 8, !tbaa !21
  %i.cw = getelementptr inbounds nuw [32 x i8], ptr %i.cv, i64 %i.cu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.cw, ptr noundef nonnull align 8 dereferenceable(32) %17, i64 32, i1 false)
  %i.cx = load i32, ptr %i.cq, align 8, !tbaa !208
  %i.cy = add i32 %i.cx, 1
  store i32 %i.cy, ptr %i.cq, align 8, !tbaa !208
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  br label %_ZL17RetCC_SystemZ_ELFjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit

bb.v:                                             ; preds = %bb.b
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %7, i64 64
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !21
  %i.cz = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !158 ; 4 uses
  %i.db = and i32 %i.da, 8
  %.not.i.i82.i = icmp eq i32 %i.db, 0
  br i1 %.not.i.i82.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit85.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dc = and i32 %i.da, 32
  %.not.i.i82.1.i = icmp eq i32 %i.dc, 0
  br i1 %.not.i.i82.1.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit85.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dd = and i32 %i.da, 128
  %.not.i.i82.2.i = icmp eq i32 %i.dd, 0
  br i1 %.not.i.i82.2.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit85.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.de = and i32 %i.da, 512
  %.not.i.i82.3.i = icmp eq i32 %i.de, 0
  br i1 %.not.i.i82.3.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit85.i, label %.thread110.i

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit85.i: ; preds = %bb.y, %bb.x, %bb.w, %bb.v
  %.0613.i.i81.lcssa.wide.i = phi i64 [ 0, %bb.v ], [ 1, %bb.w ], [ 2, %bb.x ], [ 3, %bb.y ]
  %i.df = getelementptr inbounds nuw [2 x i8], ptr @_ZZL17RetCC_SystemZ_ELFjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList5, i64 %.0613.i.i81.lcssa.wide.i
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !170 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.dg) #27
  %i.dh = zext i16 %i.dg to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  %i.di = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i8 0, ptr %i.di, align 8, !tbaa !735, !alias.scope !968
  %i.dj = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i32 %0, ptr %i.dj, align 8, !tbaa !772, !alias.scope !968
  %i.dk = getelementptr inbounds nuw i8, ptr %18, i64 20 ; 2 uses
  %i.dl = load i8, ptr %i.dk, align 4, !alias.scope !968
  %i.dm = and i8 %i.dl, -128
  %i.dn = trunc i32 %3 to i8
  %i.do = shl i8 %i.dn, 1
  %i.dp = and i8 %i.do, 126
  %i.dq = or disjoint i8 %i.dm, %i.dp
  store i8 %i.dq, ptr %i.dk, align 4, !alias.scope !968
  %i.dr = getelementptr inbounds nuw i8, ptr %18, i64 22
  store i16 %1, ptr %i.dr, align 2, !tbaa !187, !alias.scope !968
  %i.ds = getelementptr inbounds nuw i8, ptr %18, i64 24
  store i16 15, ptr %i.ds, align 8, !tbaa !187, !alias.scope !968
  store i32 %i.dh, ptr %18, align 8, !tbaa !158, !alias.scope !968
  %i.dt = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !780, !nonnull !19, !align !74 ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 3 uses
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !208 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !209
  %.not.i.i86.i = icmp ult i32 %i.dw, %i.dy
  br i1 %.not.i.i86.i, label %bb.aa, label %bb.z, !prof !210

bb.z:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit85.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.du, ptr noundef nonnull align 8 dereferenceable(26) %18)
  br label %bb.ab

bb.aa:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit85.i
  %i.dz = zext i32 %i.dw to i64
  %i.ea = load ptr, ptr %i.du, align 8, !tbaa !21
  %i.eb = getelementptr inbounds nuw [32 x i8], ptr %i.ea, i64 %i.dz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.eb, ptr noundef nonnull align 8 dereferenceable(32) %18, i64 32, i1 false)
  %i.ec = load i32, ptr %i.dv, align 8, !tbaa !208
  %i.ed = add i32 %i.ec, 1
  store i32 %i.ed, ptr %i.dv, align 8, !tbaa !208
  br label %bb.ab
end_hunk_1
begin_hunk_2_@_ZN4llvm7CCState6addLocERKNS_11CCValAssignE:bb.a
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !210

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(26) %1)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = zext i32 %i.d to i64
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.j = load i32, ptr %i.c, align 8, !tbaa !208
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.c, align 8, !tbaa !208
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE9push_backERKS1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE9push_backERKS1_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm23CC_SystemZ_I128IndirectERjRNS_3MVTES2_RNS_11CCValAssign7LocInfoERNS_3ISD10ArgFlagsTyERNS_7CCStateE(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 2 dereferenceable(2) %1, ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(420) %5) local_unnamed_addr #1 comdat {
bb.a:
  %6 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 144 ; 4 uses
  %i.b = load i64, ptr %4, align 4
  %i.c = and i64 %i.b, 512
  %i.d = icmp ne i64 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 152 ; 6 uses
  %i.f = load i32, ptr %i.e, align 8              ; 3 uses
  %.not.i = icmp ne i32 %i.f, 0
  %or.cond.not = select i1 %i.d, i1 true, i1 %.not.i ; 2 uses
  br i1 %or.cond.not, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  store i16 8, ptr %2, align 2, !tbaa !187
  store i32 11, ptr %3, align 4, !tbaa !767
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.g = load i32, ptr %0, align 4, !tbaa !158
  %.sroa.015.0.copyload = load i16, ptr %1, align 2, !tbaa !187
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %i.g, ptr %i.i, align 8, !tbaa !772, !alias.scope !2248
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 2 uses
  %i.k = load i8, ptr %i.j, align 4, !alias.scope !2248
  %i.l = and i8 %i.k, -128
  %i.m = or disjoint i8 %i.l, 22
  store i8 %i.m, ptr %i.j, align 4, !alias.scope !2248
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 22
  store i16 %.sroa.015.0.copyload, ptr %i.n, align 2, !tbaa !187, !alias.scope !2248
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i16 8, ptr %i.o, align 8, !tbaa !187, !alias.scope !2248
  store i8 2, ptr %i.h, align 8, !tbaa !735, !alias.scope !2248
  store i32 0, ptr %6, align 8, !tbaa !158, !alias.scope !2248
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 156
  %i.q = load i32, ptr %i.p, align 4, !tbaa !209
  %.not.i38 = icmp ult i32 %i.f, %i.q
  br i1 %.not.i38, label %bb.d, label %bb.c, !prof !210

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(26) %6)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE9push_backERKS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.r = zext i32 %i.f to i64
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  %i.u = load i32, ptr %i.e, align 8, !tbaa !208
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr %i.e, align 8, !tbaa !208
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE9push_backERKS1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE9push_backERKS1_.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.w = load i64, ptr %4, align 4
  %i.x = and i64 %i.w, 4096
  %.not59 = icmp eq i64 %i.x, 0
  br i1 %.not59, label %bb.x, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE9push_backERKS1_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !766, !nonnull !19, !align !74
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !434, !nonnull !19, !align !74 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 452 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !591 ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 3
  br i1 %i.ae, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !21 ; 5 uses
  %i.ah = load i16, ptr @_ZN4llvm7SystemZ10ELFArgGPRsE, align 2, !tbaa !170 ; 2 uses
  %i.ai = zext i16 %i.ah to i32                   ; 2 uses
  %i.aj = lshr i32 %i.ai, 5
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !158
  %i.an = and i32 %i.ai, 31
  %i.ao = shl nuw i32 1, %i.an
  %i.ap = and i32 %i.ao, %i.am
  %.not.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm7SystemZ10ELFArgGPRsE, i64 2), align 2, !tbaa !170 ; 2 uses
  %i.ar = zext i16 %i.aq to i32                   ; 2 uses
  %i.as = lshr i32 %i.ar, 5
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !158
  %i.aw = and i32 %i.ar, 31
  %i.ax = shl nuw i32 1, %i.aw
  %i.ay = and i32 %i.ax, %i.av
  %.not.i.i.1 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm7SystemZ10ELFArgGPRsE, i64 4), align 2, !tbaa !170 ; 2 uses
  %i.ba = zext i16 %i.az to i32                   ; 2 uses
  %i.bb = lshr i32 %i.ba, 5
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !158
  %i.bf = and i32 %i.ba, 31
  %i.bg = shl nuw i32 1, %i.bf
  %i.bh = and i32 %i.bg, %i.be
  %.not.i.i.2 = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bi = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm7SystemZ10ELFArgGPRsE, i64 6), align 2, !tbaa !170 ; 2 uses
  %i.bj = zext i16 %i.bi to i32                   ; 2 uses
  %i.bk = lshr i32 %i.bj, 5
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !158
  %i.bo = and i32 %i.bj, 31
  %i.bp = shl nuw i32 1, %i.bo
  %i.bq = and i32 %i.bp, %i.bn
  %.not.i.i.3 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i.3, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.br = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm7SystemZ10ELFArgGPRsE, i64 8), align 2, !tbaa !170 ; 2 uses
  %i.bs = zext i16 %i.br to i32                   ; 2 uses
  %i.bt = lshr i32 %i.bs, 5
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !158
  %i.bx = and i32 %i.bs, 31
  %i.by = shl nuw i32 1, %i.bx
  %i.bz = and i32 %i.by, %i.bw
  %.not.i.i.4 = icmp eq i32 %i.bz, 0
  br i1 %.not.i.i.4, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.thread

bb.k:                                             ; preds = %bb.e
  %i.ca = icmp eq i32 %i.ad, 4
  call void @llvm.assume(i1 %i.ca)
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !21 ; 3 uses
  %i.cd = load i16, ptr @_ZN4llvm7SystemZ15XPLINK64ArgGPRsE, align 2, !tbaa !170 ; 2 uses
  %i.ce = zext i16 %i.cd to i32                   ; 2 uses
  %i.cf = lshr i32 %i.ce, 5
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !158
  %i.cj = and i32 %i.ce, 31
  %i.ck = shl nuw i32 1, %i.cj
  %i.cl = and i32 %i.ck, %i.ci
  %.not.i.i40 = icmp eq i32 %i.cl, 0
  br i1 %.not.i.i40, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cm = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm7SystemZ15XPLINK64ArgGPRsE, i64 2), align 2, !tbaa !170 ; 2 uses
  %i.cn = zext i16 %i.cm to i32                   ; 2 uses
  %i.co = lshr i32 %i.cn, 5
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !158
  %i.cs = and i32 %i.cn, 31
  %i.ct = shl nuw i32 1, %i.cs
  %i.cu = and i32 %i.ct, %i.cr
  %.not.i.i40.1 = icmp eq i32 %i.cu, 0
  br i1 %.not.i.i40.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cv = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm7SystemZ15XPLINK64ArgGPRsE, i64 4), align 2, !tbaa !170 ; 2 uses
  %i.cw = zext i16 %i.cv to i32                   ; 2 uses
  %i.cx = lshr i32 %i.cw, 5
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !158
  %i.db = and i32 %i.cw, 31
  %i.dc = shl nuw i32 1, %i.db
  %i.dd = and i32 %i.dc, %i.da
  %.not.i.i40.2 = icmp eq i32 %i.dd, 0
  br i1 %.not.i.i40.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.thread

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit: ; preds = %bb.k, %bb.l, %bb.m, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %.sink87 = phi i16 [ %i.br, %bb.j ], [ %i.ah, %bb.f ], [ %i.aq, %bb.g ], [ %i.az, %bb.h ], [ %i.bi, %bb.i ], [ %i.cd, %bb.k ], [ %i.cm, %bb.l ], [ %i.cv, %bb.m ] ; 3 uses
  call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %5, i16 noundef zeroext %.sink87) #27
  %.not = icmp eq i16 %.sink87, 0
  br i1 %.not, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.thread, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  %.035 = zext i16 %.sink87 to i32                ; 2 uses
  %i.de = load i32, ptr %i.ac, align 4, !tbaa !591
  %i.df = icmp eq i32 %i.de, 4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ab, i64 444
  %i.dh = load i32, ptr %i.dg, align 4
  %i.di = icmp eq i32 %i.dh, 16
  %i.dj = select i1 %i.df, i1 %i.di, i1 false
  br i1 %i.dj, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.thread, label %.thread

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.thread: ; preds = %bb.m, %bb.j, %bb.n, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  %.not57 = phi i1 [ true, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit ], [ false, %bb.n ], [ true, %bb.j ], [ true, %bb.m ]
  %.03555 = phi i32 [ 0, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit ], [ %.035, %bb.n ], [ 0, %bb.j ], [ 0, %bb.m ]
  %i.dk = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.dl = load i8, ptr %i.dk, align 8, !tbaa !787, !range !18, !noundef !19
  %i.dm = trunc nuw i8 %i.dl to i1
  %i.dn = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !711 ; 2 uses
  br i1 %i.dm, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.thread
  %i.dp = add i64 %i.do, 15
  %i.dq = and i64 %i.dp, -8                       ; 2 uses
  %i.dr = sub i64 0, %i.dq
  br label %bb.q

bb.p:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.thread
  %i.ds = add i64 %i.do, 7
  %i.dt = and i64 %i.ds, -8                       ; 2 uses
  %i.du = add nsw i64 %i.dt, 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sink = phi i64 [ %i.dq, %bb.o ], [ %i.du, %bb.p ]
  %.0.i = phi i64 [ %i.dr, %bb.o ], [ %i.dt, %bb.p ]
  store i64 %.sink, ptr %i.dn, align 8, !tbaa !711
  %i.dv = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.dv, align 8, !tbaa !164
  %.sroa.speculated.i = call i8 @llvm.umax.i8(i8 %.sroa.0.0.copyload.i.i, i8 3)
  store i8 %.sroa.speculated.i, ptr %i.dv, align 8, !tbaa !164
  call void @_ZN4llvm7CCState18ensureMaxAlignmentENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %5, i8 3) #27
  %i.dw = and i64 %.0.i, 4294967295
  %i.dx = load ptr, ptr %i.a, align 8, !tbaa !21  ; 3 uses
  %i.dy = load i32, ptr %i.e, align 8, !tbaa !208 ; 2 uses
  %i.dz = zext i32 %i.dy to i64
  %.idx = shl nuw nsw i64 %i.dz, 5
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 %.idx ; 2 uses
  %.not3764 = icmp eq i32 %i.dy, 0
  br i1 %.not3764, label %._crit_edge, label %.lr.ph

.thread:                                          ; preds = %bb.n
  %i.eb = load i32, ptr %i.e, align 8, !tbaa !208 ; 2 uses
  %.not376480 = icmp eq i32 %i.eb, 0
  br i1 %.not376480, label %._crit_edge, label %.lr.ph.thread

.lr.ph.thread:                                    ; preds = %.thread
  %i.ec = load ptr, ptr %i.a, align 8, !tbaa !21  ; 2 uses
  %i.ed = zext i32 %i.eb to i64
  %.idx79 = shl nuw nsw i64 %i.ed, 5
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 %.idx79
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 24
  br label %.lr.ph.split.preheader

.lr.ph:                                           ; preds = %bb.q
  %i.eg = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  br i1 %.not57, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph.thread, %.lr.ph
  %i.eh = phi ptr [ %i.ef, %.lr.ph.thread ], [ %i.eg, %.lr.ph ]
  %.035548285 = phi i32 [ %.035, %.lr.ph.thread ], [ %.03555, %.lr.ph ]
  %i.ei = phi ptr [ %i.ec, %.lr.ph.thread ], [ %i.dx, %.lr.ph ]
  %i.ej = phi ptr [ %i.ee, %.lr.ph.thread ], [ %i.ea, %.lr.ph ]
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit.us
  %.065.us = phi ptr [ %i.ex, %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit.us ], [ %i.dx, %.lr.ph ] ; 5 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.065.us, i64 8 ; 2 uses
  %i.el = load i8, ptr %i.ek, align 8, !tbaa !735
  %i.em = icmp eq i8 %i.el, 1
  br i1 %i.em, label %_ZN4llvm11CCValAssign12convertToMemEl.exit.us, label %bb.r

bb.r:                                             ; preds = %.lr.ph.split.us
  store i8 1, ptr %i.ek, align 8, !tbaa !735
  br label %_ZN4llvm11CCValAssign12convertToMemEl.exit.us

_ZN4llvm11CCValAssign12convertToMemEl.exit.us:    ; preds = %bb.r, %.lr.ph.split.us
  store i64 %i.dw, ptr %.065.us, align 8, !tbaa !217
  %i.en = load ptr, ptr %i.eg, align 8, !tbaa !780, !nonnull !19, !align !74 ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 3 uses
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !208 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 12
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !209
  %.not.i.i44.us = icmp ult i32 %i.ep, %i.er
  br i1 %.not.i.i44.us, label %bb.t, label %bb.s, !prof !210

bb.s:                                             ; preds = %_ZN4llvm11CCValAssign12convertToMemEl.exit.us
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.en, ptr noundef nonnull align 8 dereferenceable(26) %.065.us)
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit.us

bb.t:                                             ; preds = %_ZN4llvm11CCValAssign12convertToMemEl.exit.us
  %i.es = zext i32 %i.ep to i64
  %i.et = load ptr, ptr %i.en, align 8, !tbaa !21
  %i.eu = getelementptr inbounds nuw [32 x i8], ptr %i.et, i64 %i.es
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.eu, ptr noundef nonnull align 8 dereferenceable(32) %.065.us, i64 32, i1 false)
  %i.ev = load i32, ptr %i.eo, align 8, !tbaa !208
  %i.ew = add i32 %i.ev, 1
  store i32 %i.ew, ptr %i.eo, align 8, !tbaa !208
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit.us

_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit.us: ; preds = %bb.t, %bb.s
  %i.ex = getelementptr inbounds nuw i8, ptr %.065.us, i64 32 ; 2 uses
  %.not37.us = icmp eq ptr %i.ex, %i.ea
  br i1 %.not37.us, label %._crit_edge, label %.lr.ph.split.us

._crit_edge:                                      ; preds = %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit, %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit.us, %.thread, %bb.q
  store i32 0, ptr %i.e, align 8, !tbaa !208
  br label %bb.x

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit
  %.065 = phi ptr [ %i.fl, %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit ], [ %i.ei, %.lr.ph.split.preheader ] ; 5 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.065, i64 8 ; 2 uses
  %i.ez = load i8, ptr %i.ey, align 8, !tbaa !735
  %i.fa = icmp eq i8 %i.ez, 0
  br i1 %i.fa, label %_ZN4llvm11CCValAssign12convertToRegENS_10MCRegisterE.exit, label %bb.u

bb.u:                                             ; preds = %.lr.ph.split
  store i8 0, ptr %i.ey, align 8, !tbaa !735
  br label %_ZN4llvm11CCValAssign12convertToRegENS_10MCRegisterE.exit

_ZN4llvm11CCValAssign12convertToRegENS_10MCRegisterE.exit: ; preds = %.lr.ph.split, %bb.u
  store i32 %.035548285, ptr %.065, align 8, !tbaa !158
  %i.fb = load ptr, ptr %i.eh, align 8, !tbaa !780, !nonnull !19, !align !74 ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 3 uses
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !208 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 12
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !209
  %.not.i.i44 = icmp ult i32 %i.fd, %i.ff
  br i1 %.not.i.i44, label %bb.w, label %bb.v, !prof !210

bb.v:                                             ; preds = %_ZN4llvm11CCValAssign12convertToRegENS_10MCRegisterE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.fb, ptr noundef nonnull align 8 dereferenceable(26) %.065)
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit

bb.w:                                             ; preds = %_ZN4llvm11CCValAssign12convertToRegENS_10MCRegisterE.exit
  %i.fg = zext i32 %i.fd to i64
  %i.fh = load ptr, ptr %i.fb, align 8, !tbaa !21
  %i.fi = getelementptr inbounds nuw [32 x i8], ptr %i.fh, i64 %i.fg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.fi, ptr noundef nonnull align 8 dereferenceable(32) %.065, i64 32, i1 false)
  %i.fj = load i32, ptr %i.fc, align 8, !tbaa !208
  %i.fk = add i32 %i.fj, 1
  store i32 %i.fk, ptr %i.fc, align 8, !tbaa !208
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit

_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit: ; preds = %bb.v, %bb.w
  %i.fl = getelementptr inbounds nuw i8, ptr %.065, i64 32 ; 2 uses
  %.not37 = icmp eq ptr %i.fl, %i.ej
  br i1 %.not37, label %._crit_edge, label %.lr.ph.split

bb.x:                                             ; preds = %bb.a, %_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE9push_backERKS1_.exit, %._crit_edge
  ret i1 %or.cond.not
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE(ptr noundef nonnull align 8 dereferenceable(420) %0, ptr %1, i64 %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not14.i = icmp eq i64 %2, 0
  br i1 %.not14.i, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.c = phi i64 [ 0, %.lr.ph.i ], [ %i.o, %bb.c ]
  %.0613.i = phi i32 [ 0, %.lr.ph.i ], [ %i.n, %bb.c ] ; 2 uses
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.c
  %i.e = load i16, ptr %i.d, align 2, !tbaa !170
  %i.f = zext i16 %i.e to i32                     ; 2 uses
  %i.g = lshr i32 %i.f, 5
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !158
  %i.k = and i32 %i.f, 31
  %i.l = shl nuw i32 1, %i.k
  %i.m = and i32 %i.l, %i.j
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = add i32 %.0613.i, 1                      ; 2 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = icmp ugt i64 %2, %i.o
  br i1 %i.p, label %bb.b, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.thread, !llvm.loop !2251

_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit: ; preds = %bb.b
  %i.q = zext i32 %.0613.i to i64                 ; 2 uses
  %i.r = icmp eq i64 %2, %i.q
  br i1 %i.r, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.q
  %i.t = load i16, ptr %i.s, align 2, !tbaa !170  ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %0, i16 noundef zeroext %i.t) #27
  %i.u = zext i16 %i.t to i32
  br label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.thread

_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.thread: ; preds = %bb.c, %bb.a, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit, %bb.d
  %.sroa.04.0 = phi i32 [ %i.u, %bb.d ], [ 0, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit ], [ 0, %bb.a ], [ 0, %bb.c ]
  ret i32 %.sroa.04.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4llvm7CCState13AllocateStackEjNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %0, i32 noundef %1, i8 %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8, !tbaa !787, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !711  ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = zext i32 %1 to i64
  %i.g = zext nneg i8 %2 to i64
  %i.h = shl nuw i64 1, %i.g                      ; 2 uses
  %i.i = add nsw i64 %i.f, -1
  %i.j = add i64 %i.i, %i.h
  %i.k = add i64 %i.j, %i.e
  %i.l = sub i64 0, %i.h
  %i.m = and i64 %i.k, %i.l                       ; 2 uses
  store i64 %i.m, ptr %i.d, align 8, !tbaa !711
  %i.n = sub i64 0, %i.m
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.o = zext nneg i8 %2 to i64
  %i.p = shl nuw i64 1, %i.o                      ; 2 uses
  %i.q = add i64 %i.p, -1
  %i.r = add i64 %i.q, %i.e
  %i.s = sub i64 0, %i.p
  %i.t = and i64 %i.r, %i.s                       ; 2 uses
  %i.u = zext i32 %1 to i64
  %i.v = add nsw i64 %i.t, %i.u
  store i64 %i.v, ptr %i.d, align 8, !tbaa !711
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.n, %bb.b ], [ %i.t, %bb.c ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.0.0.copyload.i = load i8, ptr %i.w, align 8, !tbaa !164
  %.sroa.speculated = tail call i8 @llvm.umax.i8(i8 %2, i8 %.sroa.0.0.copyload.i)
  store i8 %.sroa.speculated, ptr %i.w, align 8, !tbaa !164
  tail call void @_ZN4llvm7CCState18ensureMaxAlignmentENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %0, i8 %2) #27
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm22CC_XPLINK64_Shadow_RegERjRNS_3MVTES2_RNS_11CCValAssign7LocInfoERNS_3ISD10ArgFlagsTyERNS_7CCStateE(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 2 dereferenceable(2) %1, ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(420) %5) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = load i16, ptr %2, align 2, !tbaa !212    ; 3 uses
  %i.b = and i16 %i.a, -2
  %switch = icmp eq i16 %i.b, 14
  br i1 %switch, label %.critedge, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit

.critedge:                                        ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21   ; 3 uses
  %i.e = load i16, ptr @_ZN4llvm7SystemZ15XPLINK64ArgGPRsE, align 2, !tbaa !170 ; 2 uses
  %i.f = zext i16 %i.e to i32                     ; 2 uses
  %i.g = lshr i32 %i.f, 5
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !158
  %i.k = and i32 %i.f, 31
  %i.l = shl nuw i32 1, %i.k
  %i.m = and i32 %i.l, %i.j
  %.not.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i, label %bb.b

bb.b:                                             ; preds = %.critedge
  %i.n = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm7SystemZ15XPLINK64ArgGPRsE, i64 2), align 2, !tbaa !170 ; 2 uses
  %i.o = zext i16 %i.n to i32                     ; 2 uses
  %i.p = lshr i32 %i.o, 5
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !158
  %i.t = and i32 %i.o, 31
  %i.u = shl nuw i32 1, %i.t
  %i.v = and i32 %i.u, %i.s
  %.not.i.i.1 = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.1, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm7SystemZ15XPLINK64ArgGPRsE, i64 4), align 2, !tbaa !170 ; 2 uses
  %i.x = zext i16 %i.w to i32                     ; 2 uses
  %i.y = lshr i32 %i.x, 5
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !158
  %i.ac = and i32 %i.x, 31
  %i.ad = shl nuw i32 1, %i.ac
  %i.ae = and i32 %i.ad, %i.ab
  %.not.i.i.2 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.2, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.thread

_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i: ; preds = %bb.c, %bb.b, %.critedge
  %i.af = phi i16 [ %i.e, %.critedge ], [ %i.n, %bb.b ], [ %i.w, %bb.c ]
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %5, i16 noundef zeroext %i.af) #27
  %.pr.pre = load i16, ptr %2, align 2, !tbaa !212
  br label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit: ; preds = %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i, %bb.a
  %i.ag = phi i16 [ %i.a, %bb.a ], [ %.pr.pre, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i ] ; 2 uses
  %i.ah = icmp eq i16 %i.ag, 17
  br i1 %i.ah, label %.critedge2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.thread

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.thread: ; preds = %bb.c, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  %i.ai = phi i16 [ %i.ag, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit ], [ %i.a, %bb.c ] ; 2 uses
  %i.aj = add i16 %i.ai, -19
  %spec.select.i.i = icmp ult i16 %i.aj, 144
  br i1 %spec.select.i.i, label %_ZNK4llvm3MVT14is128BitVectorEv.exit, label %_ZNK4llvm3MVT14is128BitVectorEv.exit.thread

_ZNK4llvm3MVT14is128BitVectorEv.exit:             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.thread
  %i.ak = zext nneg i16 %i.ai to i64
  %i.al = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.al, i64 -16
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.am, align 16
  %i.an = icmp eq i64 %.sroa.0.0.copyload.i.i.i, 128
  br i1 %i.an, label %.critedge2, label %_ZNK4llvm3MVT14is128BitVectorEv.exit.thread

.critedge2:                                       ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, %_ZNK4llvm3MVT14is128BitVectorEv.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 4 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !21 ; 4 uses
  %i.aq = load i16, ptr @_ZN4llvm7SystemZ15XPLINK64ArgGPRsE, align 2, !tbaa !170 ; 3 uses
  %i.ar = zext i16 %i.aq to i32                   ; 2 uses
  %i.as = lshr i32 %i.ar, 5
  %i.at = zext nneg i32 %i.as to i64              ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !158
  %i.aw = and i32 %i.ar, 31
  %i.ax = shl nuw i32 1, %i.aw                    ; 2 uses
  %i.ay = and i32 %i.ax, %i.av
  %.not.i.i19 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i19, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit22, label %bb.d

bb.d:                                             ; preds = %.critedge2
  %i.az = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm7SystemZ15XPLINK64ArgGPRsE, i64 2), align 2, !tbaa !170 ; 2 uses
  %i.ba = zext i16 %i.az to i32                   ; 2 uses
  %i.bb = lshr i32 %i.ba, 5
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !158
  %i.bf = and i32 %i.ba, 31
  %i.bg = shl nuw i32 1, %i.bf
  %i.bh = and i32 %i.bg, %i.be
  %.not.i.i19.1 = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i19.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit22, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bi = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm7SystemZ15XPLINK64ArgGPRsE, i64 4), align 2, !tbaa !170 ; 2 uses
  %i.bj = zext i16 %i.bi to i32                   ; 2 uses
  %i.bk = lshr i32 %i.bj, 5
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !158
  %i.bo = and i32 %i.bj, 31
  %i.bp = shl nuw i32 1, %i.bo
  %i.bq = and i32 %i.bp, %i.bn
  %.not.i.i19.2 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i19.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit22, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit22.thread

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit22: ; preds = %.critedge2, %bb.d, %bb.e
  %i.br = phi i16 [ %i.aq, %.critedge2 ], [ %i.az, %bb.d ], [ %i.bi, %bb.e ]
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %5, i16 noundef zeroext %i.br) #27
  %.pre = load ptr, ptr %i.ao, align 8, !tbaa !21 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.at
  %.pre49 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !158
  %.pre51 = and i32 %i.ax, %.pre49
  %i.bs = icmp eq i32 %.pre51, 0
  br i1 %i.bs, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i26, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit22.thread

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit22.thread: ; preds = %bb.e, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit22
  %i.bt = phi ptr [ %.pre, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit22 ], [ %i.ap, %bb.e ] ; 2 uses
  %i.bu = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm7SystemZ15XPLINK64ArgGPRsE, i64 2), align 2, !tbaa !170 ; 2 uses
  %i.bv = zext i16 %i.bu to i32                   ; 2 uses
  %i.bw = lshr i32 %i.bv, 5
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !158
  %i.ca = and i32 %i.bv, 31
  %i.cb = shl nuw i32 1, %i.ca
  %i.cc = and i32 %i.cb, %i.bz
  %.not.i.i24.1 = icmp eq i32 %i.cc, 0
  br i1 %.not.i.i24.1, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i26, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit22.thread
  %i.cd = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm7SystemZ15XPLINK64ArgGPRsE, i64 4), align 2, !tbaa !170 ; 2 uses
  %i.ce = zext i16 %i.cd to i32                   ; 2 uses
  %i.cf = lshr i32 %i.ce, 5
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !158
  %i.cj = and i32 %i.ce, 31
  %i.ck = shl nuw i32 1, %i.cj
  %i.cl = and i32 %i.ck, %i.ci
  %.not.i.i24.2 = icmp eq i32 %i.cl, 0
  br i1 %.not.i.i24.2, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i26, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit27

_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i26: ; preds = %bb.f, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit22.thread, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit22
  %i.cm = phi i16 [ %i.aq, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit22 ], [ %i.bu, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit22.thread ], [ %i.cd, %bb.f ]
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %5, i16 noundef zeroext %i.cm) #27
  br label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit27

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit27: ; preds = %bb.f, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i26
  %i.cn = load i16, ptr %2, align 2, !tbaa !212
  %i.co = icmp eq i16 %i.cn, 17
  br i1 %i.co, label %.preheader.preheader, label %_ZNK4llvm3MVT14is128BitVectorEv.exit.thread

.preheader.preheader:                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit27
  %i.cp = load i16, ptr @_ZN4llvm7SystemZ15XPLINK64ArgFPRsE, align 2, !tbaa !170
  %i.cq = zext i16 %i.cp to i32                   ; 2 uses
  %i.cr = lshr i32 %i.cq, 5
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = load ptr, ptr %i.ao, align 8, !tbaa !21 ; 4 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.cs
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !158
  %i.cw = and i32 %i.cq, 31
  %i.cx = shl nuw i32 1, %i.cw
  %i.cy = and i32 %i.cx, %i.cv
  %.not = icmp eq i32 %i.cy, 0
  br i1 %.not, label %_ZN4llvm7CCState11AllocateRegEt.exit, label %bb.g

bb.g:                                             ; preds = %.preheader.preheader
  %i.cz = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm7SystemZ15XPLINK64ArgFPRsE, i64 2), align 2, !tbaa !170 ; 2 uses
  %i.da = zext i16 %i.cz to i32                   ; 2 uses
  %i.db = lshr i32 %i.da, 5
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !158
  %i.df = and i32 %i.da, 31
  %i.dg = shl nuw i32 1, %i.df
  %i.dh = and i32 %i.dg, %i.de
  %.not.i = icmp eq i32 %i.dh, 0
  br i1 %.not.i, label %bb.h, label %_ZN4llvm7CCState11AllocateRegEt.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %5, i16 noundef zeroext %i.cz) #27
  %.pre50 = load ptr, ptr %i.ao, align 8, !tbaa !21
  br label %_ZN4llvm7CCState11AllocateRegEt.exit

_ZN4llvm7CCState11AllocateRegEt.exit:             ; preds = %bb.h, %bb.g, %.preheader.preheader
  %i.di = phi ptr [ %.pre50, %bb.h ], [ %i.ct, %bb.g ], [ %i.ct, %.preheader.preheader ] ; 2 uses
  %i.dj = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm7SystemZ15XPLINK64ArgFPRsE, i64 4), align 2, !tbaa !170
  %i.dk = zext i16 %i.dj to i32                   ; 2 uses
  %i.dl = lshr i32 %i.dk, 5
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !158
  %i.dp = and i32 %i.dk, 31
  %i.dq = shl nuw i32 1, %i.dp
  %i.dr = and i32 %i.dq, %i.do
  %.not.1 = icmp eq i32 %i.dr, 0
  br i1 %.not.1, label %_ZNK4llvm3MVT14is128BitVectorEv.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit
  %i.ds = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm7SystemZ15XPLINK64ArgFPRsE, i64 6), align 2, !tbaa !170 ; 2 uses
  %i.dt = zext i16 %i.ds to i32                   ; 2 uses
  %i.du = lshr i32 %i.dt, 5
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !158
  %i.dy = and i32 %i.dt, 31
  %i.dz = shl nuw i32 1, %i.dy
  %i.ea = and i32 %i.dz, %i.dx
  %.not.i.1 = icmp eq i32 %i.ea, 0
  br i1 %.not.i.1, label %bb.j, label %_ZNK4llvm3MVT14is128BitVectorEv.exit.thread

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %5, i16 noundef zeroext %i.ds) #27
  br label %_ZNK4llvm3MVT14is128BitVectorEv.exit.thread

_ZNK4llvm3MVT14is128BitVectorEv.exit.thread:      ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit, %bb.i, %bb.j, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.thread, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit27, %_ZNK4llvm3MVT14is128BitVectorEv.exit
  ret i1 false
}

declare void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420), i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(26) %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::CCValAssign", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !208
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 32) #27
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  %i.g = load i32, ptr %i.a, align 8, !tbaa !208
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.j = load i32, ptr %i.a, align 8, !tbaa !208
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !208
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #20

declare void @_ZN4llvm7CCState18ensureMaxAlignmentENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420), i8) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #21

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i32 %2) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !208
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 16) #27
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  %i.g = load i32, ptr %i.a, align 8, !tbaa !208
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h ; 2 uses
  store ptr %1, ptr %i.i, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 %2, ptr %.sroa.4.0..sroa_idx, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !208
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !208
  ret void
}

declare i8 @_ZNK4llvm12SelectionDAG11getEVTAlignENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920), i16, ptr) local_unnamed_addr #4

declare { i16, ptr } @_ZN4llvm3EVT20getExtendedIntegerVTERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL11getADAEntryRN4llvm12SelectionDAGENS_7SDValueENS_5SDLocEjb(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr %1, i32 %2, ptr %3, i32 %4, i32 noundef range(i32 0, 9) %5, i1 noundef zeroext %6) unnamed_addr #3 {
bb.a:
  %7 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %8 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %12 = alloca %"struct.llvm::MachinePointerInfo", align 8 ; 2 uses
  %13 = alloca %"struct.llvm::AAMDNodes", align 8 ; 4 uses
  store ptr %3, ptr %7, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %4, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !706  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !708
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  %.sroa.0.0.copyload.i = load i32, ptr %i.f, align 4, !tbaa !158
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !637  ; 2 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.c) #27
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call i16 %i.l(ptr noundef nonnull align 8 dereferenceable(518435) %i.h, ptr noundef nonnull align 8 dereferenceable(912) %i.i, i32 noundef 0) #27 ; 4 uses
  %i.n = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %0, i32 %.sroa.0.0.copyload.i, i16 %i.m, ptr null) #27 ; 2 uses
  %.fca.0.extract28 = extractvalue { ptr, i32 } %i.n, 0
  %.fca.1.extract29 = extractvalue { ptr, i32 } %i.n, 1
  %i.o = zext nneg i32 %5 to i64
  %i.p = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %0, i64 noundef %i.o, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %i.m, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #27 ; 2 uses
  %.fca.0.extract18 = extractvalue { ptr, i32 } %i.p, 0
  %.fca.1.extract19 = extractvalue { ptr, i32 } %i.p, 1
  store ptr %1, ptr %8, align 8, !tbaa !597
  %.sroa.252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %2, ptr %.sroa.252.0..sroa_idx, align 8, !tbaa !158
  store ptr %.fca.0.extract28, ptr %9, align 8, !tbaa !597
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.fca.1.extract29, ptr %.sroa.437.0..sroa_idx, align 8, !tbaa !158
  store ptr %.fca.0.extract18, ptr %10, align 8, !tbaa !597
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.fca.1.extract19, ptr %.sroa.426.0..sroa_idx, align 8, !tbaa !158
  %i.q = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %0, i32 noundef 537, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %i.m, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10) #27 ; 3 uses
  br i1 %6, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.fca.1.extract12 = extractvalue { ptr, i32 } %i.q, 1
  %.fca.0.extract11 = extractvalue { ptr, i32 } %i.q, 0
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr %.fca.0.extract11, ptr %11, align 8, !tbaa !597
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.fca.1.extract12, ptr %.sroa.454.0..sroa_idx, align 8, !tbaa !158
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %12, i8 0, i64 21, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %13, i8 0, i64 40, i1 false)
  %i.s = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getLoadENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_18MachinePointerInfoENS_10MaybeAlignENS_17MachineMemOperand5FlagsERKNS_9AAMDNodesEPKNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %0, i16 %i.m, ptr null, ptr noundef nonnull align 8 dereferenceable(12) %7, ptr nonnull %i.r, i32 0, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11, ptr noundef nonnull byval(%"struct.llvm::MachinePointerInfo") align 8 %12, i16 259, i16 noundef zeroext 48, ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef null) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %bb.c
end_hunk_2
