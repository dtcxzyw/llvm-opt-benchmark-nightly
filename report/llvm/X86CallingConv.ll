Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86CallingConv?download=true
inline.NumInlined: 4000
inline.NumDeleted: 263
loop-unroll.NumCompletelyUnrolled: 149
loop-unroll.NumUnrolled: 149
begin_hunk_0_@_ZN4llvm6CC_X86EjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE:bb.a
  br i1 %.not.i.i176.2.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit179.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jg = and i32 %i.jc, 67108864
  %.not.i.i176.3.i = icmp eq i32 %i.jg, 0
  br i1 %.not.i.i176.3.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit179.i, label %_ZN4llvm7CCState11AllocateRegEt.exit.thread133.i

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit179.i: ; preds = %bb.aw, %bb.av, %bb.au, %.critedge4.i
  %.0613.i.i175.lcssa.wide.i = phi i64 [ 0, %.critedge4.i ], [ 1, %bb.au ], [ 2, %bb.av ], [ 3, %bb.aw ]
  %i.jh = getelementptr inbounds nuw [2 x i8], ptr @_ZZL15RetCC_X86CommonjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList7, i64 %.0613.i.i175.lcssa.wide.i
  %i.ji = load i16, ptr %i.jh, align 2, !tbaa !303 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.ji) #8
  %i.jj = zext i16 %i.ji to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #8
  %i.jk = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i8 0, ptr %i.jk, align 8, !tbaa !305, !alias.scope !390
  %i.jl = getelementptr inbounds nuw i8, ptr %28, i64 16
  store i32 %0, ptr %i.jl, align 8, !tbaa !316, !alias.scope !390
  %i.jm = getelementptr inbounds nuw i8, ptr %28, i64 20 ; 2 uses
  %i.jn = load i8, ptr %i.jm, align 4, !alias.scope !390
  %i.jo = and i8 %i.jn, -128
  %i.jp = trunc i32 %3 to i8
  %i.jq = shl i8 %i.jp, 1
  %i.jr = and i8 %i.jq, 126
  %i.js = or disjoint i8 %i.jo, %i.jr
  store i8 %i.js, ptr %i.jm, align 4, !alias.scope !390
  %i.jt = getelementptr inbounds nuw i8, ptr %28, i64 22
  store i16 %1, ptr %i.jt, align 2, !tbaa !317, !alias.scope !390
  %i.ju = getelementptr inbounds nuw i8, ptr %28, i64 24
  store i16 %2, ptr %i.ju, align 8, !tbaa !317, !alias.scope !390
  store i32 %i.jj, ptr %28, align 8, !tbaa !302, !alias.scope !390
  %i.jv = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !318, !nonnull !300, !align !319 ; 4 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8 ; 3 uses
  %i.jy = load i32, ptr %i.jx, align 8, !tbaa !320 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jw, i64 12
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !321
  %.not.i.i180.i = icmp ult i32 %i.jy, %i.ka
  br i1 %.not.i.i180.i, label %bb.ay, label %bb.ax, !prof !322

bb.ax:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit179.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.jw, ptr noundef nonnull align 8 dereferenceable(26) %28)
  br label %bb.az

bb.ay:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit179.i
  %i.kb = zext i32 %i.jy to i64
  %i.kc = load ptr, ptr %i.jw, align 8, !tbaa !301
  %i.kd = getelementptr inbounds nuw [32 x i8], ptr %i.kc, i64 %i.kb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.kd, ptr noundef nonnull align 8 dereferenceable(32) %28, i64 32, i1 false)
  %i.ke = load i32, ptr %i.jx, align 8, !tbaa !320
  %i.kf = add i32 %i.ke, 1
  store i32 %i.kf, ptr %i.jx, align 8, !tbaa !320
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #8
  br label %_ZL9CC_X86_32jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit

.critedge6.i:                                     ; preds = %bb.b, %bb.b, %.thread114.i, %.thread114.i
  %i.kg = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !301
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 24
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !302
  %i.kk = and i32 %i.kj, 65536
  %.not.i.i = icmp eq i32 %i.kk, 0
  br i1 %.not.i.i, label %_ZN4llvm7CCState11AllocateRegEt.exit.i, label %_ZN4llvm7CCState11AllocateRegEt.exit.thread133.i

_ZN4llvm7CCState11AllocateRegEt.exit.i:           ; preds = %.critedge6.i
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext 208) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #8
  %i.kl = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i8 0, ptr %i.kl, align 8, !tbaa !305, !alias.scope !391
  %i.km = getelementptr inbounds nuw i8, ptr %29, i64 16
  store i32 %0, ptr %i.km, align 8, !tbaa !316, !alias.scope !391
  %i.kn = getelementptr inbounds nuw i8, ptr %29, i64 20 ; 2 uses
  %i.ko = load i8, ptr %i.kn, align 4, !alias.scope !391
  %i.kp = and i8 %i.ko, -128
  %i.kq = trunc i32 %3 to i8
  %i.kr = shl i8 %i.kq, 1
  %i.ks = and i8 %i.kr, 126
  %i.kt = or disjoint i8 %i.kp, %i.ks
  store i8 %i.kt, ptr %i.kn, align 4, !alias.scope !391
  %i.ku = getelementptr inbounds nuw i8, ptr %29, i64 22
  store i16 %1, ptr %i.ku, align 2, !tbaa !317, !alias.scope !391
  %i.kv = getelementptr inbounds nuw i8, ptr %29, i64 24
  store i16 %2, ptr %i.kv, align 8, !tbaa !317, !alias.scope !391
  store i32 208, ptr %29, align 8, !tbaa !302, !alias.scope !391
  call void @_ZN4llvm7CCState6addLocERKNS_11CCValAssignE(ptr noundef nonnull align 8 dereferenceable(420) %7, ptr noundef nonnull align 8 dereferenceable(26) %29)
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #8
  br label %_ZL9CC_X86_32jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit

_ZN4llvm7CCState11AllocateRegEt.exit.thread133.i: ; preds = %bb.b, %.thread103.i, %bb.aa, %.critedge6.i, %bb.aw, %.thread120.i, %.thread114.i
  %i.kw = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !40, !nonnull !300, !align !319
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 16
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !156, !nonnull !300, !align !319 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 522
  %i.lb = load i8, ptr %i.la, align 2, !tbaa !298, !range !299, !noundef !300 ; 2 uses
  %i.lc = trunc nuw i8 %i.lb to i1
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kz, i64 676
  %i.le = load i32, ptr %i.ld, align 4
  %i.lf = icmp eq i32 %i.le, 15
  %i.lg = select i1 %i.lc, i1 %i.lf, i1 false
  br i1 %i.lg, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit.thread133.i
  %i.lh = tail call fastcc noundef zeroext i1 @_ZL14CC_X86_Win64_CjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(420) %7)
  br i1 %i.lh, label %._crit_edge.i, label %_ZL9CC_X86_32jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit

._crit_edge.i:                                    ; preds = %bb.ba
  %.pre166.i = load ptr, ptr %i.kw, align 8, !tbaa !40
  %.phi.trans.insert167.i = getelementptr inbounds nuw i8, ptr %.pre166.i, i64 16
  %.pre168.i = load ptr, ptr %.phi.trans.insert167.i, align 8, !tbaa !156
  %.phi.trans.insert169.i = getelementptr inbounds nuw i8, ptr %.pre168.i, i64 522
  %.pre170.i = load i8, ptr %.phi.trans.insert169.i, align 2, !tbaa !298, !range !299
  br label %bb.bb

bb.bb:                                            ; preds = %._crit_edge.i, %_ZN4llvm7CCState11AllocateRegEt.exit.thread133.i
  %i.li = phi i8 [ %.pre170.i, %._crit_edge.i ], [ %i.lb, %_ZN4llvm7CCState11AllocateRegEt.exit.thread133.i ]
  %i.lj = trunc nuw i8 %i.li to i1
  br i1 %i.lj, label %bb.bc, label %_ZL15CC_Intel_OCL_BIjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit

bb.bc:                                            ; preds = %bb.bb
  %i.lk = tail call fastcc noundef zeroext i1 @_ZL11CC_X86_64_CjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i64 %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(420) %7)
  br i1 %i.lk, label %_ZL15CC_Intel_OCL_BIjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit, label %_ZL9CC_X86_32jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit

_ZL15CC_Intel_OCL_BIjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit: ; preds = %bb.bb, %bb.bc
  %i.ll = tail call fastcc noundef zeroext i1 @_ZL11CC_X86_32_CjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i64 %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(420) %7)
  br i1 %i.ll, label %bb.bd, label %_ZL9CC_X86_32jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit

bb.bd:                                            ; preds = %_ZL15CC_Intel_OCL_BIjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit, %bb.a
  %i.lm = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !40, !nonnull !300, !align !319
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !156, !nonnull !300, !align !319
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 522
  %i.lr = load i8, ptr %i.lq, align 2, !tbaa !298, !range !299, !noundef !300
  %i.ls = trunc nuw i8 %i.lr to i1
  br i1 %i.ls, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.lt = tail call fastcc noundef zeroext i1 @_ZL9CC_X86_64jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i64 %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(420) %7)
  br i1 %i.lt, label %bb.bf, label %_ZL9CC_X86_32jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.lu = load i32, ptr %7, align 8, !tbaa !39    ; 2 uses
  %i.lv = icmp eq i32 %i.lu, 83
  br i1 %i.lv, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  tail call fastcc void @_ZL11CC_X86_IntrRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE(i32 %0, i16 %1, i16 %2, i32 %3, ptr noundef nonnull align 8 dereferenceable(420) %7)
  br label %_ZL9CC_X86_32jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit

bb.bh:                                            ; preds = %bb.bf
  %i.lw = load ptr, ptr %i.lm, align 8, !tbaa !40, !nonnull !300, !align !319
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !156, !nonnull !300, !align !319
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 676
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !327
  %i.mb = icmp eq i32 %i.ma, 25
  br i1 %i.mb, label %bb.bi, label %bb.cj

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  %i.mc = and i64 %4, 32
  %.not31.i.i = icmp eq i64 %i.mc, 0
  br i1 %.not31.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  store i64 %4, ptr %20, align 8, !tbaa !325
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %5, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !tbaa !302
  tail call void @_ZN4llvm7CCState11HandleByValEjNS_3MVTES1_NS_11CCValAssign7LocInfoEiNS_5AlignENS_3ISD10ArgFlagsTyE(ptr noundef nonnull align 8 dereferenceable(420) %7, i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i32 noundef 4, i8 2, ptr noundef nonnull byval(%"struct.llvm::ISD::ArgFlagsTy") align 8 %20) #8
  br label %_ZL13CC_X86_32_MCUjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit.thread.i

bb.bk:                                            ; preds = %bb.bi
  switch i16 %2, label %bb.bm [
    i16 2, label %.critedge.i.i
    i16 5, label %.critedge.i.i
    i16 6, label %.critedge.i.i
    i16 19, label %.critedge.i.i
  ]

.critedge.i.i:                                    ; preds = %bb.bk, %bb.bk, %bb.bk, %bb.bk
  %i.md = and i64 %4, 2
  %.not32.i.i = icmp eq i64 %i.md, 0
  br i1 %.not32.i.i, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %.critedge.i.i
  %i.me = trunc i64 %4 to i1
  %spec.select.i.i = select i1 %i.me, i32 2, i32 3
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %.critedge.i.i, %bb.bk
  %.029.i.i = phi i32 [ %3, %bb.bk ], [ 1, %.critedge.i.i ], [ %spec.select.i.i, %bb.bl ] ; 3 uses
  %.sroa.017.0.i.i = phi i16 [ %2, %bb.bk ], [ 7, %.critedge.i.i ], [ 7, %bb.bl ] ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.mg = load i8, ptr %i.mf, align 4, !tbaa !328, !range !299, !noundef !300
  %i.mh = trunc nuw i8 %i.mg to i1
  %i.mi = icmp ne i16 %.sroa.017.0.i.i, 7
  %or.cond.not.i.i = select i1 %i.mh, i1 true, i1 %i.mi
  br i1 %or.cond.not.i.i, label %_ZL13CC_X86_32_MCUjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.mj = getelementptr inbounds nuw i8, ptr %7, i64 144 ; 3 uses
  %i.mk = and i64 %4, 512
  %i.ml = icmp eq i64 %i.mk, 0
  %i.mm = getelementptr inbounds nuw i8, ptr %7, i64 152 ; 5 uses
  %i.mn = load i32, ptr %i.mm, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.mn, 0
  %or.cond.i.i.i = select i1 %i.ml, i1 %.not.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %.thread.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #8
  %i.mo = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.mp = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i32 %0, ptr %i.mp, align 8, !tbaa !316, !alias.scope !392
  %i.mq = getelementptr inbounds nuw i8, ptr %18, i64 20 ; 2 uses
  %i.mr = load i8, ptr %i.mq, align 4, !alias.scope !392
  %i.ms = and i8 %i.mr, -128
  %i.mt = trunc i32 %.029.i.i to i8
  %i.mu = shl i8 %i.mt, 1
  %i.mv = and i8 %i.mu, 126
  %i.mw = or disjoint i8 %i.ms, %i.mv
  store i8 %i.mw, ptr %i.mq, align 4, !alias.scope !392
  %i.mx = getelementptr inbounds nuw i8, ptr %18, i64 22
  store i16 %1, ptr %i.mx, align 2, !tbaa !317, !alias.scope !392
  %i.my = getelementptr inbounds nuw i8, ptr %18, i64 24
  store i16 7, ptr %i.my, align 8, !tbaa !317, !alias.scope !392
  store i8 2, ptr %i.mo, align 8, !tbaa !305, !alias.scope !392
  store i32 0, ptr %18, align 8, !tbaa !302, !alias.scope !392
  %i.mz = getelementptr inbounds nuw i8, ptr %7, i64 156
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !321
  %.not.i47.i.i.i = icmp ult i32 %i.mn, %i.na
  br i1 %.not.i47.i.i.i, label %bb.bq, label %bb.bp, !prof !322

bb.bp:                                            ; preds = %bb.bo
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.mj, ptr noundef nonnull align 8 dereferenceable(26) %18)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE9push_backERKS1_.exit.i.i.i

bb.bq:                                            ; preds = %bb.bo
  %i.nb = zext i32 %i.mn to i64
  %i.nc = load ptr, ptr %i.mj, align 8, !tbaa !301
  %i.nd = getelementptr inbounds nuw [32 x i8], ptr %i.nc, i64 %i.nb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.nd, ptr noundef nonnull align 8 dereferenceable(32) %18, i64 32, i1 false)
  %i.ne = load i32, ptr %i.mm, align 8, !tbaa !320
  %i.nf = add i32 %i.ne, 1
  store i32 %i.nf, ptr %i.mm, align 8, !tbaa !320
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE9push_backERKS1_.exit.i.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE9push_backERKS1_.exit.i.i.i: ; preds = %bb.bq, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #8
  %i.ng = and i64 %4, 4096
  %.not18.i.i.i = icmp eq i64 %i.ng, 0
  br i1 %.not18.i.i.i, label %_ZL13CC_X86_32_MCUjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit.thread.i, label %bb.br

bb.br:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE9push_backERKS1_.exit.i.i.i
  %.pre.i.i.i = load i32, ptr %i.mm, align 8, !tbaa !320 ; 3 uses
  %.not.i48.i.i.i = icmp eq i32 %.pre.i.i.i, 0
  br i1 %.not.i48.i.i.i, label %.thread.i.i.i, label %bb.bx

.thread.i.i.i:                                    ; preds = %bb.br, %bb.bn
  %i.nh = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !301
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !302 ; 3 uses
  %i.nk = and i32 %i.nj, 4194304
  %.not.i.i.i.i.i = icmp eq i32 %i.nk, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %.thread.i.i.i
  %i.nl = and i32 %i.nj, 134217728
  %.not.i.i.1.i.i.i = icmp eq i32 %i.nl, 0
  br i1 %.not.i.i.1.i.i.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.nm = and i32 %i.nj, 33554432
  %.not.i.i.2.i.i.i = icmp eq i32 %i.nm, 0
  br i1 %.not.i.i.2.i.i.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i.i.i, label %_ZL13CC_X86_32_MCUjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit.i

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i.i.i: ; preds = %bb.bt, %bb.bs, %.thread.i.i.i
  %.0613.i.i.lcssa.wide.i.i.i = phi i64 [ 0, %.thread.i.i.i ], [ 1, %bb.bs ], [ 2, %bb.bt ]
  %i.nn = getelementptr inbounds nuw [2 x i8], ptr @_ZZL14RetCC_X86_32_CjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList3, i64 %.0613.i.i.lcssa.wide.i.i.i
  %i.no = load i16, ptr %i.nn, align 2, !tbaa !303 ; 2 uses
  call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.no) #8
  %i.np = zext i16 %i.no to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #8
  %i.nq = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i8 0, ptr %i.nq, align 8, !tbaa !305, !alias.scope !393
  %i.nr = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i32 %0, ptr %i.nr, align 8, !tbaa !316, !alias.scope !393
  %i.ns = getelementptr inbounds nuw i8, ptr %19, i64 20 ; 2 uses
  %i.nt = load i8, ptr %i.ns, align 4, !alias.scope !393
  %i.nu = and i8 %i.nt, -128
  %i.nv = trunc i32 %.029.i.i to i8
  %i.nw = shl i8 %i.nv, 1
  %i.nx = and i8 %i.nw, 126
  %i.ny = or disjoint i8 %i.nu, %i.nx
  store i8 %i.ny, ptr %i.ns, align 4, !alias.scope !393
  %i.nz = getelementptr inbounds nuw i8, ptr %19, i64 22
  store i16 %1, ptr %i.nz, align 2, !tbaa !317, !alias.scope !393
  %i.oa = getelementptr inbounds nuw i8, ptr %19, i64 24
  store i16 7, ptr %i.oa, align 8, !tbaa !317, !alias.scope !393
  store i32 %i.np, ptr %19, align 8, !tbaa !302, !alias.scope !393
  %i.ob = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !318, !nonnull !300, !align !319 ; 4 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 8 ; 3 uses
  %i.oe = load i32, ptr %i.od, align 8, !tbaa !320 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oc, i64 12
  %i.og = load i32, ptr %i.of, align 4, !tbaa !321
  %.not.i.i49.i.i.i = icmp ult i32 %i.oe, %i.og
  br i1 %.not.i.i49.i.i.i, label %bb.bv, label %bb.bu, !prof !322

bb.bu:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.oc, ptr noundef nonnull align 8 dereferenceable(26) %19)
  br label %bb.bw

bb.bv:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i.i.i
  %i.oh = zext i32 %i.oe to i64
  %i.oi = load ptr, ptr %i.oc, align 8, !tbaa !301
  %i.oj = getelementptr inbounds nuw [32 x i8], ptr %i.oi, i64 %i.oh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.oj, ptr noundef nonnull align 8 dereferenceable(32) %19, i64 32, i1 false)
  %i.ok = load i32, ptr %i.od, align 8, !tbaa !320
  %i.ol = add i32 %i.ok, 1
  store i32 %i.ol, ptr %i.od, align 8, !tbaa !320
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #8
  br label %_ZL13CC_X86_32_MCUjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit.thread.i

bb.bx:                                            ; preds = %bb.br
  %i.om = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !301
  %i.oo = load i32, ptr %i.on, align 4, !tbaa !302 ; 3 uses
  %i.op = and i32 %i.oo, 4194304
  %.not.i50.i.i.i = icmp eq i32 %i.op, 0
  br i1 %.not.i50.i.i.i, label %.lr.ph.i.i.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.oq = and i32 %i.oo, 134217728
  %.not.i50.1.i.i.i = icmp eq i32 %i.oq, 0
  br i1 %.not.i50.1.i.i.i, label %.lr.ph.i.i.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.or = and i32 %i.oo, 33554432
  %.not.i50.2.i.i.i = icmp eq i32 %i.or, 0
  %spec.select.i.i.i = select i1 %.not.i50.2.i.i.i, i32 2, i32 3
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bz, %bb.by, %bb.bx
  %.1.i.i.i.i = phi i32 [ 0, %bb.bx ], [ %spec.select.i.i.i, %bb.bz ], [ 1, %bb.by ] ; 2 uses
  %i.os = zext i32 %.pre.i.i.i to i64
  %i.ot = load ptr, ptr %i.mj, align 8, !tbaa !301 ; 3 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.os, 5
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 %.idx.i.i.i ; 2 uses
  %i.ov = xor i32 %.1.i.i.i.i, 3
  %.sroa.speculated.i.i.i = call i32 @llvm.umin.i32(i32 %i.ov, i32 2)
  %.not.i.i.i37 = icmp ugt i32 %.pre.i.i.i, %.sroa.speculated.i.i.i
  %i.ow = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ox = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  br i1 %.not.i.i.i37, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.preheader.i.i.i

.lr.ph.split.preheader.i.i.i:                     ; preds = %.lr.ph.i.i.i
  %i.pa = zext nneg i32 %.1.i.i.i.i to i64
  br label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i, %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit53.us.i.i.i
  %.04122.us.i.i.i = phi ptr [ %i.px, %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit53.us.i.i.i ], [ %i.ot, %.lr.ph.i.i.i ] ; 5 uses
  %i.pb = load i8, ptr %i.ow, align 8, !tbaa !323, !range !299, !noundef !300
  %i.pc = trunc nuw i8 %i.pb to i1
  %i.pd = load i64, ptr %i.ox, align 8, !tbaa !324 ; 2 uses
  br i1 %i.pc, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %.lr.ph.split.us.i.i.i
  %i.pe = add i64 %i.pd, 3
  %i.pf = and i64 %i.pe, -4                       ; 2 uses
  %i.pg = add nsw i64 %i.pf, 4
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit.us.i.i.i

bb.cb:                                            ; preds = %.lr.ph.split.us.i.i.i
  %i.ph = add i64 %i.pd, 7
  %i.pi = and i64 %i.ph, -4                       ; 2 uses
  %i.pj = sub i64 0, %i.pi
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit.us.i.i.i

_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit.us.i.i.i: ; preds = %bb.cb, %bb.ca
  %.sink.i.i.i = phi i64 [ %i.pi, %bb.cb ], [ %i.pg, %bb.ca ]
  %.0.i.us.i.i.i = phi i64 [ %i.pj, %bb.cb ], [ %i.pf, %bb.ca ]
  store i64 %.sink.i.i.i, ptr %i.ox, align 8, !tbaa !324
  %.sroa.0.0.copyload.i.i.us.i.i.i = load i8, ptr %i.oy, align 8, !tbaa !325
  %.sroa.speculated.i.us.i.i.i = call i8 @llvm.umax.i8(i8 %.sroa.0.0.copyload.i.i.us.i.i.i, i8 2)
  store i8 %.sroa.speculated.i.us.i.i.i, ptr %i.oy, align 8, !tbaa !325
  call void @_ZN4llvm7CCState18ensureMaxAlignmentENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %7, i8 2) #8
  %i.pk = getelementptr inbounds nuw i8, ptr %.04122.us.i.i.i, i64 8 ; 2 uses
  %i.pl = load i8, ptr %i.pk, align 8, !tbaa !305
  %i.pm = icmp eq i8 %i.pl, 1
  br i1 %i.pm, label %_ZN4llvm11CCValAssign12convertToMemEl.exit.us.i.i.i, label %bb.cc

end_hunk_0
begin_hunk_1_@_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE:bb.a
bb.c:                                             ; preds = %bb.b
  %i.n = add i32 %.0613.i, 1                      ; 2 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = icmp ugt i64 %2, %i.o
  br i1 %i.p, label %bb.b, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.thread, !llvm.loop !0

_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit: ; preds = %bb.b
  %i.q = zext i32 %.0613.i to i64                 ; 2 uses
  %i.r = icmp eq i64 %2, %i.q
  br i1 %i.r, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.q
  %i.t = load i16, ptr %i.s, align 2, !tbaa !303  ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %0, i16 noundef zeroext %i.t) #8
  %i.u = zext i16 %i.t to i32
  br label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.thread

_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.thread: ; preds = %bb.c, %bb.a, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit, %bb.d
  %.sroa.04.0 = phi i32 [ %i.u, %bb.d ], [ 0, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit ], [ 0, %bb.a ], [ 0, %bb.c ]
  ret i32 %.sroa.04.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm7CCState6addLocERKNS_11CCValAssignE(ptr noundef nonnull align 8 dereferenceable(420) %0, ptr noundef nonnull align 8 dereferenceable(26) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !318, !nonnull !300, !align !319 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !320  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !321
  %.not.i = icmp ult i32 %i.d, %i.f
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !322

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(26) %1)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = zext i32 %i.d to i64
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !301
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.j = load i32, ptr %i.c, align 8, !tbaa !320
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.c, align 8, !tbaa !320
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE9push_backERKS1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE9push_backERKS1_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4llvm7CCState13AllocateStackEjNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %0, i32 noundef %1, i8 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8, !tbaa !323, !range !299, !noundef !300
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !324  ; 2 uses
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
  store i64 %i.m, ptr %i.d, align 8, !tbaa !324
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
  store i64 %i.v, ptr %i.d, align 8, !tbaa !324
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.n, %bb.b ], [ %i.t, %bb.c ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.0.0.copyload.i = load i8, ptr %i.w, align 8, !tbaa !325
  %.sroa.speculated = tail call i8 @llvm.umax.i8(i8 %2, i8 %.sroa.0.0.copyload.i)
  store i8 %.sroa.speculated, ptr %i.w, align 8, !tbaa !325
  tail call void @_ZN4llvm7CCState18ensureMaxAlignmentENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %0, i8 %2) #8
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL14CC_X86_Win64_CjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(420) %5) unnamed_addr #0 {
bb.a:
  %6 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %7 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %8 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %9 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %10 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %11 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %12 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %13 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %14 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %15 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %16 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %17 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %i.a = and i64 %4, 32
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %.thread164

bb.b:                                             ; preds = %bb.a
  switch i16 %2, label %.thread164 [
    i16 2, label %.critedge
    i16 19, label %.critedge
  ]

.critedge:                                        ; preds = %bb.b, %bb.b
  %i.b = and i64 %4, 2
  %.not388 = icmp eq i64 %i.b, 0
  br i1 %.not388, label %bb.c, label %.thread164

bb.c:                                             ; preds = %.critedge
  %i.c = trunc i64 %4 to i1
  %. = select i1 %i.c, i32 2, i32 3
  br label %.thread164

.thread164:                                       ; preds = %bb.b, %bb.a, %bb.c, %.critedge
  %.sroa.0100.1 = phi i16 [ 5, %.critedge ], [ 5, %bb.c ], [ %2, %bb.b ], [ 8, %bb.a ] ; 8 uses
  %.1120 = phi i32 [ 1, %.critedge ], [ %., %bb.c ], [ %3, %bb.b ], [ 11, %bb.a ] ; 13 uses
  %i.d = and i64 %4, 128
  %.not389 = icmp eq i64 %i.d, 0
  br i1 %.not389, label %_ZN4llvm7CCState11AllocateRegEt.exit.thread172, label %bb.d

bb.d:                                             ; preds = %.thread164
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !301
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !302
  %i.i = and i32 %i.h, 33554432
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.e, label %_ZN4llvm7CCState11AllocateRegEt.exit.thread172

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %5, i16 noundef zeroext 121) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 0, ptr %i.j, align 8, !tbaa !305, !alias.scope !775
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %0, ptr %i.k, align 8, !tbaa !316, !alias.scope !775
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 2 uses
  %i.m = load i8, ptr %i.l, align 4, !alias.scope !775
  %i.n = and i8 %i.m, -128
  %i.o = trunc i32 %.1120 to i8
  %i.p = shl i8 %i.o, 1
  %i.q = and i8 %i.p, 126
  %i.r = or disjoint i8 %i.n, %i.q
  store i8 %i.r, ptr %i.l, align 4, !alias.scope !775
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 22
  store i16 %1, ptr %i.s, align 2, !tbaa !317, !alias.scope !775
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i16 %.sroa.0100.1, ptr %i.t, align 8, !tbaa !317, !alias.scope !775
  store i32 121, ptr %6, align 8, !tbaa !302, !alias.scope !775
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !318, !nonnull !300, !align !319 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !320  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !321
  %.not.i.i = icmp ult i32 %i.x, %i.z
  br i1 %.not.i.i, label %bb.g, label %bb.f, !prof !322

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(26) %6)
  br label %_ZN4llvm7CCState11AllocateRegEt.exit

bb.g:                                             ; preds = %bb.e
  %i.aa = zext i32 %i.x to i64
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !301
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.ab, i64 %i.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  %i.ad = load i32, ptr %i.w, align 8, !tbaa !320
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr %i.w, align 8, !tbaa !320
  br label %_ZN4llvm7CCState11AllocateRegEt.exit

_ZN4llvm7CCState11AllocateRegEt.exit:             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %bb.bf

_ZN4llvm7CCState11AllocateRegEt.exit.thread172:   ; preds = %bb.d, %.thread164
  %i.af = and i64 %4, 32768
  %i.ag = icmp ne i64 %i.af, 0
  %i.ah = icmp eq i16 %.sroa.0100.1, 8            ; 3 uses
  %or.cond = select i1 %i.ag, i1 %i.ah, i1 false
  br i1 %or.cond, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit.thread172
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !301
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !302 ; 2 uses
  %i.am = and i32 %i.al, 134217728
  %.not.i149 = icmp eq i32 %i.am, 0
  br i1 %.not.i149, label %bb.i, label %.thread181

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %5, i16 noundef zeroext 123) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i8 0, ptr %i.an, align 8, !tbaa !305, !alias.scope !776
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %0, ptr %i.ao, align 8, !tbaa !316, !alias.scope !776
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 4, !alias.scope !776
  %i.ar = and i8 %i.aq, -128
  %i.as = trunc i32 %.1120 to i8
  %i.at = shl i8 %i.as, 1
  %i.au = and i8 %i.at, 126
  %i.av = or disjoint i8 %i.ar, %i.au
  store i8 %i.av, ptr %i.ap, align 4, !alias.scope !776
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 22
  store i16 %1, ptr %i.aw, align 2, !tbaa !317, !alias.scope !776
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i16 8, ptr %i.ax, align 8, !tbaa !317, !alias.scope !776
  store i32 123, ptr %7, align 8, !tbaa !302, !alias.scope !776
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !318, !nonnull !300, !align !319 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 3 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !320 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !321
  %.not.i.i152 = icmp ult i32 %i.bb, %i.bd
  br i1 %.not.i.i152, label %bb.k, label %bb.j, !prof !322

bb.j:                                             ; preds = %bb.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(26) %7)
  br label %_ZN4llvm7CCState11AllocateRegEt.exit151

bb.k:                                             ; preds = %bb.i
  %i.be = zext i32 %i.bb to i64
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !301
  %i.bg = getelementptr inbounds nuw [32 x i8], ptr %i.bf, i64 %i.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bg, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false)
  %i.bh = load i32, ptr %i.ba, align 8, !tbaa !320
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr %i.ba, align 8, !tbaa !320
  br label %_ZN4llvm7CCState11AllocateRegEt.exit151

_ZN4llvm7CCState11AllocateRegEt.exit151:          ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  br label %bb.bf

bb.l:                                             ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit.thread172
  %i.bj = and i64 %4, 8192
  %i.bk = icmp ne i64 %i.bj, 0
  %or.cond379 = select i1 %i.bk, i1 %i.ah, i1 false
  br i1 %or.cond379, label %..thread182_crit_edge, label %_ZN4llvm7CCState11AllocateRegEt.exit156.thread188

..thread182_crit_edge:                            ; preds = %bb.l
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 64
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !301
  %.phi.trans.insert406 = getelementptr inbounds nuw i8, ptr %.pre, i64 12
  %.pre407 = load i32, ptr %.phi.trans.insert406, align 4, !tbaa !302
  br label %.thread182

.thread181:                                       ; preds = %bb.h
  %i.bl = and i64 %4, 8192
  %.not390 = icmp eq i64 %i.bl, 0
  br i1 %.not390, label %_ZN4llvm7CCState11AllocateRegEt.exit156.thread188, label %.thread182

.thread182:                                       ; preds = %..thread182_crit_edge, %.thread181
  %i.bm = phi i32 [ %.pre407, %..thread182_crit_edge ], [ %i.al, %.thread181 ]
  %i.bn = and i32 %i.bm, 268435456
  %.not.i154 = icmp eq i32 %i.bn, 0
  br i1 %.not.i154, label %bb.m, label %_ZN4llvm7CCState11AllocateRegEt.exit156.thread188

bb.m:                                             ; preds = %.thread182
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %5, i16 noundef zeroext 124) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i8 0, ptr %i.bo, align 8, !tbaa !305, !alias.scope !777
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %0, ptr %i.bp, align 8, !tbaa !316, !alias.scope !777
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 4, !alias.scope !777
  %i.bs = and i8 %i.br, -128
  %i.bt = trunc i32 %.1120 to i8
  %i.bu = shl i8 %i.bt, 1
  %i.bv = and i8 %i.bu, 126
  %i.bw = or disjoint i8 %i.bs, %i.bv
  store i8 %i.bw, ptr %i.bq, align 4, !alias.scope !777
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 22
  store i16 %1, ptr %i.bx, align 2, !tbaa !317, !alias.scope !777
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i16 %.sroa.0100.1, ptr %i.by, align 8, !tbaa !317, !alias.scope !777
  store i32 124, ptr %8, align 8, !tbaa !302, !alias.scope !777
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !318, !nonnull !300, !align !319 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 3 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !320 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !321
  %.not.i.i157 = icmp ult i32 %i.cc, %i.ce
  br i1 %.not.i.i157, label %bb.o, label %bb.n, !prof !322

bb.n:                                             ; preds = %bb.m
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull align 8 dereferenceable(26) %8)
  br label %_ZN4llvm7CCState11AllocateRegEt.exit156

bb.o:                                             ; preds = %bb.m
  %i.cf = zext i32 %i.cc to i64
  %i.cg = load ptr, ptr %i.ca, align 8, !tbaa !301
  %i.ch = getelementptr inbounds nuw [32 x i8], ptr %i.cg, i64 %i.cf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ch, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false)
  %i.ci = load i32, ptr %i.cb, align 8, !tbaa !320
  %i.cj = add i32 %i.ci, 1
  store i32 %i.cj, ptr %i.cb, align 8, !tbaa !320
  br label %_ZN4llvm7CCState11AllocateRegEt.exit156

_ZN4llvm7CCState11AllocateRegEt.exit156:          ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  br label %bb.bf

_ZN4llvm7CCState11AllocateRegEt.exit156.thread188: ; preds = %.thread182, %.thread181, %bb.l
  %i.ck = and i64 %4, 16384
  %i.cl = icmp ne i64 %i.ck, 0
  %or.cond380 = select i1 %i.cl, i1 %i.ah, i1 false
  br i1 %or.cond380, label %bb.p, label %_ZN4llvm7CCState11AllocateRegEt.exit161.thread195

bb.p:                                             ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit156.thread188
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !301
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 12
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !302
  %i.cq = and i32 %i.cp, 536870912
  %.not.i159 = icmp eq i32 %i.cq, 0
  br i1 %.not.i159, label %bb.q, label %_ZN4llvm7CCState11AllocateRegEt.exit161.thread195

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %5, i16 noundef zeroext 125) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  %i.cr = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i8 0, ptr %i.cr, align 8, !tbaa !305, !alias.scope !778
  %i.cs = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 %0, ptr %i.cs, align 8, !tbaa !316, !alias.scope !778
  %i.ct = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 4, !alias.scope !778
  %i.cv = and i8 %i.cu, -128
  %i.cw = trunc i32 %.1120 to i8
  %i.cx = shl i8 %i.cw, 1
  %i.cy = and i8 %i.cx, 126
  %i.cz = or disjoint i8 %i.cv, %i.cy
  store i8 %i.cz, ptr %i.ct, align 4, !alias.scope !778
  %i.da = getelementptr inbounds nuw i8, ptr %9, i64 22
  store i16 %1, ptr %i.da, align 2, !tbaa !317, !alias.scope !778
  %i.db = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i16 8, ptr %i.db, align 8, !tbaa !317, !alias.scope !778
  store i32 125, ptr %9, align 8, !tbaa !302, !alias.scope !778
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !318, !nonnull !300, !align !319 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 3 uses
  %i.df = load i32, ptr %i.de, align 8, !tbaa !320 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 12
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !321
  %.not.i.i162 = icmp ult i32 %i.df, %i.dh
  br i1 %.not.i.i162, label %bb.s, label %bb.r, !prof !322

bb.r:                                             ; preds = %bb.q
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.dd, ptr noundef nonnull align 8 dereferenceable(26) %9)
  br label %_ZN4llvm7CCState11AllocateRegEt.exit161

bb.s:                                             ; preds = %bb.q
  %i.di = zext i32 %i.df to i64
  %i.dj = load ptr, ptr %i.dd, align 8, !tbaa !301
  %i.dk = getelementptr inbounds nuw [32 x i8], ptr %i.dj, i64 %i.di
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.dk, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false)
  %i.dl = load i32, ptr %i.de, align 8, !tbaa !320
  %i.dm = add i32 %i.dl, 1
  store i32 %i.dm, ptr %i.de, align 8, !tbaa !320
  br label %_ZN4llvm7CCState11AllocateRegEt.exit161

_ZN4llvm7CCState11AllocateRegEt.exit161:          ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  br label %bb.bf

_ZN4llvm7CCState11AllocateRegEt.exit161.thread195: ; preds = %bb.p, %_ZN4llvm7CCState11AllocateRegEt.exit156.thread188
  %i.dn = and i64 %4, 65536
  %.not391 = icmp eq i64 %i.dn, 0
  br i1 %.not391, label %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202, label %bb.t

bb.t:                                             ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit161.thread195
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !301
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !302
  %i.ds = and i32 %i.dr, 524288
  %.not.i164 = icmp eq i32 %i.ds, 0
  br i1 %.not.i164, label %bb.u, label %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202

bb.u:                                             ; preds = %bb.t
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %5, i16 noundef zeroext 51) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  %i.dt = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i8 0, ptr %i.dt, align 8, !tbaa !305, !alias.scope !779
  %i.du = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 %0, ptr %i.du, align 8, !tbaa !316, !alias.scope !779
  %i.dv = getelementptr inbounds nuw i8, ptr %10, i64 20 ; 2 uses
  %i.dw = load i8, ptr %i.dv, align 4, !alias.scope !779
  %i.dx = and i8 %i.dw, -128
  %i.dy = trunc i32 %.1120 to i8
  %i.dz = shl i8 %i.dy, 1
  %i.ea = and i8 %i.dz, 126
  %i.eb = or disjoint i8 %i.dx, %i.ea
  store i8 %i.eb, ptr %i.dv, align 4, !alias.scope !779
  %i.ec = getelementptr inbounds nuw i8, ptr %10, i64 22
  store i16 %1, ptr %i.ec, align 2, !tbaa !317, !alias.scope !779
  %i.ed = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i16 %.sroa.0100.1, ptr %i.ed, align 8, !tbaa !317, !alias.scope !779
  store i32 51, ptr %10, align 8, !tbaa !302, !alias.scope !779
  %i.ee = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !318, !nonnull !300, !align !319 ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 3 uses
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !320 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 12
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !321
  %.not.i.i167 = icmp ult i32 %i.eh, %i.ej
  br i1 %.not.i.i167, label %bb.w, label %bb.v, !prof !322

bb.v:                                             ; preds = %bb.u
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ef, ptr noundef nonnull align 8 dereferenceable(26) %10)
  br label %_ZN4llvm7CCState11AllocateRegEt.exit166

bb.w:                                             ; preds = %bb.u
  %i.ek = zext i32 %i.eh to i64
  %i.el = load ptr, ptr %i.ef, align 8, !tbaa !301
  %i.em = getelementptr inbounds nuw [32 x i8], ptr %i.el, i64 %i.ek
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.em, ptr noundef nonnull align 8 dereferenceable(32) %10, i64 32, i1 false)
  %i.en = load i32, ptr %i.eg, align 8, !tbaa !320
  %i.eo = add i32 %i.en, 1
  store i32 %i.eo, ptr %i.eg, align 8, !tbaa !320
  br label %_ZN4llvm7CCState11AllocateRegEt.exit166

_ZN4llvm7CCState11AllocateRegEt.exit166:          ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  br label %bb.bf

_ZN4llvm7CCState11AllocateRegEt.exit166.thread202: ; preds = %bb.t, %_ZN4llvm7CCState11AllocateRegEt.exit161.thread195
  switch i16 %.sroa.0100.1, label %.thread342.fold.split [
    i16 48, label %.thread342
    i16 62, label %.thread342
    i16 73, label %.thread342
    i16 94, label %.thread342
    i16 112, label %.thread342
    i16 124, label %.thread342
    i16 136, label %.thread342
    i16 154, label %.thread342
    i16 49, label %.thread342
    i16 63, label %.thread342
    i16 77, label %.thread342
    i16 96, label %.thread342
    i16 113, label %.thread342
    i16 125, label %.thread342
    i16 140, label %.thread342
    i16 156, label %.thread342
    i16 50, label %.thread342
    i16 64, label %.thread342
    i16 82, label %.thread342
    i16 114, label %.thread342
    i16 126, label %.thread342
    i16 145, label %.thread342
    i16 157, label %.thread342
    i16 97, label %.thread342
    i16 16, label %.thread342
    i16 17, label %.thread342
    i16 14, label %bb.x
    i16 15, label %bb.y
    i16 13, label %.critedge8
    i16 5, label %bb.af
    i16 6, label %bb.am
    i16 7, label %.thread340.thread374
  ]

bb.x:                                             ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202
  %i.ep = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !40, !nonnull !300, !align !319
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !156, !nonnull !300, !align !319
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 360
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !339
  %i.ev = icmp sgt i32 %i.eu, 0
  br i1 %i.ev, label %.critedge8, label %.thread340.thread374

bb.y:                                             ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202
  %i.ew = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !40, !nonnull !300, !align !319
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !156, !nonnull !300, !align !319
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 360
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !339
  %i.fc = icmp sgt i32 %i.fb, 0
  br i1 %i.fc, label %.critedge8, label %.thread342

.critedge8:                                       ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202, %bb.y, %bb.x
  %i.fd = phi i1 [ false, %bb.x ], [ true, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %bb.y ]
  %i.fe = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !301
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !302 ; 4 uses
  %i.fi = and i32 %i.fh, 128
  %.not.i.i169 = icmp eq i32 %i.fi, 0
  br i1 %.not.i.i169, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEEPKt.exit, label %bb.z

bb.z:                                             ; preds = %.critedge8
  %i.fj = and i32 %i.fh, 256
  %.not.i.i169.1 = icmp eq i32 %i.fj, 0
  br i1 %.not.i.i169.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEEPKt.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fk = and i32 %i.fh, 512
  %.not.i.i169.2 = icmp eq i32 %i.fk, 0
  br i1 %.not.i.i169.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEEPKt.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fl = and i32 %i.fh, 1024
  %.not.i.i169.3 = icmp eq i32 %i.fl, 0
  br i1 %.not.i.i169.3, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEEPKt.exit, label %.thread342

end_hunk_1
begin_hunk_2_@_ZL14CC_X86_Win64_CjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE:bb.a
  %i.ii = getelementptr inbounds nuw [2 x i8], ptr @_ZZL23RetCC_X86_64_VectorcalljN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList1, i64 %.0613.i.i179.lcssa.wide
  %i.ij = load i16, ptr %i.ii, align 2, !tbaa !303
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %5, i16 noundef zeroext %i.ih) #8
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %5, i16 noundef zeroext %i.ij) #8
  %i.ik = zext i16 %i.ih to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #8
  %i.il = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i8 0, ptr %i.il, align 8, !tbaa !305, !alias.scope !782
  %i.im = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 %0, ptr %i.im, align 8, !tbaa !316, !alias.scope !782
  %i.in = getelementptr inbounds nuw i8, ptr %13, i64 20 ; 2 uses
  %i.io = load i8, ptr %i.in, align 4, !alias.scope !782
  %i.ip = and i8 %i.io, -128
  %i.iq = trunc i32 %.1120 to i8
  %i.ir = shl i8 %i.iq, 1
  %i.is = and i8 %i.ir, 126
  %i.it = or disjoint i8 %i.ip, %i.is
  store i8 %i.it, ptr %i.in, align 4, !alias.scope !782
  %i.iu = getelementptr inbounds nuw i8, ptr %13, i64 22
  store i16 %1, ptr %i.iu, align 2, !tbaa !317, !alias.scope !782
  %i.iv = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i16 6, ptr %i.iv, align 8, !tbaa !317, !alias.scope !782
  store i32 %i.ik, ptr %13, align 8, !tbaa !302, !alias.scope !782
  %i.iw = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !318, !nonnull !300, !align !319 ; 4 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8 ; 3 uses
  %i.iz = load i32, ptr %i.iy, align 8, !tbaa !320 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ix, i64 12
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !321
  %.not.i.i184 = icmp ult i32 %i.iz, %i.jb
  br i1 %.not.i.i184, label %bb.ar, label %bb.aq, !prof !322

bb.aq:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEEPKt.exit183
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ix, ptr noundef nonnull align 8 dereferenceable(26) %13)
  br label %bb.as

bb.ar:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEEPKt.exit183
  %i.jc = zext i32 %i.iz to i64
  %i.jd = load ptr, ptr %i.ix, align 8, !tbaa !301
  %i.je = getelementptr inbounds nuw [32 x i8], ptr %i.jd, i64 %i.jc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.je, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 32, i1 false)
  %i.jf = load i32, ptr %i.iy, align 8, !tbaa !320
  %i.jg = add i32 %i.jf, 1
  store i32 %i.jg, ptr %i.iy, align 8, !tbaa !320
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #8
  br label %bb.bf

.thread340.thread374:                             ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202, %bb.x
  %.8127314377 = phi i32 [ %.1120, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ 7, %bb.x ] ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !301 ; 2 uses
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !302 ; 2 uses
  %i.jk = and i32 %i.jj, 33554432
  %.not.i.i187 = icmp eq i32 %i.jk, 0
  br i1 %.not.i.i187, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEEPKt.exit190, label %bb.at

bb.at:                                            ; preds = %.thread340.thread374
  %i.jl = and i32 %i.jj, 134217728
  %.not.i.i187.1 = icmp eq i32 %i.jl, 0
  br i1 %.not.i.i187.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEEPKt.exit190, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ji, i64 20
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !302 ; 2 uses
  %i.jo = and i32 %i.jn, 128
  %.not.i.i187.2 = icmp eq i32 %i.jo, 0
  br i1 %.not.i.i187.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEEPKt.exit190, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.jp = and i32 %i.jn, 256
  %.not.i.i187.3 = icmp eq i32 %i.jp, 0
  br i1 %.not.i.i187.3, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEEPKt.exit190, label %.thread353

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEEPKt.exit190: ; preds = %bb.av, %bb.au, %bb.at, %.thread340.thread374
  %.0613.i.i186.lcssa.wide = phi i64 [ 0, %.thread340.thread374 ], [ 1, %bb.at ], [ 2, %bb.au ], [ 3, %bb.av ] ; 2 uses
  %i.jq = getelementptr inbounds nuw [2 x i8], ptr @_ZZL14CC_X86_Win64_CjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList7, i64 %.0613.i.i186.lcssa.wide
  %i.jr = load i16, ptr %i.jq, align 2, !tbaa !303 ; 2 uses
  %i.js = getelementptr inbounds nuw [2 x i8], ptr @_ZZL23RetCC_X86_64_VectorcalljN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList1, i64 %.0613.i.i186.lcssa.wide
  %i.jt = load i16, ptr %i.js, align 2, !tbaa !303
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %5, i16 noundef zeroext %i.jr) #8
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %5, i16 noundef zeroext %i.jt) #8
  %i.ju = zext i16 %i.jr to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #8
  %i.jv = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i8 0, ptr %i.jv, align 8, !tbaa !305, !alias.scope !783
  %i.jw = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 %0, ptr %i.jw, align 8, !tbaa !316, !alias.scope !783
  %i.jx = getelementptr inbounds nuw i8, ptr %14, i64 20 ; 2 uses
  %i.jy = load i8, ptr %i.jx, align 4, !alias.scope !783
  %i.jz = and i8 %i.jy, -128
  %i.ka = trunc i32 %.8127314377 to i8
  %i.kb = shl i8 %i.ka, 1
  %i.kc = and i8 %i.kb, 126
  %i.kd = or disjoint i8 %i.jz, %i.kc
  store i8 %i.kd, ptr %i.jx, align 4, !alias.scope !783
  %i.ke = getelementptr inbounds nuw i8, ptr %14, i64 22
  store i16 %1, ptr %i.ke, align 2, !tbaa !317, !alias.scope !783
  %i.kf = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i16 7, ptr %i.kf, align 8, !tbaa !317, !alias.scope !783
  store i32 %i.ju, ptr %14, align 8, !tbaa !302, !alias.scope !783
  call void @_ZN4llvm7CCState6addLocERKNS_11CCValAssignE(ptr noundef nonnull align 8 dereferenceable(420) %5, ptr noundef nonnull align 8 dereferenceable(26) %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #8
  br label %bb.bf

.thread342.fold.split:                            ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202
  br label %.thread342

.thread342:                                       ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202, %.thread342.fold.split, %bb.ai, %bb.ap, %bb.ab, %bb.y
  %i.kg = phi i1 [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ true, %bb.ai ], [ false, %bb.ab ], [ false, %bb.y ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %bb.ap ], [ false, %.thread342.fold.split ] ; 3 uses
  %i.kh = phi i1 [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %bb.ai ], [ %i.fd, %bb.ab ], [ false, %bb.y ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %bb.ap ], [ false, %.thread342.fold.split ] ; 3 uses
  %i.ki = phi i1 [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %bb.ai ], [ false, %bb.ab ], [ false, %bb.y ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ true, %bb.ap ], [ false, %.thread342.fold.split ] ; 3 uses
  %.8127315 = phi i32 [ 11, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ %.1120, %bb.ai ], [ %.1120, %bb.ab ], [ 7, %bb.y ], [ 11, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ 11, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ 11, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ 11, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ 11, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ 11, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ 11, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ 11, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ 11, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ 11, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ 11, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ 11, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ 11, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ 11, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ 11, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ 11, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ 11, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ 11, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ 11, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ 11, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ 11, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ 11, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ 11, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ 11, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ 11, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ %.1120, %bb.ap ], [ %.1120, %.thread342.fold.split ] ; 5 uses
  %.sroa.0100.8306 = phi i16 [ 8, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ 5, %bb.ai ], [ %.sroa.0100.1, %bb.ab ], [ 8, %bb.y ], [ 8, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ 8, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ 8, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ 8, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ 8, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ 8, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ 8, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ 8, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ 8, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ 8, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ 8, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ 8, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ 8, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ 8, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ 8, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ 8, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ 8, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ 8, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ 8, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ 8, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ 8, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ 8, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ 8, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ 8, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ 8, %_ZN4llvm7CCState11AllocateRegEt.exit166.thread202 ], [ 6, %bb.ap ], [ %.sroa.0100.1, %.thread342.fold.split ] ; 3 uses
  %i.kj = load i32, ptr %5, align 8, !tbaa !39
  %i.kk = icmp eq i32 %i.kj, 70
  %i.kl = and i64 %4, 16
  %i.km = icmp ne i64 %i.kl, 0
  %or.cond382 = and i1 %i.km, %i.kk
  %i.kn = icmp eq i16 %.sroa.0100.8306, 8         ; 2 uses
  br i1 %or.cond382, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %.thread342
  br i1 %i.kn, label %bb.ax, label %.thread353

bb.ax:                                            ; preds = %bb.aw
  %i.ko = tail call i32 @_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEEPKt(ptr noundef nonnull align 8 dereferenceable(420) %5, ptr nonnull @_ZZL14CC_X86_Win64_CjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList9, i64 3, ptr noundef nonnull @_ZZL14CC_X86_Win64_CjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE9RegList10) ; 2 uses
  %.not147.not = icmp eq i32 %i.ko, 0
  br i1 %.not147.not, label %.thread352, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #8
  %i.kp = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i8 0, ptr %i.kp, align 8, !tbaa !305, !alias.scope !784
  %i.kq = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i32 %0, ptr %i.kq, align 8, !tbaa !316, !alias.scope !784
  %i.kr = getelementptr inbounds nuw i8, ptr %15, i64 20 ; 2 uses
  %i.ks = load i8, ptr %i.kr, align 4, !alias.scope !784
  %i.kt = and i8 %i.ks, -128
  %i.ku = trunc i32 %.8127315 to i8
  %i.kv = shl i8 %i.ku, 1
  %i.kw = and i8 %i.kv, 126
  %i.kx = or disjoint i8 %i.kt, %i.kw
  store i8 %i.kx, ptr %i.kr, align 4, !alias.scope !784
  %i.ky = getelementptr inbounds nuw i8, ptr %15, i64 22
  store i16 %1, ptr %i.ky, align 2, !tbaa !317, !alias.scope !784
  %i.kz = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i16 8, ptr %i.kz, align 8, !tbaa !317, !alias.scope !784
  store i32 %i.ko, ptr %15, align 8, !tbaa !302, !alias.scope !784
  call void @_ZN4llvm7CCState6addLocERKNS_11CCValAssignE(ptr noundef nonnull align 8 dereferenceable(420) %5, ptr noundef nonnull align 8 dereferenceable(26) %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #8
  br label %bb.bf

bb.az:                                            ; preds = %.thread342
  br i1 %i.kn, label %.thread352, label %.thread353

.thread352:                                       ; preds = %bb.ax, %bb.az
  %i.la = tail call i32 @_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEEPKt(ptr noundef nonnull align 8 dereferenceable(420) %5, ptr nonnull @_ZZL27CC_X86_64_VectorCallGetGPRsvE10RegListGPR, i64 4, ptr noundef nonnull @_ZZL23RetCC_X86_64_VectorcalljN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList1) ; 2 uses
  %.not148.not = icmp eq i32 %i.la, 0
  br i1 %.not148.not, label %.thread353, label %bb.ba

bb.ba:                                            ; preds = %.thread352
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #8
  %i.lb = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i8 0, ptr %i.lb, align 8, !tbaa !305, !alias.scope !785
  %i.lc = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i32 %0, ptr %i.lc, align 8, !tbaa !316, !alias.scope !785
  %i.ld = getelementptr inbounds nuw i8, ptr %16, i64 20 ; 2 uses
  %i.le = load i8, ptr %i.ld, align 4, !alias.scope !785
  %i.lf = and i8 %i.le, -128
  %i.lg = trunc i32 %.8127315 to i8
  %i.lh = shl i8 %i.lg, 1
  %i.li = and i8 %i.lh, 126
  %i.lj = or disjoint i8 %i.lf, %i.li
  store i8 %i.lj, ptr %i.ld, align 4, !alias.scope !785
  %i.lk = getelementptr inbounds nuw i8, ptr %16, i64 22
  store i16 %1, ptr %i.lk, align 2, !tbaa !317, !alias.scope !785
  %i.ll = getelementptr inbounds nuw i8, ptr %16, i64 24
  store i16 8, ptr %i.ll, align 8, !tbaa !317, !alias.scope !785
  store i32 %i.la, ptr %16, align 8, !tbaa !302, !alias.scope !785
  call void @_ZN4llvm7CCState6addLocERKNS_11CCValAssignE(ptr noundef nonnull align 8 dereferenceable(420) %5, ptr noundef nonnull align 8 dereferenceable(26) %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #8
  br label %bb.bf

.thread353:                                       ; preds = %bb.av, %.thread352, %bb.aw, %bb.az
  %.sroa.0100.8306429 = phi i16 [ %.sroa.0100.8306, %bb.aw ], [ %.sroa.0100.8306, %bb.az ], [ 8, %.thread352 ], [ 7, %bb.av ] ; 2 uses
  %.8127315425 = phi i32 [ %.8127315, %bb.aw ], [ %.8127315, %bb.az ], [ %.8127315, %.thread352 ], [ %.8127314377, %bb.av ]
  %i.lm = phi i1 [ %i.ki, %bb.aw ], [ %i.ki, %bb.az ], [ %i.ki, %.thread352 ], [ false, %bb.av ]
  %i.ln = phi i1 [ %i.kh, %bb.aw ], [ %i.kh, %bb.az ], [ %i.kh, %.thread352 ], [ false, %bb.av ]
  %i.lo = phi i1 [ %i.kg, %bb.aw ], [ %i.kg, %bb.az ], [ %i.kg, %.thread352 ], [ false, %bb.av ]
  %i.lp = phi i1 [ false, %bb.aw ], [ false, %bb.az ], [ false, %.thread352 ], [ true, %bb.av ]
  %i.lq = phi i1 [ false, %bb.aw ], [ false, %bb.az ], [ true, %.thread352 ], [ false, %bb.av ]
  %brmerge = or i1 %i.lo, %i.lm
  %brmerge383 = or i1 %i.lp, %brmerge
  %brmerge384 = or i1 %brmerge383, %i.lq
  %brmerge385 = or i1 %i.ln, %brmerge384
  %i.lr = and i16 %.sroa.0100.8306429, -2
  %i.ls = icmp eq i16 %i.lr, 14
  %or.cond387 = select i1 %brmerge385, i1 true, i1 %i.ls
  br i1 %or.cond387, label %.critedge10, label %bb.bf

.critedge10:                                      ; preds = %.thread353
  %i.lt = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.lu = load i8, ptr %i.lt, align 8, !tbaa !323, !range !299, !noundef !300
  %i.lv = trunc nuw i8 %i.lu to i1
  %i.lw = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.lx = load i64, ptr %i.lw, align 8, !tbaa !324 ; 2 uses
  br i1 %i.lv, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.critedge10
  %i.ly = add i64 %i.lx, 15
  %i.lz = and i64 %i.ly, -8                       ; 2 uses
  %i.ma = sub i64 0, %i.lz
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit

bb.bc:                                            ; preds = %.critedge10
  %i.mb = add i64 %i.lx, 7
  %i.mc = and i64 %i.mb, -8                       ; 2 uses
  %i.md = add nsw i64 %i.mc, 8
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit

_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit: ; preds = %bb.bb, %bb.bc
  %.sink = phi i64 [ %i.lz, %bb.bb ], [ %i.md, %bb.bc ]
  %.0.i = phi i64 [ %i.ma, %bb.bb ], [ %i.mc, %bb.bc ]
  store i64 %.sink, ptr %i.lw, align 8, !tbaa !324
  %i.me = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.me, align 8, !tbaa !325
  %.sroa.speculated.i = tail call i8 @llvm.umax.i8(i8 %.sroa.0.0.copyload.i.i, i8 3)
  store i8 %.sroa.speculated.i, ptr %i.me, align 8, !tbaa !325
  tail call void @_ZN4llvm7CCState18ensureMaxAlignmentENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %5, i8 3) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #8
  %i.mf = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.mg = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i32 %0, ptr %i.mg, align 8, !tbaa !316, !alias.scope !786
  %i.mh = getelementptr inbounds nuw i8, ptr %17, i64 20 ; 2 uses
  %i.mi = load i8, ptr %i.mh, align 4, !alias.scope !786
  %i.mj = and i8 %i.mi, -128
  %i.mk = trunc i32 %.8127315425 to i8
  %i.ml = shl i8 %i.mk, 1
  %i.mm = and i8 %i.ml, 126
  %i.mn = or disjoint i8 %i.mj, %i.mm
  store i8 %i.mn, ptr %i.mh, align 4, !alias.scope !786
  %i.mo = getelementptr inbounds nuw i8, ptr %17, i64 22
  store i16 %1, ptr %i.mo, align 2, !tbaa !317, !alias.scope !786
  %i.mp = getelementptr inbounds nuw i8, ptr %17, i64 24
  store i16 %.sroa.0100.8306429, ptr %i.mp, align 8, !tbaa !317, !alias.scope !786
  store i8 1, ptr %i.mf, align 8, !tbaa !305, !alias.scope !786
  store i64 %.0.i, ptr %17, align 8, !tbaa !326, !alias.scope !786
  %i.mq = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !318, !nonnull !300, !align !319 ; 4 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 8 ; 3 uses
  %i.mt = load i32, ptr %i.ms, align 8, !tbaa !320 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mr, i64 12
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !321
  %.not.i.i191 = icmp ult i32 %i.mt, %i.mv
  br i1 %.not.i.i191, label %bb.be, label %bb.bd, !prof !322

bb.bd:                                            ; preds = %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.mr, ptr noundef nonnull align 8 dereferenceable(26) %17)
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit192

bb.be:                                            ; preds = %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit
  %i.mw = zext i32 %i.mt to i64
  %i.mx = load ptr, ptr %i.mr, align 8, !tbaa !301
  %i.my = getelementptr inbounds nuw [32 x i8], ptr %i.mx, i64 %i.mw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.my, ptr noundef nonnull align 8 dereferenceable(32) %17, i64 32, i1 false)
  %i.mz = load i32, ptr %i.ms, align 8, !tbaa !320
  %i.na = add i32 %i.mz, 1
  store i32 %i.na, ptr %i.ms, align 8, !tbaa !320
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit192

_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit192: ; preds = %bb.bd, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #8
  br label %bb.bf

bb.bf:                                            ; preds = %.thread353, %bb.ba, %bb.ay, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEEPKt.exit190, %bb.as, %bb.al, %bb.ae, %_ZN4llvm7CCState11AllocateRegEt.exit166, %_ZN4llvm7CCState11AllocateRegEt.exit161, %_ZN4llvm7CCState11AllocateRegEt.exit156, %_ZN4llvm7CCState11AllocateRegEt.exit151, %_ZN4llvm7CCState11AllocateRegEt.exit, %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit192
  %.21 = phi i1 [ false, %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit192 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit ], [ false, %bb.ba ], [ false, %bb.ay ], [ false, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEEPKt.exit190 ], [ false, %bb.as ], [ false, %bb.al ], [ false, %bb.ae ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit166 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit161 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit156 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit151 ], [ true, %.thread353 ]
  ret i1 %.21
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL11CC_X86_64_CjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i64 %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(420) %6) unnamed_addr #0 {
bb.a:
  %7 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %8 = alloca %"struct.llvm::ISD::ArgFlagsTy", align 8 ; 3 uses
  %9 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %10 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %11 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %12 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %13 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %14 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %15 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %16 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %17 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %18 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %19 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %20 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %21 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %22 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %23 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %24 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %25 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %26 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %27 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %i.a = and i64 %4, 32
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %4, ptr %8, align 8, !tbaa !325
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %5, ptr %.sroa.27.0..sroa_idx, align 8, !tbaa !302
  tail call void @_ZN4llvm7CCState11HandleByValEjNS_3MVTES1_NS_11CCValAssign7LocInfoEiNS_5AlignENS_3ISD10ArgFlagsTyE(ptr noundef nonnull align 8 dereferenceable(420) %6, i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i32 noundef 8, i8 3, ptr noundef nonnull byval(%"struct.llvm::ISD::ArgFlagsTy") align 8 %8) #8
  br label %_ZL14CC_X86_64_I128RjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit

bb.c:                                             ; preds = %bb.a
  switch i16 %2, label %bb.e [
    i16 2, label %.critedge
    i16 5, label %.critedge
    i16 6, label %.critedge
    i16 19, label %.critedge
  ]

.critedge:                                        ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %i.b = and i64 %4, 2
  %.not480 = icmp eq i64 %i.b, 0
  br i1 %.not480, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.critedge
  %i.c = trunc i64 %4 to i1
  %spec.select = select i1 %i.c, i32 2, i32 3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.critedge
  %.0 = phi i32 [ %3, %bb.c ], [ 1, %.critedge ], [ %spec.select, %bb.d ] ; 15 uses
  %.sroa.0185.0 = phi i16 [ %2, %bb.c ], [ 7, %.critedge ], [ 7, %bb.d ] ; 8 uses
  %i.d = and i64 %4, 128
  %.not481 = icmp eq i64 %i.d, 0
  br i1 %.not481, label %_ZN4llvm7CCState11AllocateRegEt.exit159.thread315, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40, !nonnull !300, !align !319
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !156, !nonnull !300, !align !319 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 522
  %i.j = load i8, ptr %i.i, align 2, !tbaa !298, !range !299, !noundef !300
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 530
  %i.m = load i8, ptr %i.l, align 2, !range !299
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = select i1 %i.k, i1 %i.n, i1 false
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !301  ; 2 uses
  br i1 %i.o, label %bb.g, label %_ZN4llvm7CCState11AllocateRegEt.exit.thread308

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %i.s = load i32, ptr %i.r, align 4, !tbaa !302
  %i.t = and i32 %i.s, 512
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %bb.h, label %_ZN4llvm7CCState11AllocateRegEt.exit.thread308

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %6, i16 noundef zeroext 169) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i8 0, ptr %i.u, align 8, !tbaa !305, !alias.scope !824
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 %0, ptr %i.v, align 8, !tbaa !316, !alias.scope !824
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 2 uses
  %i.x = load i8, ptr %i.w, align 4, !alias.scope !824
  %i.y = and i8 %i.x, -128
  %i.z = trunc i32 %.0 to i8
  %i.aa = shl i8 %i.z, 1
  %i.ab = and i8 %i.aa, 126
  %i.ac = or disjoint i8 %i.y, %i.ab
  store i8 %i.ac, ptr %i.w, align 4, !alias.scope !824
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 22
  store i16 %1, ptr %i.ad, align 2, !tbaa !317, !alias.scope !824
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i16 %.sroa.0185.0, ptr %i.ae, align 8, !tbaa !317, !alias.scope !824
  store i32 169, ptr %9, align 8, !tbaa !302, !alias.scope !824
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !318, !nonnull !300, !align !319 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !320 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !321
  %.not.i.i = icmp ult i32 %i.ai, %i.ak
  br i1 %.not.i.i, label %bb.j, label %bb.i, !prof !322

bb.i:                                             ; preds = %bb.h
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(26) %9)
  br label %_ZN4llvm7CCState11AllocateRegEt.exit

bb.j:                                             ; preds = %bb.h
  %i.al = zext i32 %i.ai to i64
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !301
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %i.am, i64 %i.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false)
  %i.ao = load i32, ptr %i.ah, align 8, !tbaa !320
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.ah, align 8, !tbaa !320
  br label %_ZN4llvm7CCState11AllocateRegEt.exit

_ZN4llvm7CCState11AllocateRegEt.exit:             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  br label %_ZL14CC_X86_64_I128RjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit

_ZN4llvm7CCState11AllocateRegEt.exit.thread308:   ; preds = %bb.f, %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !302
  %i.as = and i32 %i.ar, 33554432
  %.not.i157 = icmp eq i32 %i.as, 0
  br i1 %.not.i157, label %bb.k, label %_ZN4llvm7CCState11AllocateRegEt.exit159.thread315

bb.k:                                             ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit.thread308
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %6, i16 noundef zeroext 121) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i8 0, ptr %i.at, align 8, !tbaa !305, !alias.scope !825
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 %0, ptr %i.au, align 8, !tbaa !316, !alias.scope !825
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 20 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 4, !alias.scope !825
  %i.ax = and i8 %i.aw, -128
  %i.ay = trunc i32 %.0 to i8
  %i.az = shl i8 %i.ay, 1
  %i.ba = and i8 %i.az, 126
  %i.bb = or disjoint i8 %i.ax, %i.ba
  store i8 %i.bb, ptr %i.av, align 4, !alias.scope !825
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 22
  store i16 %1, ptr %i.bc, align 2, !tbaa !317, !alias.scope !825
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i16 %.sroa.0185.0, ptr %i.bd, align 8, !tbaa !317, !alias.scope !825
  store i32 121, ptr %10, align 8, !tbaa !302, !alias.scope !825
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !318, !nonnull !300, !align !319 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 3 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !320 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !321
  %.not.i.i160 = icmp ult i32 %i.bh, %i.bj
  br i1 %.not.i.i160, label %bb.m, label %bb.l, !prof !322

bb.l:                                             ; preds = %bb.k
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(26) %10)
  br label %_ZN4llvm7CCState11AllocateRegEt.exit159

bb.m:                                             ; preds = %bb.k
  %i.bk = zext i32 %i.bh to i64
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !301
  %i.bm = getelementptr inbounds nuw [32 x i8], ptr %i.bl, i64 %i.bk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bm, ptr noundef nonnull align 8 dereferenceable(32) %10, i64 32, i1 false)
  %i.bn = load i32, ptr %i.bg, align 8, !tbaa !320
  %i.bo = add i32 %i.bn, 1
  store i32 %i.bo, ptr %i.bg, align 8, !tbaa !320
  br label %_ZN4llvm7CCState11AllocateRegEt.exit159

_ZN4llvm7CCState11AllocateRegEt.exit159:          ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  br label %_ZL14CC_X86_64_I128RjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit

_ZN4llvm7CCState11AllocateRegEt.exit159.thread315: ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit.thread308, %bb.e
  %i.bp = and i64 %4, 8192
  %i.bq = icmp ne i64 %i.bp, 0
  %i.br = icmp eq i16 %.sroa.0185.0, 8            ; 6 uses
  %or.cond = select i1 %i.bq, i1 %i.br, i1 false
  br i1 %or.cond, label %bb.n, label %bb.r

bb.n:                                             ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit159.thread315
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !301
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !302 ; 2 uses
  %i.bw = and i32 %i.bv, 268435456
  %.not.i162 = icmp eq i32 %i.bw, 0
  br i1 %.not.i162, label %bb.o, label %.thread324

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %6, i16 noundef zeroext 124) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #8
  %i.bx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i8 0, ptr %i.bx, align 8, !tbaa !305, !alias.scope !826
  %i.by = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 %0, ptr %i.by, align 8, !tbaa !316, !alias.scope !826
  %i.bz = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 4, !alias.scope !826
  %i.cb = and i8 %i.ca, -128
  %i.cc = trunc i32 %.0 to i8
  %i.cd = shl i8 %i.cc, 1
  %i.ce = and i8 %i.cd, 126
  %i.cf = or disjoint i8 %i.cb, %i.ce
  store i8 %i.cf, ptr %i.bz, align 4, !alias.scope !826
  %i.cg = getelementptr inbounds nuw i8, ptr %11, i64 22
  store i16 %1, ptr %i.cg, align 2, !tbaa !317, !alias.scope !826
  %i.ch = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i16 8, ptr %i.ch, align 8, !tbaa !317, !alias.scope !826
  store i32 124, ptr %11, align 8, !tbaa !302, !alias.scope !826
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !318, !nonnull !300, !align !319 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 3 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !320 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !321
  %.not.i.i165 = icmp ult i32 %i.cl, %i.cn
  br i1 %.not.i.i165, label %bb.q, label %bb.p, !prof !322

bb.p:                                             ; preds = %bb.o
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, ptr noundef nonnull align 8 dereferenceable(26) %11)
  br label %_ZN4llvm7CCState11AllocateRegEt.exit164

bb.q:                                             ; preds = %bb.o
  %i.co = zext i32 %i.cl to i64
  %i.cp = load ptr, ptr %i.cj, align 8, !tbaa !301
  %i.cq = getelementptr inbounds nuw [32 x i8], ptr %i.cp, i64 %i.co
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.cq, ptr noundef nonnull align 8 dereferenceable(32) %11, i64 32, i1 false)
  %i.cr = load i32, ptr %i.ck, align 8, !tbaa !320
  %i.cs = add i32 %i.cr, 1
  store i32 %i.cs, ptr %i.ck, align 8, !tbaa !320
  br label %_ZN4llvm7CCState11AllocateRegEt.exit164

_ZN4llvm7CCState11AllocateRegEt.exit164:          ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  br label %_ZL14CC_X86_64_I128RjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit

bb.r:                                             ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit159.thread315
  %i.ct = and i64 %4, 32768
  %i.cu = icmp ne i64 %i.ct, 0
  %or.cond458 = select i1 %i.cu, i1 %i.br, i1 false
  br i1 %or.cond458, label %..thread325_crit_edge, label %_ZN4llvm7CCState11AllocateRegEt.exit169.thread331

..thread325_crit_edge:                            ; preds = %bb.r
  %.phi.trans.insert510 = getelementptr inbounds nuw i8, ptr %6, i64 64
  %.pre511 = load ptr, ptr %.phi.trans.insert510, align 8, !tbaa !301
  %.phi.trans.insert512 = getelementptr inbounds nuw i8, ptr %.pre511, i64 12
  %.pre513 = load i32, ptr %.phi.trans.insert512, align 4, !tbaa !302
  br label %.thread325

.thread324:                                       ; preds = %bb.n
  %i.cv = and i64 %4, 32768
  %.not482 = icmp eq i64 %i.cv, 0
  br i1 %.not482, label %_ZN4llvm7CCState11AllocateRegEt.exit169.thread331, label %.thread325

.thread325:                                       ; preds = %..thread325_crit_edge, %.thread324
  %i.cw = phi i32 [ %.pre513, %..thread325_crit_edge ], [ %i.bv, %.thread324 ]
  %i.cx = and i32 %i.cw, 134217728
  %.not.i167 = icmp eq i32 %i.cx, 0
  br i1 %.not.i167, label %bb.s, label %_ZN4llvm7CCState11AllocateRegEt.exit169.thread331

bb.s:                                             ; preds = %.thread325
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %6, i16 noundef zeroext 123) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #8
  %i.cy = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i8 0, ptr %i.cy, align 8, !tbaa !305, !alias.scope !827
  %i.cz = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 %0, ptr %i.cz, align 8, !tbaa !316, !alias.scope !827
  %i.da = getelementptr inbounds nuw i8, ptr %12, i64 20 ; 2 uses
  %i.db = load i8, ptr %i.da, align 4, !alias.scope !827
  %i.dc = and i8 %i.db, -128
  %i.dd = trunc i32 %.0 to i8
  %i.de = shl i8 %i.dd, 1
  %i.df = and i8 %i.de, 126
  %i.dg = or disjoint i8 %i.dc, %i.df
  store i8 %i.dg, ptr %i.da, align 4, !alias.scope !827
  %i.dh = getelementptr inbounds nuw i8, ptr %12, i64 22
  store i16 %1, ptr %i.dh, align 2, !tbaa !317, !alias.scope !827
  %i.di = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i16 %.sroa.0185.0, ptr %i.di, align 8, !tbaa !317, !alias.scope !827
  store i32 123, ptr %12, align 8, !tbaa !302, !alias.scope !827
  %i.dj = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !318, !nonnull !300, !align !319 ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 3 uses
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !320 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 12
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !321
  %.not.i.i170 = icmp ult i32 %i.dm, %i.do
  br i1 %.not.i.i170, label %bb.u, label %bb.t, !prof !322

bb.t:                                             ; preds = %bb.s
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.dk, ptr noundef nonnull align 8 dereferenceable(26) %12)
  br label %_ZN4llvm7CCState11AllocateRegEt.exit169

bb.u:                                             ; preds = %bb.s
  %i.dp = zext i32 %i.dm to i64
  %i.dq = load ptr, ptr %i.dk, align 8, !tbaa !301
  %i.dr = getelementptr inbounds nuw [32 x i8], ptr %i.dq, i64 %i.dp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.dr, ptr noundef nonnull align 8 dereferenceable(32) %12, i64 32, i1 false)
  %i.ds = load i32, ptr %i.dl, align 8, !tbaa !320
  %i.dt = add i32 %i.ds, 1
  store i32 %i.dt, ptr %i.dl, align 8, !tbaa !320
  br label %_ZN4llvm7CCState11AllocateRegEt.exit169

_ZN4llvm7CCState11AllocateRegEt.exit169:          ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #8
  br label %_ZL14CC_X86_64_I128RjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit

_ZN4llvm7CCState11AllocateRegEt.exit169.thread331: ; preds = %.thread325, %.thread324, %bb.r
  %i.du = and i64 %4, 16384
  %i.dv = icmp ne i64 %i.du, 0
  %or.cond459 = select i1 %i.dv, i1 %i.br, i1 false
  br i1 %or.cond459, label %bb.v, label %_ZN4llvm7CCState11AllocateRegEt.exit174.thread338

bb.v:                                             ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit169.thread331
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !301
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 12
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !302
  %i.ea = and i32 %i.dz, 536870912
  %.not.i172 = icmp eq i32 %i.ea, 0
  br i1 %.not.i172, label %bb.w, label %_ZN4llvm7CCState11AllocateRegEt.exit174.thread338

bb.w:                                             ; preds = %bb.v
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %6, i16 noundef zeroext 125) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #8
  %i.eb = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i8 0, ptr %i.eb, align 8, !tbaa !305, !alias.scope !828
  %i.ec = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 %0, ptr %i.ec, align 8, !tbaa !316, !alias.scope !828
  %i.ed = getelementptr inbounds nuw i8, ptr %13, i64 20 ; 2 uses
  %i.ee = load i8, ptr %i.ed, align 4, !alias.scope !828
  %i.ef = and i8 %i.ee, -128
  %i.eg = trunc i32 %.0 to i8
  %i.eh = shl i8 %i.eg, 1
  %i.ei = and i8 %i.eh, 126
  %i.ej = or disjoint i8 %i.ef, %i.ei
  store i8 %i.ej, ptr %i.ed, align 4, !alias.scope !828
  %i.ek = getelementptr inbounds nuw i8, ptr %13, i64 22
  store i16 %1, ptr %i.ek, align 2, !tbaa !317, !alias.scope !828
  %i.el = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i16 8, ptr %i.el, align 8, !tbaa !317, !alias.scope !828
  store i32 125, ptr %13, align 8, !tbaa !302, !alias.scope !828
  %i.em = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !318, !nonnull !300, !align !319 ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 3 uses
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !320 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 12
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !321
  %.not.i.i175 = icmp ult i32 %i.ep, %i.er
  br i1 %.not.i.i175, label %bb.y, label %bb.x, !prof !322

bb.x:                                             ; preds = %bb.w
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.en, ptr noundef nonnull align 8 dereferenceable(26) %13)
  br label %_ZN4llvm7CCState11AllocateRegEt.exit174

bb.y:                                             ; preds = %bb.w
  %i.es = zext i32 %i.ep to i64
  %i.et = load ptr, ptr %i.en, align 8, !tbaa !301
  %i.eu = getelementptr inbounds nuw [32 x i8], ptr %i.et, i64 %i.es
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.eu, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 32, i1 false)
  %i.ev = load i32, ptr %i.eo, align 8, !tbaa !320
  %i.ew = add i32 %i.ev, 1
  store i32 %i.ew, ptr %i.eo, align 8, !tbaa !320
  br label %_ZN4llvm7CCState11AllocateRegEt.exit174

_ZN4llvm7CCState11AllocateRegEt.exit174:          ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #8
  br label %_ZL14CC_X86_64_I128RjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit

_ZN4llvm7CCState11AllocateRegEt.exit174.thread338: ; preds = %bb.v, %_ZN4llvm7CCState11AllocateRegEt.exit169.thread331
  %i.ex = load i32, ptr %6, align 8, !tbaa !39    ; 2 uses
  %i.ey = icmp eq i32 %i.ex, 16
  %i.ez = and i64 %4, 16
  %.not483 = icmp ne i64 %i.ez, 0                 ; 2 uses
  br i1 %i.ey, label %bb.z, label %thread-pre-split

bb.z:                                             ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit174.thread338
  %brmerge574.not = select i1 %.not483, i1 %i.br, i1 false
  br i1 %brmerge574.not, label %bb.aa, label %.thread347

bb.aa:                                            ; preds = %bb.z
  %i.fa = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !301
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !302
  %i.fe = and i32 %i.fd, 524288
  %.not.i177 = icmp eq i32 %i.fe, 0
  br i1 %.not.i177, label %_ZN4llvm7CCState11AllocateRegEt.exit179, label %.thread347

_ZN4llvm7CCState11AllocateRegEt.exit179:          ; preds = %bb.aa
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %6, i16 noundef zeroext 51) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #8
  %i.ff = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i8 0, ptr %i.ff, align 8, !tbaa !305, !alias.scope !829
  %i.fg = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 %0, ptr %i.fg, align 8, !tbaa !316, !alias.scope !829
  %i.fh = getelementptr inbounds nuw i8, ptr %14, i64 20 ; 2 uses
  %i.fi = load i8, ptr %i.fh, align 4, !alias.scope !829
  %i.fj = and i8 %i.fi, -128
  %i.fk = trunc i32 %.0 to i8
  %i.fl = shl i8 %i.fk, 1
  %i.fm = and i8 %i.fl, 126
  %i.fn = or disjoint i8 %i.fj, %i.fm
  store i8 %i.fn, ptr %i.fh, align 4, !alias.scope !829
  %i.fo = getelementptr inbounds nuw i8, ptr %14, i64 22
  store i16 %1, ptr %i.fo, align 2, !tbaa !317, !alias.scope !829
  %i.fp = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i16 8, ptr %i.fp, align 8, !tbaa !317, !alias.scope !829
  store i32 51, ptr %14, align 8, !tbaa !302, !alias.scope !829
  call void @_ZN4llvm7CCState6addLocERKNS_11CCValAssignE(ptr noundef nonnull align 8 dereferenceable(420) %6, ptr noundef nonnull align 8 dereferenceable(26) %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #8
  br label %_ZL14CC_X86_64_I128RjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit

thread-pre-split:                                 ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit174.thread338
  %i.fq = icmp eq i32 %i.ex, 20
  %or.cond461 = and i1 %.not483, %i.fq
  %or.cond462 = select i1 %or.cond461, i1 %i.br, i1 false
  br i1 %or.cond462, label %bb.ab, label %.thread347

bb.ab:                                            ; preds = %thread-pre-split
  %i.fr = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !301
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !302
  %i.fv = and i32 %i.fu, 524288
  %.not.i180 = icmp eq i32 %i.fv, 0
  br i1 %.not.i180, label %_ZN4llvm7CCState11AllocateRegEt.exit182, label %.thread370

_ZN4llvm7CCState11AllocateRegEt.exit182:          ; preds = %bb.ab
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %6, i16 noundef zeroext 51) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #8
  %i.fw = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i8 0, ptr %i.fw, align 8, !tbaa !305, !alias.scope !830
  %i.fx = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i32 %0, ptr %i.fx, align 8, !tbaa !316, !alias.scope !830
  %i.fy = getelementptr inbounds nuw i8, ptr %15, i64 20 ; 2 uses
  %i.fz = load i8, ptr %i.fy, align 4, !alias.scope !830
  %i.ga = and i8 %i.fz, -128
  %i.gb = trunc i32 %.0 to i8
  %i.gc = shl i8 %i.gb, 1
  %i.gd = and i8 %i.gc, 126
  %i.ge = or disjoint i8 %i.ga, %i.gd
  store i8 %i.ge, ptr %i.fy, align 4, !alias.scope !830
  %i.gf = getelementptr inbounds nuw i8, ptr %15, i64 22
  store i16 %1, ptr %i.gf, align 2, !tbaa !317, !alias.scope !830
  %i.gg = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i16 8, ptr %i.gg, align 8, !tbaa !317, !alias.scope !830
  store i32 51, ptr %15, align 8, !tbaa !302, !alias.scope !830
  call void @_ZN4llvm7CCState6addLocERKNS_11CCValAssignE(ptr noundef nonnull align 8 dereferenceable(420) %6, ptr noundef nonnull align 8 dereferenceable(26) %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #8
  br label %_ZL14CC_X86_64_I128RjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit

.thread347:                                       ; preds = %bb.z, %bb.aa, %thread-pre-split
  %i.gh = and i64 %4, 17179869184
  %.not484 = icmp eq i64 %i.gh, 0
  br i1 %.not484, label %_ZL17CC_X86_64_PointerRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit, label %bb.ac

bb.ac:                                            ; preds = %.thread347
  %spec.select463 = select i1 %i.br, i32 %.0, i32 2
  br label %.thread370

_ZL17CC_X86_64_PointerRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit: ; preds = %.thread347
  switch i16 %.sroa.0185.0, label %.thread440 [
    i16 7, label %bb.ad
    i16 8, label %.thread370
    i16 20, label %bb.cu
    i16 22, label %bb.cw
    i16 26, label %bb.cy
    i16 27, label %bb.da
    i16 28, label %bb.dc
    i16 29, label %bb.de
    i16 13, label %.thread435
    i16 14, label %.thread435.fold.split575
    i16 15, label %.thread435.fold.split575
    i16 17, label %.thread435.fold.split575
    i16 48, label %.thread435.fold.split575
    i16 62, label %.thread435.fold.split575
    i16 73, label %.thread435.fold.split575
    i16 94, label %.thread435.fold.split575
    i16 112, label %.thread435.fold.split575
    i16 124, label %.thread435.fold.split575
    i16 136, label %.thread435.fold.split575
    i16 154, label %.thread435.fold.split575
  ]

bb.ad:                                            ; preds = %_ZL17CC_X86_64_PointerRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit
  %i.gi = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !301 ; 3 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !302 ; 3 uses
  %i.gl = and i32 %i.gk, 67108864
  %.not.i.i184 = icmp eq i32 %i.gl, 0
  br i1 %.not.i.i184, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !302
  %i.go = and i32 %i.gn, 1
  %.not.i.i184.1 = icmp eq i32 %i.go, 0
  br i1 %.not.i.i184.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gp = and i32 %i.gk, 134217728
  %.not.i.i184.2 = icmp eq i32 %i.gp, 0
  br i1 %.not.i.i184.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gq = and i32 %i.gk, 33554432
  %.not.i.i184.3 = icmp eq i32 %i.gq, 0
  br i1 %.not.i.i184.3, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gj, i64 20
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !302 ; 2 uses
  %i.gt = and i32 %i.gs, 128
  %.not.i.i184.4 = icmp eq i32 %i.gt, 0
  br i1 %.not.i.i184.4, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gu = and i32 %i.gs, 256
  %.not.i.i184.5 = icmp eq i32 %i.gu, 0
  br i1 %.not.i.i184.5, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %.thread440

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit: ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad
  %.0613.i.i.lcssa.wide = phi i64 [ 0, %bb.ad ], [ 1, %bb.ae ], [ 2, %bb.af ], [ 3, %bb.ag ], [ 4, %bb.ah ], [ 5, %bb.ai ]
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr @_ZZL11CC_X86_64_CjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList1, i64 %.0613.i.i.lcssa.wide
  %i.gw = load i16, ptr %i.gv, align 2, !tbaa !303 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %6, i16 noundef zeroext %i.gw) #8
  %i.gx = zext i16 %i.gw to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #8
  %i.gy = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i8 0, ptr %i.gy, align 8, !tbaa !305, !alias.scope !831
  %i.gz = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i32 %0, ptr %i.gz, align 8, !tbaa !316, !alias.scope !831
  %i.ha = getelementptr inbounds nuw i8, ptr %16, i64 20 ; 2 uses
  %i.hb = load i8, ptr %i.ha, align 4, !alias.scope !831
  %i.hc = and i8 %i.hb, -128
  %i.hd = trunc i32 %.0 to i8
  %i.he = shl i8 %i.hd, 1
  %i.hf = and i8 %i.he, 126
  %i.hg = or disjoint i8 %i.hc, %i.hf
  store i8 %i.hg, ptr %i.ha, align 4, !alias.scope !831
  %i.hh = getelementptr inbounds nuw i8, ptr %16, i64 22
  store i16 %1, ptr %i.hh, align 2, !tbaa !317, !alias.scope !831
  %i.hi = getelementptr inbounds nuw i8, ptr %16, i64 24
  store i16 7, ptr %i.hi, align 8, !tbaa !317, !alias.scope !831
  store i32 %i.gx, ptr %16, align 8, !tbaa !302, !alias.scope !831
  %i.hj = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !318, !nonnull !300, !align !319 ; 4 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8 ; 3 uses
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !320 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 12
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !321
  %.not.i.i185 = icmp ult i32 %i.hm, %i.ho
  br i1 %.not.i.i185, label %bb.ak, label %bb.aj, !prof !322

bb.aj:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.hk, ptr noundef nonnull align 8 dereferenceable(26) %16)
  br label %bb.al

bb.ak:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  %i.hp = zext i32 %i.hm to i64
  %i.hq = load ptr, ptr %i.hk, align 8, !tbaa !301
  %i.hr = getelementptr inbounds nuw [32 x i8], ptr %i.hq, i64 %i.hp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.hr, ptr noundef nonnull align 8 dereferenceable(32) %16, i64 32, i1 false)
  %i.hs = load i32, ptr %i.hl, align 8, !tbaa !320
  %i.ht = add i32 %i.hs, 1
  store i32 %i.ht, ptr %i.hl, align 8, !tbaa !320
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #8
  br label %_ZL14CC_X86_64_I128RjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit

.thread370:                                       ; preds = %_ZL17CC_X86_64_PointerRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit, %bb.ac, %bb.ab
  %.2360375 = phi i32 [ %spec.select463, %bb.ac ], [ %.0, %_ZL17CC_X86_64_PointerRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit ], [ %.0, %bb.ab ] ; 3 uses
  %i.hu = and i64 %4, 4294967296
  %.not485 = icmp eq i64 %i.hu, 0
  br i1 %.not485, label %bb.cl, label %bb.am

bb.am:                                            ; preds = %.thread370
  %i.hv = getelementptr inbounds nuw i8, ptr %6, i64 144 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  %i.hw = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.hx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %0, ptr %i.hx, align 8, !tbaa !316, !alias.scope !832
  %i.hy = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 2 uses
  %i.hz = load i8, ptr %i.hy, align 4, !alias.scope !832
  %i.ia = and i8 %i.hz, -128
  %i.ib = trunc i32 %.2360375 to i8
  %i.ic = shl i8 %i.ib, 1
  %i.id = and i8 %i.ic, 126
  %i.ie = or disjoint i8 %i.ia, %i.id
  store i8 %i.ie, ptr %i.hy, align 4, !alias.scope !832
  %i.if = getelementptr inbounds nuw i8, ptr %7, i64 22
  store i16 %1, ptr %i.if, align 2, !tbaa !317, !alias.scope !832
  %i.ig = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i16 8, ptr %i.ig, align 8, !tbaa !317, !alias.scope !832
  store i8 2, ptr %i.hw, align 8, !tbaa !305, !alias.scope !832
  store i32 0, ptr %7, align 8, !tbaa !302, !alias.scope !832
  %i.ih = getelementptr inbounds nuw i8, ptr %6, i64 152 ; 5 uses
  %i.ii = load i32, ptr %i.ih, align 8, !tbaa !320 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %6, i64 156
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !321
  %.not.i.i187 = icmp ult i32 %i.ii, %i.ik
  br i1 %.not.i.i187, label %bb.ao, label %bb.an, !prof !322

bb.an:                                            ; preds = %bb.am
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.hv, ptr noundef nonnull align 8 dereferenceable(26) %7)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE9push_backERKS1_.exit.i

bb.ao:                                            ; preds = %bb.am
  %i.il = zext i32 %i.ii to i64
  %i.im = load ptr, ptr %i.hv, align 8, !tbaa !301
  %i.in = getelementptr inbounds nuw [32 x i8], ptr %i.im, i64 %i.il
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.in, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false)
  %i.io = load i32, ptr %i.ih, align 8, !tbaa !320
  %i.ip = add i32 %i.io, 1
end_hunk_2
begin_hunk_3_@_ZL23CC_X86_32_RegCallv4_WinjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE:bb.a
  br i1 %.not.i.i174.5, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit177, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.id = and i32 %i.hx, 32
  %.not.i.i174.6 = icmp eq i32 %i.id, 0
  br i1 %.not.i.i174.6, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit177, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ie = and i32 %i.hx, 64
  %.not.i.i174.7 = icmp eq i32 %i.ie, 0
  br i1 %.not.i.i174.7, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit177, label %.thread262

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit177: ; preds = %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay
  %.0613.i.i173.lcssa.wide = phi i64 [ 0, %bb.ay ], [ 1, %bb.az ], [ 2, %bb.ba ], [ 3, %bb.bb ], [ 4, %bb.bc ], [ 5, %bb.bd ], [ 6, %bb.be ], [ 7, %bb.bf ]
  %i.if = getelementptr inbounds nuw [2 x i8], ptr @_ZZL20RetCC_X86_32_RegCalljN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList7, i64 %.0613.i.i173.lcssa.wide
  %i.ig = load i16, ptr %i.if, align 2, !tbaa !303 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %6, i16 noundef zeroext %i.ig) #8
  %i.ih = zext i16 %i.ig to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #8
  %i.ii = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i8 0, ptr %i.ii, align 8, !tbaa !305, !alias.scope !997
  %i.ij = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i32 %0, ptr %i.ij, align 8, !tbaa !316, !alias.scope !997
  %i.ik = getelementptr inbounds nuw i8, ptr %16, i64 20 ; 2 uses
  %i.il = load i8, ptr %i.ik, align 4, !alias.scope !997
  %i.im = and i8 %i.il, -128
  %i.in = trunc i32 %.2339 to i8
  %i.io = shl i8 %i.in, 1
  %i.ip = and i8 %i.io, 126
  %i.iq = or disjoint i8 %i.im, %i.ip
  store i8 %i.iq, ptr %i.ik, align 4, !alias.scope !997
  %i.ir = getelementptr inbounds nuw i8, ptr %16, i64 22
  store i16 %1, ptr %i.ir, align 2, !tbaa !317, !alias.scope !997
  %i.is = getelementptr inbounds nuw i8, ptr %16, i64 24
  store i16 %.sroa.0.0.copyload145343, ptr %i.is, align 8, !tbaa !317, !alias.scope !997
  store i32 %i.ih, ptr %16, align 8, !tbaa !302, !alias.scope !997
  call void @_ZN4llvm7CCState6addLocERKNS_11CCValAssignE(ptr noundef nonnull align 8 dereferenceable(420) %6, ptr noundef nonnull align 8 dereferenceable(26) %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #8
  br label %bb.bp

.thread262:                                       ; preds = %bb.bf, %.thread250, %.critedge8
  %i.it = phi i1 [ false, %.thread250 ], [ %i.ho, %.critedge8 ], [ %i.ho, %bb.bf ] ; 3 uses
  switch i16 %.sroa.0.0.copyload145343, label %.thread270 [
    i16 50, label %.critedge10
    i16 64, label %.critedge10.fold.split
    i16 82, label %.critedge10.fold.split
    i16 97, label %.critedge10.fold.split
    i16 145, label %.critedge10.fold.split
    i16 157, label %.critedge10.fold.split
  ]

.critedge10.fold.split:                           ; preds = %.thread262, %.thread262, %.thread262, %.thread262, %.thread262
  br label %.critedge10

.critedge10:                                      ; preds = %.thread262, %.critedge10.fold.split
  %i.iu = phi i1 [ false, %.critedge10.fold.split ], [ true, %.thread262 ] ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.d, i64 360
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !339
  %i.ix = icmp sgt i32 %i.iw, 8
  br i1 %i.ix, label %bb.bg, label %.thread270

bb.bg:                                            ; preds = %.critedge10
  %i.iy = tail call i32 @_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE(ptr noundef nonnull align 8 dereferenceable(420) %6, ptr nonnull @_ZZL23CC_X86_32_RegCallv4_WinjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList5, i64 8) ; 2 uses
  %.not143.not = icmp eq i32 %i.iy, 0
  br i1 %.not143.not, label %.thread270, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #8
  %i.iz = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i8 0, ptr %i.iz, align 8, !tbaa !305, !alias.scope !998
  %i.ja = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i32 %0, ptr %i.ja, align 8, !tbaa !316, !alias.scope !998
  %i.jb = getelementptr inbounds nuw i8, ptr %17, i64 20 ; 2 uses
  %i.jc = load i8, ptr %i.jb, align 4, !alias.scope !998
  %i.jd = and i8 %i.jc, -128
  %i.je = trunc i32 %.2339 to i8
  %i.jf = shl i8 %i.je, 1
  %i.jg = and i8 %i.jf, 126
  %i.jh = or disjoint i8 %i.jd, %i.jg
  store i8 %i.jh, ptr %i.jb, align 4, !alias.scope !998
  %i.ji = getelementptr inbounds nuw i8, ptr %17, i64 22
  store i16 %1, ptr %i.ji, align 2, !tbaa !317, !alias.scope !998
  %i.jj = getelementptr inbounds nuw i8, ptr %17, i64 24
  store i16 %.sroa.0.0.copyload145343, ptr %i.jj, align 8, !tbaa !317, !alias.scope !998
  store i32 %i.iy, ptr %17, align 8, !tbaa !302, !alias.scope !998
  call void @_ZN4llvm7CCState6addLocERKNS_11CCValAssignE(ptr noundef nonnull align 8 dereferenceable(420) %6, ptr noundef nonnull align 8 dereferenceable(26) %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #8
  br label %bb.bp

.thread270:                                       ; preds = %.thread262, %bb.aj, %.thread219, %.thread218, %bb.bg, %.critedge10
  %.sroa.0.0.copyload145341 = phi i16 [ %.sroa.0.0.copyload145343, %bb.bg ], [ %.sroa.0.0.copyload145343, %.critedge10 ], [ %.sroa.0.0.copyload145343, %.thread262 ], [ 8, %.thread218 ], [ %.sroa.0.0.copyload145342, %.thread219 ], [ 16, %bb.aj ] ; 16 uses
  %.2340 = phi i32 [ %.2339, %bb.bg ], [ %.2339, %.critedge10 ], [ %.2339, %.thread262 ], [ %.2, %.thread218 ], [ %.2338, %.thread219 ], [ %.2339, %bb.aj ] ; 7 uses
  %i.jk = phi i1 [ %i.iu, %bb.bg ], [ %i.iu, %.critedge10 ], [ false, %.thread262 ], [ false, %.thread218 ], [ false, %.thread219 ], [ false, %bb.aj ]
  %i.jl = phi i1 [ %i.hn, %bb.bg ], [ %i.hn, %.critedge10 ], [ %i.hn, %.thread262 ], [ false, %.thread218 ], [ false, %.thread219 ], [ false, %bb.aj ]
  %i.jm = phi i1 [ %i.ew, %bb.bg ], [ %i.ew, %.critedge10 ], [ %i.ew, %.thread262 ], [ false, %.thread218 ], [ false, %.thread219 ], [ %i.ew, %bb.aj ] ; 2 uses
  %i.jn = phi i1 [ false, %bb.bg ], [ false, %.critedge10 ], [ false, %.thread262 ], [ false, %.thread218 ], [ false, %.thread219 ], [ true, %bb.aj ]
  %i.jo = phi i1 [ %i.it, %bb.bg ], [ %i.it, %.critedge10 ], [ %i.it, %.thread262 ], [ false, %.thread218 ], [ false, %.thread219 ], [ false, %bb.aj ]
  %i.jp = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !300, !align !319 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !156, !nonnull !300, !align !319
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 522
  %i.jt = load i8, ptr %i.js, align 2, !tbaa !298, !range !299, !noundef !300
  %i.ju = trunc nuw i8 %i.jt to i1
  br i1 %i.ju, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %.thread270
  br i1 %i.jm, label %.critedge12, label %switch.early.test312

switch.early.test312:                             ; preds = %bb.bi
  switch i16 %.sroa.0.0.copyload145341, label %.thread273 [
    i16 15, label %.critedge12
    i16 8, label %.critedge12
    i16 7, label %.critedge12
  ]

.critedge12:                                      ; preds = %switch.early.test312, %switch.early.test312, %switch.early.test312, %bb.bi
  %i.jv = tail call noundef i64 @_ZN4llvm7CCState13AllocateStackEjNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %6, i32 noundef 8, i8 3)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #8
  %i.jw = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.jx = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i32 %0, ptr %i.jx, align 8, !tbaa !316, !alias.scope !999
  %i.jy = getelementptr inbounds nuw i8, ptr %18, i64 20 ; 2 uses
  %i.jz = load i8, ptr %i.jy, align 4, !alias.scope !999
  %i.ka = and i8 %i.jz, -128
  %i.kb = trunc i32 %.2340 to i8
  %i.kc = shl i8 %i.kb, 1
  %i.kd = and i8 %i.kc, 126
  %i.ke = or disjoint i8 %i.ka, %i.kd
  store i8 %i.ke, ptr %i.jy, align 4, !alias.scope !999
  %i.kf = getelementptr inbounds nuw i8, ptr %18, i64 22
  store i16 %1, ptr %i.kf, align 2, !tbaa !317, !alias.scope !999
  %i.kg = getelementptr inbounds nuw i8, ptr %18, i64 24
  store i16 %.sroa.0.0.copyload145341, ptr %i.kg, align 8, !tbaa !317, !alias.scope !999
  store i8 1, ptr %i.jw, align 8, !tbaa !305, !alias.scope !999
  store i64 %i.jv, ptr %18, align 8, !tbaa !326, !alias.scope !999
  call void @_ZN4llvm7CCState6addLocERKNS_11CCValAssignE(ptr noundef nonnull align 8 dereferenceable(420) %6, ptr noundef nonnull align 8 dereferenceable(26) %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #8
  br label %bb.bp

bb.bj:                                            ; preds = %.thread270
  %i.kh = icmp eq i16 %.sroa.0.0.copyload145341, 7
  %brmerge = or i1 %i.kh, %i.jm
  br i1 %brmerge, label %.critedge14, label %bb.bk

.critedge14:                                      ; preds = %bb.bj
  %i.ki = tail call noundef i64 @_ZN4llvm7CCState13AllocateStackEjNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %6, i32 noundef 4, i8 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #8
  %i.kj = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.kk = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i32 %0, ptr %i.kk, align 8, !tbaa !316, !alias.scope !1000
  %i.kl = getelementptr inbounds nuw i8, ptr %19, i64 20 ; 2 uses
  %i.km = load i8, ptr %i.kl, align 4, !alias.scope !1000
  %i.kn = and i8 %i.km, -128
  %i.ko = trunc i32 %.2340 to i8
  %i.kp = shl i8 %i.ko, 1
  %i.kq = and i8 %i.kp, 126
  %i.kr = or disjoint i8 %i.kn, %i.kq
  store i8 %i.kr, ptr %i.kl, align 4, !alias.scope !1000
  %i.ks = getelementptr inbounds nuw i8, ptr %19, i64 22
  store i16 %1, ptr %i.ks, align 2, !tbaa !317, !alias.scope !1000
  %i.kt = getelementptr inbounds nuw i8, ptr %19, i64 24
  store i16 %.sroa.0.0.copyload145341, ptr %i.kt, align 8, !tbaa !317, !alias.scope !1000
  store i8 1, ptr %i.kj, align 8, !tbaa !305, !alias.scope !1000
  store i64 %i.ki, ptr %19, align 8, !tbaa !326, !alias.scope !1000
  call void @_ZN4llvm7CCState6addLocERKNS_11CCValAssignE(ptr noundef nonnull align 8 dereferenceable(420) %6, ptr noundef nonnull align 8 dereferenceable(26) %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #8
  br label %bb.bp

bb.bk:                                            ; preds = %bb.bj
  switch i16 %.sroa.0.0.copyload145341, label %.thread273 [
    i16 8, label %.critedge16
    i16 15, label %.critedge16
  ]

.critedge16:                                      ; preds = %bb.bk, %bb.bk
  %i.ku = tail call noundef i64 @_ZN4llvm7CCState13AllocateStackEjNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %6, i32 noundef 8, i8 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #8
  %i.kv = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.kw = getelementptr inbounds nuw i8, ptr %20, i64 16
  store i32 %0, ptr %i.kw, align 8, !tbaa !316, !alias.scope !1001
  %i.kx = getelementptr inbounds nuw i8, ptr %20, i64 20 ; 2 uses
  %i.ky = load i8, ptr %i.kx, align 4, !alias.scope !1001
  %i.kz = and i8 %i.ky, -128
  %i.la = trunc i32 %.2340 to i8
  %i.lb = shl i8 %i.la, 1
  %i.lc = and i8 %i.lb, 126
  %i.ld = or disjoint i8 %i.kz, %i.lc
  store i8 %i.ld, ptr %i.kx, align 4, !alias.scope !1001
  %i.le = getelementptr inbounds nuw i8, ptr %20, i64 22
  store i16 %1, ptr %i.le, align 2, !tbaa !317, !alias.scope !1001
  %i.lf = getelementptr inbounds nuw i8, ptr %20, i64 24
  store i16 %.sroa.0.0.copyload145341, ptr %i.lf, align 8, !tbaa !317, !alias.scope !1001
  store i8 1, ptr %i.kv, align 8, !tbaa !305, !alias.scope !1001
  store i64 %i.ku, ptr %20, align 8, !tbaa !326, !alias.scope !1001
  call void @_ZN4llvm7CCState6addLocERKNS_11CCValAssignE(ptr noundef nonnull align 8 dereferenceable(420) %6, ptr noundef nonnull align 8 dereferenceable(26) %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #8
  br label %bb.bp

.thread273:                                       ; preds = %switch.early.test312, %bb.bk
  %i.lg = icmp eq i16 %.sroa.0.0.copyload145341, 17
  %or.cond293 = select i1 %i.jn, i1 true, i1 %i.lg
  br i1 %or.cond293, label %.critedge18, label %bb.bm

.critedge18:                                      ; preds = %.thread273
  %i.lh = tail call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.jp) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #8
  store i16 %.sroa.0.0.copyload145341, ptr %21, align 8, !tbaa !317
  %i.li = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr null, ptr %i.li, align 8, !tbaa !342
  %i.lj = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !343, !nonnull !300, !align !319
  %i.ll = call noundef ptr @_ZNK4llvm3EVT13getTypeForEVTERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.lk) #8
  %i.lm = call { i64, i8 } @_ZNK4llvm10DataLayout16getTypeAllocSizeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.lh, ptr noundef %i.ll) #8 ; 2 uses
  %.fca.1.extract = extractvalue { i64, i8 } %i.lm, 1
  %i.ln = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.ln, label %bb.bl, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.bl:                                            ; preds = %.critedge18
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.2) #9
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %.critedge18
  %.fca.0.extract = extractvalue { i64, i8 } %i.lm, 0
  %i.lo = trunc i64 %.fca.0.extract to i32
  %i.lp = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !300, !align !319
  %i.lq = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.lp) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #8
  store i16 %.sroa.0.0.copyload145341, ptr %22, align 8, !tbaa !317
  %i.lr = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr null, ptr %i.lr, align 8, !tbaa !342
  %i.ls = load ptr, ptr %i.lj, align 8, !tbaa !343, !nonnull !300, !align !319
  %i.lt = call noundef ptr @_ZNK4llvm3EVT13getTypeForEVTERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.ls) #8
  %i.lu = call i8 @_ZNK4llvm10DataLayout15getABITypeAlignEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.lq, ptr noundef %i.lt) #8
  %i.lv = call noundef i64 @_ZN4llvm7CCState13AllocateStackEjNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %6, i32 noundef %i.lo, i8 %i.lu)
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #8
  %i.lw = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.lx = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i32 %0, ptr %i.lx, align 8, !tbaa !316, !alias.scope !1002
  %i.ly = getelementptr inbounds nuw i8, ptr %23, i64 20 ; 2 uses
  %i.lz = load i8, ptr %i.ly, align 4, !alias.scope !1002
  %i.ma = and i8 %i.lz, -128
  %i.mb = trunc i32 %.2340 to i8
  %i.mc = shl i8 %i.mb, 1
  %i.md = and i8 %i.mc, 126
  %i.me = or disjoint i8 %i.ma, %i.md
  store i8 %i.me, ptr %i.ly, align 4, !alias.scope !1002
  %i.mf = getelementptr inbounds nuw i8, ptr %23, i64 22
  store i16 %1, ptr %i.mf, align 2, !tbaa !317, !alias.scope !1002
  %i.mg = getelementptr inbounds nuw i8, ptr %23, i64 24
  store i16 %.sroa.0.0.copyload145341, ptr %i.mg, align 8, !tbaa !317, !alias.scope !1002
  store i8 1, ptr %i.lw, align 8, !tbaa !305, !alias.scope !1002
  store i64 %i.lv, ptr %23, align 8, !tbaa !326, !alias.scope !1002
  call void @_ZN4llvm7CCState6addLocERKNS_11CCValAssignE(ptr noundef nonnull align 8 dereferenceable(420) %6, ptr noundef nonnull align 8 dereferenceable(26) %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #8
  br label %bb.bp

bb.bm:                                            ; preds = %.thread273
  br i1 %i.jl, label %.critedge20, label %switch.early.test

switch.early.test:                                ; preds = %bb.bm
  switch i16 %.sroa.0.0.copyload145341, label %bb.bn [
    i16 154, label %.critedge20
    i16 136, label %.critedge20
    i16 94, label %.critedge20
    i16 73, label %.critedge20
    i16 62, label %.critedge20
  ]

.critedge20:                                      ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %bb.bm
  %i.mh = tail call noundef i64 @_ZN4llvm7CCState13AllocateStackEjNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %6, i32 noundef 16, i8 4)
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #8
  %i.mi = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.mj = getelementptr inbounds nuw i8, ptr %24, i64 16
  store i32 %0, ptr %i.mj, align 8, !tbaa !316, !alias.scope !1003
  %i.mk = getelementptr inbounds nuw i8, ptr %24, i64 20 ; 2 uses
  %i.ml = load i8, ptr %i.mk, align 4, !alias.scope !1003
  %i.mm = and i8 %i.ml, -128
  %i.mn = trunc i32 %.2340 to i8
  %i.mo = shl i8 %i.mn, 1
  %i.mp = and i8 %i.mo, 126
  %i.mq = or disjoint i8 %i.mm, %i.mp
  store i8 %i.mq, ptr %i.mk, align 4, !alias.scope !1003
  %i.mr = getelementptr inbounds nuw i8, ptr %24, i64 22
  store i16 %1, ptr %i.mr, align 2, !tbaa !317, !alias.scope !1003
  %i.ms = getelementptr inbounds nuw i8, ptr %24, i64 24
  store i16 %.sroa.0.0.copyload145341, ptr %i.ms, align 8, !tbaa !317, !alias.scope !1003
  store i8 1, ptr %i.mi, align 8, !tbaa !305, !alias.scope !1003
  store i64 %i.mh, ptr %24, align 8, !tbaa !326, !alias.scope !1003
  call void @_ZN4llvm7CCState6addLocERKNS_11CCValAssignE(ptr noundef nonnull align 8 dereferenceable(420) %6, ptr noundef nonnull align 8 dereferenceable(26) %24)
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #8
  br label %bb.bp

bb.bn:                                            ; preds = %switch.early.test
  br i1 %i.jo, label %.critedge22, label %switch.early.test310

switch.early.test310:                             ; preds = %bb.bn
  switch i16 %.sroa.0.0.copyload145341, label %bb.bo [
    i16 156, label %.critedge22
    i16 140, label %.critedge22
    i16 96, label %.critedge22
    i16 77, label %.critedge22
    i16 63, label %.critedge22
  ]

.critedge22:                                      ; preds = %switch.early.test310, %switch.early.test310, %switch.early.test310, %switch.early.test310, %switch.early.test310, %bb.bn
  %i.mt = tail call noundef i64 @_ZN4llvm7CCState13AllocateStackEjNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %6, i32 noundef 32, i8 5)
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #8
  %i.mu = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.mv = getelementptr inbounds nuw i8, ptr %25, i64 16
  store i32 %0, ptr %i.mv, align 8, !tbaa !316, !alias.scope !1004
  %i.mw = getelementptr inbounds nuw i8, ptr %25, i64 20 ; 2 uses
  %i.mx = load i8, ptr %i.mw, align 4, !alias.scope !1004
  %i.my = and i8 %i.mx, -128
  %i.mz = trunc i32 %.2340 to i8
  %i.na = shl i8 %i.mz, 1
  %i.nb = and i8 %i.na, 126
  %i.nc = or disjoint i8 %i.my, %i.nb
  store i8 %i.nc, ptr %i.mw, align 4, !alias.scope !1004
  %i.nd = getelementptr inbounds nuw i8, ptr %25, i64 22
  store i16 %1, ptr %i.nd, align 2, !tbaa !317, !alias.scope !1004
  %i.ne = getelementptr inbounds nuw i8, ptr %25, i64 24
  store i16 %.sroa.0.0.copyload145341, ptr %i.ne, align 8, !tbaa !317, !alias.scope !1004
  store i8 1, ptr %i.mu, align 8, !tbaa !305, !alias.scope !1004
  store i64 %i.mt, ptr %25, align 8, !tbaa !326, !alias.scope !1004
  call void @_ZN4llvm7CCState6addLocERKNS_11CCValAssignE(ptr noundef nonnull align 8 dereferenceable(420) %6, ptr noundef nonnull align 8 dereferenceable(26) %25)
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #8
  br label %bb.bp

bb.bo:                                            ; preds = %switch.early.test310
  br i1 %i.jk, label %.critedge24, label %switch.early.test311

switch.early.test311:                             ; preds = %bb.bo
  switch i16 %.sroa.0.0.copyload145341, label %bb.bp [
    i16 157, label %.critedge24
    i16 145, label %.critedge24
    i16 97, label %.critedge24
    i16 82, label %.critedge24
    i16 64, label %.critedge24
  ]

.critedge24:                                      ; preds = %switch.early.test311, %switch.early.test311, %switch.early.test311, %switch.early.test311, %switch.early.test311, %bb.bo
  %i.nf = tail call noundef i64 @_ZN4llvm7CCState13AllocateStackEjNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %6, i32 noundef 64, i8 6)
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #8
  %i.ng = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.nh = getelementptr inbounds nuw i8, ptr %26, i64 16
  store i32 %0, ptr %i.nh, align 8, !tbaa !316, !alias.scope !1005
  %i.ni = getelementptr inbounds nuw i8, ptr %26, i64 20 ; 2 uses
  %i.nj = load i8, ptr %i.ni, align 4, !alias.scope !1005
  %i.nk = and i8 %i.nj, -128
  %i.nl = trunc i32 %.2340 to i8
  %i.nm = shl i8 %i.nl, 1
  %i.nn = and i8 %i.nm, 126
  %i.no = or disjoint i8 %i.nk, %i.nn
  store i8 %i.no, ptr %i.ni, align 4, !alias.scope !1005
  %i.np = getelementptr inbounds nuw i8, ptr %26, i64 22
  store i16 %1, ptr %i.np, align 2, !tbaa !317, !alias.scope !1005
  %i.nq = getelementptr inbounds nuw i8, ptr %26, i64 24
  store i16 %.sroa.0.0.copyload145341, ptr %i.nq, align 8, !tbaa !317, !alias.scope !1005
  store i8 1, ptr %i.ng, align 8, !tbaa !305, !alias.scope !1005
  store i64 %i.nf, ptr %26, align 8, !tbaa !326, !alias.scope !1005
  call void @_ZN4llvm7CCState6addLocERKNS_11CCValAssignE(ptr noundef nonnull align 8 dereferenceable(420) %6, ptr noundef nonnull align 8 dereferenceable(26) %26)
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #8
  br label %bb.bp

bb.bp:                                            ; preds = %switch.early.test311, %bb.bh, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit177, %bb.ax, %_ZN4llvm7CCState11AllocateRegEt.exit163, %bb.ai, %_ZN4llvm7CCState11AllocateRegEt.exit151, %_ZN4llvm7CCState11AllocateRegEt.exit, %bb.m, %.thread219, %.critedge24, %.critedge22, %.critedge20, %_ZNK4llvm8TypeSizecvmEv.exit, %.critedge16, %.critedge14, %.critedge12, %bb.d, %bb.b
  %.15 = phi i1 [ false, %bb.b ], [ false, %bb.d ], [ false, %bb.m ], [ false, %.critedge12 ], [ false, %.critedge14 ], [ false, %.critedge16 ], [ false, %_ZNK4llvm8TypeSizecvmEv.exit ], [ false, %.critedge20 ], [ false, %.critedge22 ], [ false, %.critedge24 ], [ false, %.thread219 ], [ false, %bb.bh ], [ false, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit177 ], [ false, %bb.ax ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit163 ], [ false, %bb.ai ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit151 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit ], [ true, %switch.early.test311 ]
  ret i1 %.15
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL17CC_X86_32_RegCalljN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i64 %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(420) %6) unnamed_addr #0 {
bb.a:
  %7 = alloca %"class.llvm::MVT", align 2         ; 5 uses
  %8 = alloca %"struct.llvm::ISD::ArgFlagsTy", align 8 ; 3 uses
  %9 = alloca %"struct.llvm::ISD::ArgFlagsTy", align 8 ; 3 uses
  %10 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %11 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %12 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %13 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %14 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %15 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %16 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %17 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %18 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %19 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %20 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %21 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %22 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %23 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %24 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %25 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %26 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  store i16 %2, ptr %7, align 2
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !300, !align !319
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !156, !nonnull !300, !align !319 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 522
  %i.f = load i8, ptr %i.e, align 2, !tbaa !298, !range !299, !noundef !300
end_hunk_3
begin_hunk_4_@_ZL17CC_X86_32_RegCalljN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE:bb.a
  br i1 %.not.i.i174.5, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit177, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ie = and i32 %i.hy, 32
  %.not.i.i174.6 = icmp eq i32 %i.ie, 0
  br i1 %.not.i.i174.6, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit177, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.if = and i32 %i.hy, 64
  %.not.i.i174.7 = icmp eq i32 %i.if, 0
  br i1 %.not.i.i174.7, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit177, label %.thread262

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit177: ; preds = %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az
  %.0613.i.i173.lcssa.wide = phi i64 [ 0, %bb.az ], [ 1, %bb.ba ], [ 2, %bb.bb ], [ 3, %bb.bc ], [ 4, %bb.bd ], [ 5, %bb.be ], [ 6, %bb.bf ], [ 7, %bb.bg ]
  %i.ig = getelementptr inbounds nuw [2 x i8], ptr @_ZZL20RetCC_X86_32_RegCalljN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList7, i64 %.0613.i.i173.lcssa.wide
  %i.ih = load i16, ptr %i.ig, align 2, !tbaa !303 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %6, i16 noundef zeroext %i.ih) #8
  %i.ii = zext i16 %i.ih to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #8
  %i.ij = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i8 0, ptr %i.ij, align 8, !tbaa !305, !alias.scope !1042
  %i.ik = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i32 %0, ptr %i.ik, align 8, !tbaa !316, !alias.scope !1042
  %i.il = getelementptr inbounds nuw i8, ptr %16, i64 20 ; 2 uses
  %i.im = load i8, ptr %i.il, align 4, !alias.scope !1042
  %i.in = and i8 %i.im, -128
  %i.io = trunc i32 %.2339 to i8
  %i.ip = shl i8 %i.io, 1
  %i.iq = and i8 %i.ip, 126
  %i.ir = or disjoint i8 %i.in, %i.iq
  store i8 %i.ir, ptr %i.il, align 4, !alias.scope !1042
  %i.is = getelementptr inbounds nuw i8, ptr %16, i64 22
  store i16 %1, ptr %i.is, align 2, !tbaa !317, !alias.scope !1042
  %i.it = getelementptr inbounds nuw i8, ptr %16, i64 24
  store i16 %.sroa.0.0.copyload145343, ptr %i.it, align 8, !tbaa !317, !alias.scope !1042
  store i32 %i.ii, ptr %16, align 8, !tbaa !302, !alias.scope !1042
  call void @_ZN4llvm7CCState6addLocERKNS_11CCValAssignE(ptr noundef nonnull align 8 dereferenceable(420) %6, ptr noundef nonnull align 8 dereferenceable(26) %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #8
  br label %bb.bq

.thread262:                                       ; preds = %bb.bg, %.thread250, %.critedge8
  %i.iu = phi i1 [ false, %.thread250 ], [ %i.hp, %.critedge8 ], [ %i.hp, %bb.bg ] ; 3 uses
  switch i16 %.sroa.0.0.copyload145343, label %.thread270 [
    i16 50, label %.critedge10
    i16 64, label %.critedge10.fold.split
    i16 82, label %.critedge10.fold.split
    i16 97, label %.critedge10.fold.split
    i16 145, label %.critedge10.fold.split
    i16 157, label %.critedge10.fold.split
  ]

.critedge10.fold.split:                           ; preds = %.thread262, %.thread262, %.thread262, %.thread262, %.thread262
  br label %.critedge10

.critedge10:                                      ; preds = %.thread262, %.critedge10.fold.split
  %i.iv = phi i1 [ false, %.critedge10.fold.split ], [ true, %.thread262 ] ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.d, i64 360
  %i.ix = load i32, ptr %i.iw, align 8, !tbaa !339
  %i.iy = icmp sgt i32 %i.ix, 8
  br i1 %i.iy, label %bb.bh, label %.thread270

bb.bh:                                            ; preds = %.critedge10
  %i.iz = tail call i32 @_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE(ptr noundef nonnull align 8 dereferenceable(420) %6, ptr nonnull @_ZZL17CC_X86_32_RegCalljN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList5, i64 8) ; 2 uses
  %.not143.not = icmp eq i32 %i.iz, 0
  br i1 %.not143.not, label %.thread270, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #8
  %i.ja = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i8 0, ptr %i.ja, align 8, !tbaa !305, !alias.scope !1043
  %i.jb = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i32 %0, ptr %i.jb, align 8, !tbaa !316, !alias.scope !1043
  %i.jc = getelementptr inbounds nuw i8, ptr %17, i64 20 ; 2 uses
  %i.jd = load i8, ptr %i.jc, align 4, !alias.scope !1043
  %i.je = and i8 %i.jd, -128
  %i.jf = trunc i32 %.2339 to i8
  %i.jg = shl i8 %i.jf, 1
  %i.jh = and i8 %i.jg, 126
  %i.ji = or disjoint i8 %i.je, %i.jh
  store i8 %i.ji, ptr %i.jc, align 4, !alias.scope !1043
  %i.jj = getelementptr inbounds nuw i8, ptr %17, i64 22
  store i16 %1, ptr %i.jj, align 2, !tbaa !317, !alias.scope !1043
  %i.jk = getelementptr inbounds nuw i8, ptr %17, i64 24
  store i16 %.sroa.0.0.copyload145343, ptr %i.jk, align 8, !tbaa !317, !alias.scope !1043
  store i32 %i.iz, ptr %17, align 8, !tbaa !302, !alias.scope !1043
  call void @_ZN4llvm7CCState6addLocERKNS_11CCValAssignE(ptr noundef nonnull align 8 dereferenceable(420) %6, ptr noundef nonnull align 8 dereferenceable(26) %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #8
  br label %bb.bq

.thread270:                                       ; preds = %.thread262, %bb.ak, %.thread219, %.thread218, %bb.bh, %.critedge10
  %.sroa.0.0.copyload145341 = phi i16 [ %.sroa.0.0.copyload145343, %bb.bh ], [ %.sroa.0.0.copyload145343, %.critedge10 ], [ %.sroa.0.0.copyload145343, %.thread262 ], [ 8, %.thread218 ], [ %.sroa.0.0.copyload145342, %.thread219 ], [ 16, %bb.ak ] ; 16 uses
  %.2340 = phi i32 [ %.2339, %bb.bh ], [ %.2339, %.critedge10 ], [ %.2339, %.thread262 ], [ %.2, %.thread218 ], [ %.2338, %.thread219 ], [ %.2339, %bb.ak ] ; 7 uses
  %i.jl = phi i1 [ %i.iv, %bb.bh ], [ %i.iv, %.critedge10 ], [ false, %.thread262 ], [ false, %.thread218 ], [ false, %.thread219 ], [ false, %bb.ak ]
  %i.jm = phi i1 [ %i.ho, %bb.bh ], [ %i.ho, %.critedge10 ], [ %i.ho, %.thread262 ], [ false, %.thread218 ], [ false, %.thread219 ], [ false, %bb.ak ]
  %i.jn = phi i1 [ %i.ex, %bb.bh ], [ %i.ex, %.critedge10 ], [ %i.ex, %.thread262 ], [ false, %.thread218 ], [ false, %.thread219 ], [ %i.ex, %bb.ak ] ; 2 uses
  %i.jo = phi i1 [ false, %bb.bh ], [ false, %.critedge10 ], [ false, %.thread262 ], [ false, %.thread218 ], [ false, %.thread219 ], [ true, %bb.ak ]
  %i.jp = phi i1 [ %i.iu, %bb.bh ], [ %i.iu, %.critedge10 ], [ %i.iu, %.thread262 ], [ false, %.thread218 ], [ false, %.thread219 ], [ false, %bb.ak ]
  %i.jq = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !300, !align !319 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !156, !nonnull !300, !align !319
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 522
  %i.ju = load i8, ptr %i.jt, align 2, !tbaa !298, !range !299, !noundef !300
  %i.jv = trunc nuw i8 %i.ju to i1
  br i1 %i.jv, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %.thread270
  br i1 %i.jn, label %.critedge12, label %switch.early.test312

switch.early.test312:                             ; preds = %bb.bj
  switch i16 %.sroa.0.0.copyload145341, label %.thread273 [
    i16 15, label %.critedge12
    i16 8, label %.critedge12
    i16 7, label %.critedge12
  ]

.critedge12:                                      ; preds = %switch.early.test312, %switch.early.test312, %switch.early.test312, %bb.bj
  %i.jw = tail call noundef i64 @_ZN4llvm7CCState13AllocateStackEjNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %6, i32 noundef 8, i8 3)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #8
  %i.jx = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.jy = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i32 %0, ptr %i.jy, align 8, !tbaa !316, !alias.scope !1044
  %i.jz = getelementptr inbounds nuw i8, ptr %18, i64 20 ; 2 uses
  %i.ka = load i8, ptr %i.jz, align 4, !alias.scope !1044
  %i.kb = and i8 %i.ka, -128
  %i.kc = trunc i32 %.2340 to i8
  %i.kd = shl i8 %i.kc, 1
  %i.ke = and i8 %i.kd, 126
  %i.kf = or disjoint i8 %i.kb, %i.ke
  store i8 %i.kf, ptr %i.jz, align 4, !alias.scope !1044
  %i.kg = getelementptr inbounds nuw i8, ptr %18, i64 22
  store i16 %1, ptr %i.kg, align 2, !tbaa !317, !alias.scope !1044
  %i.kh = getelementptr inbounds nuw i8, ptr %18, i64 24
  store i16 %.sroa.0.0.copyload145341, ptr %i.kh, align 8, !tbaa !317, !alias.scope !1044
  store i8 1, ptr %i.jx, align 8, !tbaa !305, !alias.scope !1044
  store i64 %i.jw, ptr %18, align 8, !tbaa !326, !alias.scope !1044
  call void @_ZN4llvm7CCState6addLocERKNS_11CCValAssignE(ptr noundef nonnull align 8 dereferenceable(420) %6, ptr noundef nonnull align 8 dereferenceable(26) %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #8
  br label %bb.bq

bb.bk:                                            ; preds = %.thread270
  %i.ki = icmp eq i16 %.sroa.0.0.copyload145341, 7
  %brmerge = or i1 %i.ki, %i.jn
  br i1 %brmerge, label %.critedge14, label %bb.bl

.critedge14:                                      ; preds = %bb.bk
  %i.kj = tail call noundef i64 @_ZN4llvm7CCState13AllocateStackEjNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %6, i32 noundef 4, i8 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #8
  %i.kk = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.kl = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i32 %0, ptr %i.kl, align 8, !tbaa !316, !alias.scope !1045
  %i.km = getelementptr inbounds nuw i8, ptr %19, i64 20 ; 2 uses
  %i.kn = load i8, ptr %i.km, align 4, !alias.scope !1045
  %i.ko = and i8 %i.kn, -128
  %i.kp = trunc i32 %.2340 to i8
  %i.kq = shl i8 %i.kp, 1
  %i.kr = and i8 %i.kq, 126
  %i.ks = or disjoint i8 %i.ko, %i.kr
  store i8 %i.ks, ptr %i.km, align 4, !alias.scope !1045
  %i.kt = getelementptr inbounds nuw i8, ptr %19, i64 22
  store i16 %1, ptr %i.kt, align 2, !tbaa !317, !alias.scope !1045
  %i.ku = getelementptr inbounds nuw i8, ptr %19, i64 24
  store i16 %.sroa.0.0.copyload145341, ptr %i.ku, align 8, !tbaa !317, !alias.scope !1045
  store i8 1, ptr %i.kk, align 8, !tbaa !305, !alias.scope !1045
  store i64 %i.kj, ptr %19, align 8, !tbaa !326, !alias.scope !1045
  call void @_ZN4llvm7CCState6addLocERKNS_11CCValAssignE(ptr noundef nonnull align 8 dereferenceable(420) %6, ptr noundef nonnull align 8 dereferenceable(26) %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #8
  br label %bb.bq

bb.bl:                                            ; preds = %bb.bk
  switch i16 %.sroa.0.0.copyload145341, label %.thread273 [
    i16 8, label %.critedge16
    i16 15, label %.critedge16
  ]

.critedge16:                                      ; preds = %bb.bl, %bb.bl
  %i.kv = tail call noundef i64 @_ZN4llvm7CCState13AllocateStackEjNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %6, i32 noundef 8, i8 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #8
  %i.kw = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.kx = getelementptr inbounds nuw i8, ptr %20, i64 16
  store i32 %0, ptr %i.kx, align 8, !tbaa !316, !alias.scope !1046
  %i.ky = getelementptr inbounds nuw i8, ptr %20, i64 20 ; 2 uses
  %i.kz = load i8, ptr %i.ky, align 4, !alias.scope !1046
  %i.la = and i8 %i.kz, -128
  %i.lb = trunc i32 %.2340 to i8
  %i.lc = shl i8 %i.lb, 1
  %i.ld = and i8 %i.lc, 126
  %i.le = or disjoint i8 %i.la, %i.ld
  store i8 %i.le, ptr %i.ky, align 4, !alias.scope !1046
  %i.lf = getelementptr inbounds nuw i8, ptr %20, i64 22
  store i16 %1, ptr %i.lf, align 2, !tbaa !317, !alias.scope !1046
  %i.lg = getelementptr inbounds nuw i8, ptr %20, i64 24
  store i16 %.sroa.0.0.copyload145341, ptr %i.lg, align 8, !tbaa !317, !alias.scope !1046
  store i8 1, ptr %i.kw, align 8, !tbaa !305, !alias.scope !1046
  store i64 %i.kv, ptr %20, align 8, !tbaa !326, !alias.scope !1046
  call void @_ZN4llvm7CCState6addLocERKNS_11CCValAssignE(ptr noundef nonnull align 8 dereferenceable(420) %6, ptr noundef nonnull align 8 dereferenceable(26) %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #8
  br label %bb.bq

.thread273:                                       ; preds = %switch.early.test312, %bb.bl
  %i.lh = icmp eq i16 %.sroa.0.0.copyload145341, 17
  %or.cond293 = select i1 %i.jo, i1 true, i1 %i.lh
  br i1 %or.cond293, label %.critedge18, label %bb.bn

.critedge18:                                      ; preds = %.thread273
  %i.li = tail call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.jq) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #8
  store i16 %.sroa.0.0.copyload145341, ptr %21, align 8, !tbaa !317
  %i.lj = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr null, ptr %i.lj, align 8, !tbaa !342
  %i.lk = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !343, !nonnull !300, !align !319
  %i.lm = call noundef ptr @_ZNK4llvm3EVT13getTypeForEVTERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.ll) #8
  %i.ln = call { i64, i8 } @_ZNK4llvm10DataLayout16getTypeAllocSizeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.li, ptr noundef %i.lm) #8 ; 2 uses
  %.fca.1.extract = extractvalue { i64, i8 } %i.ln, 1
  %i.lo = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.lo, label %bb.bm, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.bm:                                            ; preds = %.critedge18
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.2) #9
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %.critedge18
  %.fca.0.extract = extractvalue { i64, i8 } %i.ln, 0
  %i.lp = trunc i64 %.fca.0.extract to i32
  %i.lq = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !300, !align !319
  %i.lr = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.lq) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #8
  store i16 %.sroa.0.0.copyload145341, ptr %22, align 8, !tbaa !317
  %i.ls = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr null, ptr %i.ls, align 8, !tbaa !342
  %i.lt = load ptr, ptr %i.lk, align 8, !tbaa !343, !nonnull !300, !align !319
  %i.lu = call noundef ptr @_ZNK4llvm3EVT13getTypeForEVTERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.lt) #8
  %i.lv = call i8 @_ZNK4llvm10DataLayout15getABITypeAlignEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.lr, ptr noundef %i.lu) #8
  %i.lw = call noundef i64 @_ZN4llvm7CCState13AllocateStackEjNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %6, i32 noundef %i.lp, i8 %i.lv)
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #8
  %i.lx = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.ly = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i32 %0, ptr %i.ly, align 8, !tbaa !316, !alias.scope !1047
  %i.lz = getelementptr inbounds nuw i8, ptr %23, i64 20 ; 2 uses
  %i.ma = load i8, ptr %i.lz, align 4, !alias.scope !1047
  %i.mb = and i8 %i.ma, -128
  %i.mc = trunc i32 %.2340 to i8
  %i.md = shl i8 %i.mc, 1
  %i.me = and i8 %i.md, 126
  %i.mf = or disjoint i8 %i.mb, %i.me
  store i8 %i.mf, ptr %i.lz, align 4, !alias.scope !1047
  %i.mg = getelementptr inbounds nuw i8, ptr %23, i64 22
  store i16 %1, ptr %i.mg, align 2, !tbaa !317, !alias.scope !1047
  %i.mh = getelementptr inbounds nuw i8, ptr %23, i64 24
  store i16 %.sroa.0.0.copyload145341, ptr %i.mh, align 8, !tbaa !317, !alias.scope !1047
  store i8 1, ptr %i.lx, align 8, !tbaa !305, !alias.scope !1047
  store i64 %i.lw, ptr %23, align 8, !tbaa !326, !alias.scope !1047
  call void @_ZN4llvm7CCState6addLocERKNS_11CCValAssignE(ptr noundef nonnull align 8 dereferenceable(420) %6, ptr noundef nonnull align 8 dereferenceable(26) %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #8
  br label %bb.bq

bb.bn:                                            ; preds = %.thread273
  br i1 %i.jm, label %.critedge20, label %switch.early.test

switch.early.test:                                ; preds = %bb.bn
  switch i16 %.sroa.0.0.copyload145341, label %bb.bo [
    i16 154, label %.critedge20
    i16 136, label %.critedge20
    i16 94, label %.critedge20
    i16 73, label %.critedge20
    i16 62, label %.critedge20
  ]

.critedge20:                                      ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %bb.bn
  %i.mi = tail call noundef i64 @_ZN4llvm7CCState13AllocateStackEjNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %6, i32 noundef 16, i8 4)
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #8
  %i.mj = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.mk = getelementptr inbounds nuw i8, ptr %24, i64 16
  store i32 %0, ptr %i.mk, align 8, !tbaa !316, !alias.scope !1048
  %i.ml = getelementptr inbounds nuw i8, ptr %24, i64 20 ; 2 uses
  %i.mm = load i8, ptr %i.ml, align 4, !alias.scope !1048
  %i.mn = and i8 %i.mm, -128
  %i.mo = trunc i32 %.2340 to i8
  %i.mp = shl i8 %i.mo, 1
  %i.mq = and i8 %i.mp, 126
  %i.mr = or disjoint i8 %i.mn, %i.mq
  store i8 %i.mr, ptr %i.ml, align 4, !alias.scope !1048
  %i.ms = getelementptr inbounds nuw i8, ptr %24, i64 22
  store i16 %1, ptr %i.ms, align 2, !tbaa !317, !alias.scope !1048
  %i.mt = getelementptr inbounds nuw i8, ptr %24, i64 24
  store i16 %.sroa.0.0.copyload145341, ptr %i.mt, align 8, !tbaa !317, !alias.scope !1048
  store i8 1, ptr %i.mj, align 8, !tbaa !305, !alias.scope !1048
  store i64 %i.mi, ptr %24, align 8, !tbaa !326, !alias.scope !1048
  call void @_ZN4llvm7CCState6addLocERKNS_11CCValAssignE(ptr noundef nonnull align 8 dereferenceable(420) %6, ptr noundef nonnull align 8 dereferenceable(26) %24)
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #8
  br label %bb.bq

bb.bo:                                            ; preds = %switch.early.test
  br i1 %i.jp, label %.critedge22, label %switch.early.test310

switch.early.test310:                             ; preds = %bb.bo
  switch i16 %.sroa.0.0.copyload145341, label %bb.bp [
    i16 156, label %.critedge22
    i16 140, label %.critedge22
    i16 96, label %.critedge22
    i16 77, label %.critedge22
    i16 63, label %.critedge22
  ]

.critedge22:                                      ; preds = %switch.early.test310, %switch.early.test310, %switch.early.test310, %switch.early.test310, %switch.early.test310, %bb.bo
  %i.mu = tail call noundef i64 @_ZN4llvm7CCState13AllocateStackEjNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %6, i32 noundef 32, i8 5)
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #8
  %i.mv = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.mw = getelementptr inbounds nuw i8, ptr %25, i64 16
  store i32 %0, ptr %i.mw, align 8, !tbaa !316, !alias.scope !1049
  %i.mx = getelementptr inbounds nuw i8, ptr %25, i64 20 ; 2 uses
  %i.my = load i8, ptr %i.mx, align 4, !alias.scope !1049
  %i.mz = and i8 %i.my, -128
  %i.na = trunc i32 %.2340 to i8
  %i.nb = shl i8 %i.na, 1
  %i.nc = and i8 %i.nb, 126
  %i.nd = or disjoint i8 %i.mz, %i.nc
  store i8 %i.nd, ptr %i.mx, align 4, !alias.scope !1049
  %i.ne = getelementptr inbounds nuw i8, ptr %25, i64 22
  store i16 %1, ptr %i.ne, align 2, !tbaa !317, !alias.scope !1049
  %i.nf = getelementptr inbounds nuw i8, ptr %25, i64 24
  store i16 %.sroa.0.0.copyload145341, ptr %i.nf, align 8, !tbaa !317, !alias.scope !1049
  store i8 1, ptr %i.mv, align 8, !tbaa !305, !alias.scope !1049
  store i64 %i.mu, ptr %25, align 8, !tbaa !326, !alias.scope !1049
  call void @_ZN4llvm7CCState6addLocERKNS_11CCValAssignE(ptr noundef nonnull align 8 dereferenceable(420) %6, ptr noundef nonnull align 8 dereferenceable(26) %25)
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #8
  br label %bb.bq

bb.bp:                                            ; preds = %switch.early.test310
  br i1 %i.jl, label %.critedge24, label %switch.early.test311

switch.early.test311:                             ; preds = %bb.bp
  switch i16 %.sroa.0.0.copyload145341, label %bb.bq [
    i16 157, label %.critedge24
    i16 145, label %.critedge24
    i16 97, label %.critedge24
    i16 82, label %.critedge24
    i16 64, label %.critedge24
  ]

.critedge24:                                      ; preds = %switch.early.test311, %switch.early.test311, %switch.early.test311, %switch.early.test311, %switch.early.test311, %bb.bp
  %i.ng = tail call noundef i64 @_ZN4llvm7CCState13AllocateStackEjNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %6, i32 noundef 64, i8 6)
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #8
  %i.nh = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.ni = getelementptr inbounds nuw i8, ptr %26, i64 16
  store i32 %0, ptr %i.ni, align 8, !tbaa !316, !alias.scope !1050
  %i.nj = getelementptr inbounds nuw i8, ptr %26, i64 20 ; 2 uses
  %i.nk = load i8, ptr %i.nj, align 4, !alias.scope !1050
  %i.nl = and i8 %i.nk, -128
  %i.nm = trunc i32 %.2340 to i8
  %i.nn = shl i8 %i.nm, 1
  %i.no = and i8 %i.nn, 126
  %i.np = or disjoint i8 %i.nl, %i.no
  store i8 %i.np, ptr %i.nj, align 4, !alias.scope !1050
  %i.nq = getelementptr inbounds nuw i8, ptr %26, i64 22
  store i16 %1, ptr %i.nq, align 2, !tbaa !317, !alias.scope !1050
  %i.nr = getelementptr inbounds nuw i8, ptr %26, i64 24
  store i16 %.sroa.0.0.copyload145341, ptr %i.nr, align 8, !tbaa !317, !alias.scope !1050
  store i8 1, ptr %i.nh, align 8, !tbaa !305, !alias.scope !1050
  store i64 %i.ng, ptr %26, align 8, !tbaa !326, !alias.scope !1050
  call void @_ZN4llvm7CCState6addLocERKNS_11CCValAssignE(ptr noundef nonnull align 8 dereferenceable(420) %6, ptr noundef nonnull align 8 dereferenceable(26) %26)
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #8
  br label %bb.bq

bb.bq:                                            ; preds = %switch.early.test311, %bb.bi, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit177, %bb.ay, %_ZN4llvm7CCState11AllocateRegEt.exit163, %bb.aj, %_ZN4llvm7CCState11AllocateRegEt.exit151, %_ZN4llvm7CCState11AllocateRegEt.exit, %bb.n, %.thread219, %.critedge24, %.critedge22, %.critedge20, %_ZNK4llvm8TypeSizecvmEv.exit, %.critedge16, %.critedge14, %.critedge12, %bb.d, %bb.b
  %.15 = phi i1 [ false, %bb.b ], [ false, %bb.d ], [ false, %bb.n ], [ false, %.critedge12 ], [ false, %.critedge14 ], [ false, %.critedge16 ], [ false, %_ZNK4llvm8TypeSizecvmEv.exit ], [ false, %.critedge20 ], [ false, %.critedge22 ], [ false, %.critedge24 ], [ false, %.thread219 ], [ false, %bb.bi ], [ false, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit177 ], [ false, %bb.ay ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit163 ], [ false, %bb.aj ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit151 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit ], [ true, %switch.early.test311 ]
  ret i1 %.15
}

; Function Attrs: noreturn
declare void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL31CC_X86_VectorCallAssignRegisterRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0, ptr nofree noundef nonnull readonly align 2 captures(none) dereferenceable(2) %1, ptr nofree noundef nonnull readonly align 2 captures(none) dereferenceable(2) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(420) %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %6 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %.val = load i16, ptr %1, align 2, !tbaa !1055  ; 2 uses
  %i.a = add i16 %.val, -19
  %spec.select.i.i.i = icmp ult i16 %i.a, 144
  br i1 %spec.select.i.i.i, label %_ZNK4llvm3MVT14is512BitVectorEv.exit.i, label %_ZL24CC_X86_VectorCallGetSSEsRKN4llvm3MVTE.exit

_ZNK4llvm3MVT14is512BitVectorEv.exit.i:           ; preds = %bb.a
  %i.b = zext nneg i16 %.val to i64
  %i.c = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 -16
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.d, align 16 ; 2 uses
  %switch.selectcmp.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i, 256
  %switch.select.i = select i1 %switch.selectcmp.i, ptr @_ZZL24CC_X86_VectorCallGetSSEsRKN4llvm3MVTEE10RegListYMM, ptr @_ZZL24CC_X86_VectorCallGetSSEsRKN4llvm3MVTEE10RegListXMM
  %switch.selectcmp1.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i, 512
  %switch.select2.i = select i1 %switch.selectcmp1.i, ptr @_ZZL24CC_X86_VectorCallGetSSEsRKN4llvm3MVTEE10RegListZMM, ptr %switch.select.i
  br label %_ZL24CC_X86_VectorCallGetSSEsRKN4llvm3MVTE.exit

_ZL24CC_X86_VectorCallGetSSEsRKN4llvm3MVTE.exit:  ; preds = %bb.a, %_ZNK4llvm3MVT14is512BitVectorEv.exit.i
  %.sroa.0.0.i = phi ptr [ %switch.select2.i, %_ZNK4llvm3MVT14is512BitVectorEv.exit.i ], [ @_ZZL24CC_X86_VectorCallGetSSEsRKN4llvm3MVTEE10RegListXMM, %bb.a ] ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40, !nonnull !300, !align !319
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !156, !nonnull !300, !align !319
end_hunk_4
