Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SystemZISelLowering?download=true
inline.NumInlined: 11116
inline.NumDeleted: 2735
loop-unroll.NumCompletelyUnrolled: 89
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 99
begin_hunk_0_@_ZL10CC_SystemZjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE:bb.a
  %i.qf = and i32 %i.qb, 262144
  %.not.i.i41.3.i.i = icmp eq i32 %i.qf, 0
  br i1 %.not.i.i41.3.i.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit44.i.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.qg = and i32 %i.qb, 32
  %.not.i.i41.4.i.i = icmp eq i32 %i.qg, 0
  br i1 %.not.i.i41.4.i.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit44.i.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.qh = and i32 %i.qb, 64
  %.not.i.i41.5.i.i = icmp eq i32 %i.qh, 0
  br i1 %.not.i.i41.5.i.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit44.i.i, label %.thread64.i.i

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit44.i.i: ; preds = %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq
  %.0613.i.i40.lcssa.wide.i.i = phi i64 [ 0, %bb.cq ], [ 1, %bb.cr ], [ 2, %bb.cs ], [ 3, %bb.ct ], [ 4, %bb.cu ], [ 5, %bb.cv ]
  %i.qi = getelementptr inbounds nuw [2 x i8], ptr @_ZZL14CC_SystemZ_GHCjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList3, i64 %.0613.i.i40.lcssa.wide.i.i
  %i.qj = load i16, ptr %i.qi, align 2, !tbaa !171 ; 2 uses
  call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.qj) #27
  %i.qk = zext i16 %i.qj to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.ql = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i8 0, ptr %i.ql, align 8, !tbaa !534, !alias.scope !1088
  %i.qm = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 %0, ptr %i.qm, align 8, !tbaa !549, !alias.scope !1088
  %i.qn = getelementptr inbounds nuw i8, ptr %10, i64 20 ; 2 uses
  %i.qo = load i8, ptr %i.qn, align 4, !alias.scope !1088
  %i.qp = and i8 %i.qo, -128
  %i.qq = trunc i32 %3 to i8
  %i.qr = shl i8 %i.qq, 1
  %i.qs = and i8 %i.qr, 126
  %i.qt = or disjoint i8 %i.qp, %i.qs
  store i8 %i.qt, ptr %i.qn, align 4, !alias.scope !1088
  %i.qu = getelementptr inbounds nuw i8, ptr %10, i64 22
  store i16 %1, ptr %i.qu, align 2, !tbaa !177, !alias.scope !1088
  %i.qv = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i16 15, ptr %i.qv, align 8, !tbaa !177, !alias.scope !1088
  store i32 %i.qk, ptr %10, align 8, !tbaa !165, !alias.scope !1088
  %i.qw = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !550, !nonnull !28, !align !81 ; 4 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 8 ; 3 uses
  %i.qz = load i32, ptr %i.qy, align 8, !tbaa !192 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qx, i64 12
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !193
  %.not.i.i45.i.i = icmp ult i32 %i.qz, %i.rb
  br i1 %.not.i.i45.i.i, label %bb.cx, label %bb.cw, !prof !194

bb.cw:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit44.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.qx, ptr noundef nonnull align 8 dereferenceable(26) %10)
  br label %bb.cy

bb.cx:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit44.i.i
  %i.rc = zext i32 %i.qz to i64
  %i.rd = load ptr, ptr %i.qx, align 8, !tbaa !30
  %i.re = getelementptr inbounds nuw [32 x i8], ptr %i.rd, i64 %i.rc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.re, ptr noundef nonnull align 8 dereferenceable(32) %10, i64 32, i1 false)
  %i.rf = load i32, ptr %i.qy, align 8, !tbaa !192
  %i.rg = add i32 %i.rf, 1
  store i32 %i.rg, ptr %i.qy, align 8, !tbaa !192
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %_ZL14CC_SystemZ_ELFjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit.thread

.thread64.i.i:                                    ; preds = %bb.cv, %bb.cm, %bb.cd, %bb.br
  %i.rh = getelementptr inbounds nuw i8, ptr %i.mz, i64 385
  %i.ri = load i8, ptr %i.rh, align 1, !tbaa !163, !range !27, !noundef !28
  %i.rj = trunc nuw i8 %i.ri to i1
  br i1 %i.rj, label %bb.cz, label %.thread70.i.i

bb.cz:                                            ; preds = %.thread64.i.i
  switch i16 %2, label %.thread70.i.i [
    i16 48, label %.critedge.i.i
    i16 62, label %.critedge.i.i
    i16 73, label %.critedge.i.i
    i16 94, label %.critedge.i.i
    i16 136, label %.critedge.i.i
    i16 154, label %.critedge.i.i
  ]

.critedge.i.i:                                    ; preds = %bb.cz, %bb.cz, %bb.cz, %bb.cz, %bb.cz, %bb.cz
  %i.rk = and i64 %4, 34359738368
  %.not.i.i51 = icmp eq i64 %i.rk, 0
  br i1 %.not.i.i51, label %bb.da, label %.thread70.i.i

bb.da:                                            ; preds = %.critedge.i.i
  %i.rl = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !30
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 4
  %i.ro = load i32, ptr %i.rn, align 4, !tbaa !165 ; 6 uses
  %i.rp = and i32 %i.ro, 524288
  %.not.i.i48.i.i = icmp eq i32 %i.rp, 0
  br i1 %.not.i.i48.i.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit51.i.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.rq = and i32 %i.ro, 1048576
  %.not.i.i48.1.i.i = icmp eq i32 %i.rq, 0
  br i1 %.not.i.i48.1.i.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit51.i.i, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.rr = and i32 %i.ro, 2097152
  %.not.i.i48.2.i.i = icmp eq i32 %i.rr, 0
  br i1 %.not.i.i48.2.i.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit51.i.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.rs = and i32 %i.ro, 4194304
  %.not.i.i48.3.i.i = icmp eq i32 %i.rs, 0
  br i1 %.not.i.i48.3.i.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit51.i.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.rt = and i32 %i.ro, 8388608
  %.not.i.i48.4.i.i = icmp eq i32 %i.rt, 0
  br i1 %.not.i.i48.4.i.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit51.i.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.ru = and i32 %i.ro, 16777216
  %.not.i.i48.5.i.i = icmp eq i32 %i.ru, 0
  br i1 %.not.i.i48.5.i.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit51.i.i, label %.thread70.i.i

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit51.i.i: ; preds = %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da
  %.0613.i.i47.lcssa.wide.i.i = phi i64 [ 0, %bb.da ], [ 1, %bb.db ], [ 2, %bb.dc ], [ 3, %bb.dd ], [ 4, %bb.de ], [ 5, %bb.df ]
  %i.rv = getelementptr inbounds nuw [2 x i8], ptr @_ZZL14CC_SystemZ_GHCjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList4, i64 %.0613.i.i47.lcssa.wide.i.i
  %i.rw = load i16, ptr %i.rv, align 2, !tbaa !171 ; 2 uses
  call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.rw) #27
  %i.rx = zext i16 %i.rw to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  %i.ry = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i8 0, ptr %i.ry, align 8, !tbaa !534, !alias.scope !1089
  %i.rz = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 %0, ptr %i.rz, align 8, !tbaa !549, !alias.scope !1089
  %i.sa = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 2 uses
  %i.sb = load i8, ptr %i.sa, align 4, !alias.scope !1089
  %i.sc = and i8 %i.sb, -128
  %i.sd = trunc i32 %3 to i8
  %i.se = shl i8 %i.sd, 1
  %i.sf = and i8 %i.se, 126
  %i.sg = or disjoint i8 %i.sc, %i.sf
  store i8 %i.sg, ptr %i.sa, align 4, !alias.scope !1089
  %i.sh = getelementptr inbounds nuw i8, ptr %11, i64 22
  store i16 %1, ptr %i.sh, align 2, !tbaa !177, !alias.scope !1089
  %i.si = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i16 %2, ptr %i.si, align 8, !tbaa !177, !alias.scope !1089
  store i32 %i.rx, ptr %11, align 8, !tbaa !165, !alias.scope !1089
  %i.sj = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !550, !nonnull !28, !align !81 ; 4 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 8 ; 3 uses
  %i.sm = load i32, ptr %i.sl, align 8, !tbaa !192 ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sk, i64 12
  %i.so = load i32, ptr %i.sn, align 4, !tbaa !193
  %.not.i.i52.i.i = icmp ult i32 %i.sm, %i.so
  br i1 %.not.i.i52.i.i, label %bb.dh, label %bb.dg, !prof !194

bb.dg:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit51.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.sk, ptr noundef nonnull align 8 dereferenceable(26) %11)
  br label %bb.di

bb.dh:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit51.i.i
  %i.sp = zext i32 %i.sm to i64
  %i.sq = load ptr, ptr %i.sk, align 8, !tbaa !30
  %i.sr = getelementptr inbounds nuw [32 x i8], ptr %i.sq, i64 %i.sp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.sr, ptr noundef nonnull align 8 dereferenceable(32) %11, i64 32, i1 false)
  %i.ss = load i32, ptr %i.sl, align 8, !tbaa !192
  %i.st = add i32 %i.ss, 1
  store i32 %i.st, ptr %i.sl, align 8, !tbaa !192
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %_ZL14CC_SystemZ_ELFjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit.thread

.thread70.i.i:                                    ; preds = %bb.df, %.critedge.i.i, %bb.cz, %.thread64.i.i
  call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.33, i1 noundef zeroext true) #29
  unreachable

bb.dj:                                            ; preds = %bb.bq
  %i.su = icmp eq i16 %2, 7
  br i1 %i.su, label %bb.dk, label %bb.dm

bb.dk:                                            ; preds = %bb.dj
  %i.sv = and i64 %4, 2
  %.not.i50 = icmp eq i64 %i.sv, 0
  br i1 %.not.i50, label %bb.dl, label %.sink.split.i

bb.dl:                                            ; preds = %bb.dk
  %i.sw = trunc i64 %4 to i1
  br i1 %i.sw, label %.sink.split.i, label %.thread326.i

.sink.split.i:                                    ; preds = %bb.dl, %bb.dk
  %.sink345.i = phi i32 [ 1, %bb.dk ], [ 2, %bb.dl ] ; 2 uses
  store i16 8, ptr %13, align 2, !tbaa !177
  store i32 %.sink345.i, ptr %i.b, align 4, !tbaa !541
  br label %bb.dm

bb.dm:                                            ; preds = %.sink.split.i, %bb.dj
  %.pr270.pre297.i = phi i16 [ %2, %bb.dj ], [ 8, %.sink.split.i ] ; 3 uses
  %i.sx = phi i32 [ %3, %bb.dj ], [ %.sink345.i, %.sink.split.i ] ; 2 uses
  %i.sy = and i64 %4, 8192
  %i.sz = icmp ne i64 %i.sy, 0
  %i.ta = icmp eq i16 %.pr270.pre297.i, 8         ; 3 uses
  %or.cond.i23 = select i1 %i.sz, i1 %i.ta, i1 false
  br i1 %or.cond.i23, label %bb.dn, label %_ZN4llvm7CCState11AllocateRegEt.exit.thread215.i

bb.dn:                                            ; preds = %bb.dm
  %i.tb = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.tc = load ptr, ptr %i.tb, align 8, !tbaa !30
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 20
  %i.te = load i32, ptr %i.td, align 4, !tbaa !165
  %i.tf = and i32 %i.te, 2097152
  %.not.i96.i = icmp eq i32 %i.tf, 0
  br i1 %.not.i96.i, label %bb.do, label %_ZN4llvm7CCState11AllocateRegEt.exit.thread215.i

bb.do:                                            ; preds = %bb.dn
  call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext 181) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  %i.tg = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i8 0, ptr %i.tg, align 8, !tbaa !534, !alias.scope !1090
  %i.th = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i32 %0, ptr %i.th, align 8, !tbaa !549, !alias.scope !1090
  %i.ti = getelementptr inbounds nuw i8, ptr %15, i64 20 ; 2 uses
  %i.tj = load i8, ptr %i.ti, align 4, !alias.scope !1090
  %i.tk = and i8 %i.tj, -128
  %i.tl = trunc i32 %i.sx to i8
  %i.tm = shl i8 %i.tl, 1
  %i.tn = and i8 %i.tm, 126
  %i.to = or disjoint i8 %i.tk, %i.tn
  store i8 %i.to, ptr %i.ti, align 4, !alias.scope !1090
  %i.tp = getelementptr inbounds nuw i8, ptr %15, i64 22
  store i16 %1, ptr %i.tp, align 2, !tbaa !177, !alias.scope !1090
  %i.tq = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i16 8, ptr %i.tq, align 8, !tbaa !177, !alias.scope !1090
  store i32 181, ptr %15, align 8, !tbaa !165, !alias.scope !1090
  %i.tr = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !550, !nonnull !28, !align !81 ; 4 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 8 ; 3 uses
  %i.tu = load i32, ptr %i.tt, align 8, !tbaa !192 ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.ts, i64 12
  %i.tw = load i32, ptr %i.tv, align 4, !tbaa !193
  %.not.i.i.i48 = icmp ult i32 %i.tu, %i.tw
  br i1 %.not.i.i.i48, label %bb.dq, label %bb.dp, !prof !194

bb.dp:                                            ; preds = %bb.do
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ts, ptr noundef nonnull align 8 dereferenceable(26) %15)
  br label %_ZN4llvm7CCState11AllocateRegEt.exit.i49

bb.dq:                                            ; preds = %bb.do
  %i.tx = zext i32 %i.tu to i64
  %i.ty = load ptr, ptr %i.ts, align 8, !tbaa !30
  %i.tz = getelementptr inbounds nuw [32 x i8], ptr %i.ty, i64 %i.tx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.tz, ptr noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false)
  %i.ua = load i32, ptr %i.tt, align 8, !tbaa !192
  %i.ub = add i32 %i.ua, 1
  store i32 %i.ub, ptr %i.tt, align 8, !tbaa !192
  br label %_ZN4llvm7CCState11AllocateRegEt.exit.i49

_ZN4llvm7CCState11AllocateRegEt.exit.i49:         ; preds = %bb.dq, %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  br label %_ZL14CC_SystemZ_ELFjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit.thread

_ZN4llvm7CCState11AllocateRegEt.exit.thread215.i: ; preds = %bb.dn, %bb.dm
  %i.uc = and i64 %4, 32768
  %.not274.i = icmp eq i64 %i.uc, 0               ; 2 uses
  %.not346.i = xor i1 %i.ta, true
  %brmerge.i24 = select i1 %.not274.i, i1 true, i1 %.not346.i
  %.mux.i25 = select i1 %.not274.i, i1 %i.ta, i1 false
  br i1 %brmerge.i24, label %thread-pre-split.i, label %bb.dr

bb.dr:                                            ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit.thread215.i
  %i.ud = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !30
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 20
  %i.ug = load i32, ptr %i.uf, align 4, !tbaa !165
  %i.uh = and i32 %i.ug, 1048576
  %.not.i97.i26 = icmp eq i32 %i.uh, 0
  br i1 %.not.i97.i26, label %bb.ds, label %.thread71

bb.ds:                                            ; preds = %bb.dr
  call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext 180) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  %i.ui = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i8 0, ptr %i.ui, align 8, !tbaa !534, !alias.scope !1091
  %i.uj = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i32 %0, ptr %i.uj, align 8, !tbaa !549, !alias.scope !1091
  %i.uk = getelementptr inbounds nuw i8, ptr %16, i64 20 ; 2 uses
  %i.ul = load i8, ptr %i.uk, align 4, !alias.scope !1091
  %i.um = and i8 %i.ul, -128
  %i.un = trunc i32 %i.sx to i8
  %i.uo = shl i8 %i.un, 1
  %i.up = and i8 %i.uo, 126
  %i.uq = or disjoint i8 %i.um, %i.up
  store i8 %i.uq, ptr %i.uk, align 4, !alias.scope !1091
  %i.ur = getelementptr inbounds nuw i8, ptr %16, i64 22
  store i16 %1, ptr %i.ur, align 2, !tbaa !177, !alias.scope !1091
  %i.us = getelementptr inbounds nuw i8, ptr %16, i64 24
  store i16 8, ptr %i.us, align 8, !tbaa !177, !alias.scope !1091
  store i32 180, ptr %16, align 8, !tbaa !165, !alias.scope !1091
  %i.ut = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !550, !nonnull !28, !align !81 ; 4 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 8 ; 3 uses
  %i.uw = load i32, ptr %i.uv, align 8, !tbaa !192 ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uu, i64 12
  %i.uy = load i32, ptr %i.ux, align 4, !tbaa !193
  %.not.i.i100.i = icmp ult i32 %i.uw, %i.uy
  br i1 %.not.i.i100.i, label %bb.du, label %bb.dt, !prof !194

bb.dt:                                            ; preds = %bb.ds
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.uu, ptr noundef nonnull align 8 dereferenceable(26) %16)
  br label %_ZN4llvm7CCState11AllocateRegEt.exit99.i

bb.du:                                            ; preds = %bb.ds
  %i.uz = zext i32 %i.uw to i64
  %i.va = load ptr, ptr %i.uu, align 8, !tbaa !30
  %i.vb = getelementptr inbounds nuw [32 x i8], ptr %i.va, i64 %i.uz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.vb, ptr noundef nonnull align 8 dereferenceable(32) %16, i64 32, i1 false)
  %i.vc = load i32, ptr %i.uv, align 8, !tbaa !192
  %i.vd = add i32 %i.vc, 1
  store i32 %i.vd, ptr %i.uv, align 8, !tbaa !192
  br label %_ZN4llvm7CCState11AllocateRegEt.exit99.i

_ZN4llvm7CCState11AllocateRegEt.exit99.i:         ; preds = %bb.du, %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  br label %_ZL14CC_SystemZ_ELFjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit.thread

thread-pre-split.i:                               ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit.thread215.i
  switch i16 %.pr270.pre297.i, label %bb.dv [
    i16 9, label %.thread226.i
    i16 17, label %.thread226.i
  ]

.thread226.i:                                     ; preds = %thread-pre-split.i, %thread-pre-split.i
  store i16 8, ptr %13, align 2, !tbaa !177
  store i32 11, ptr %i.b, align 4, !tbaa !541
  br label %.thread71

bb.dv:                                            ; preds = %thread-pre-split.i
  br i1 %.mux.i25, label %.thread71, label %.thread232.i

.thread71:                                        ; preds = %bb.dr, %bb.dv, %.thread226.i
  %i.ve = call noundef zeroext i1 @_ZN4llvm23CC_SystemZ_I128IndirectERjRNS_3MVTES2_RNS_11CCValAssign7LocInfoERNS_3ISD10ArgFlagsTyERNS_7CCStateE(ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 2 dereferenceable(2) %12, ptr noundef nonnull align 2 dereferenceable(2) %13, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(420) %7)
  br i1 %i.ve, label %_ZL14CC_SystemZ_ELFjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit.thread, label %bb.dw

bb.dw:                                            ; preds = %.thread71
  %.pr228.i = load i16, ptr %13, align 2, !tbaa !196 ; 2 uses
  %i.vf = icmp eq i16 %.pr228.i, 7
  br i1 %i.vf, label %.thread326.i, label %.thread232.i

.thread326.i:                                     ; preds = %bb.dw, %bb.dl
  %i.vg = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !30
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 24
  %i.vj = load i32, ptr %i.vi, align 4, !tbaa !165 ; 5 uses
  %i.vk = and i32 %i.vj, 8192
  %.not.i.i102.i = icmp eq i32 %i.vk, 0
  br i1 %.not.i.i102.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i44, label %bb.dx

bb.dx:                                            ; preds = %.thread326.i
  %i.vl = and i32 %i.vj, 16384
  %.not.i.i102.1.i = icmp eq i32 %i.vl, 0
  br i1 %.not.i.i102.1.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i44, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.vm = and i32 %i.vj, 32768
  %.not.i.i102.2.i = icmp eq i32 %i.vm, 0
  br i1 %.not.i.i102.2.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i44, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.vn = and i32 %i.vj, 65536
  %.not.i.i102.3.i = icmp eq i32 %i.vn, 0
  br i1 %.not.i.i102.3.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i44, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.vo = and i32 %i.vj, 131072
  %.not.i.i102.4.i = icmp eq i32 %i.vo, 0
  br i1 %.not.i.i102.4.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i44, label %.thread258.i

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i44: ; preds = %bb.ea, %bb.dz, %bb.dy, %bb.dx, %.thread326.i
  %.0613.i.i.lcssa.wide.i45 = phi i64 [ 0, %.thread326.i ], [ 1, %bb.dx ], [ 2, %bb.dy ], [ 3, %bb.dz ], [ 4, %bb.ea ]
  %i.vp = getelementptr inbounds nuw [2 x i8], ptr @_ZZL14CC_SystemZ_ELFjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList1, i64 %.0613.i.i.lcssa.wide.i45
  %i.vq = load i16, ptr %i.vp, align 2, !tbaa !171 ; 2 uses
  call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.vq) #27
  %i.vr = zext i16 %i.vq to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  %i.vs = load i32, ptr %i.a, align 4, !tbaa !165
  %.sroa.033.0.copyload.i = load i16, ptr %12, align 2, !tbaa !177
  %.sroa.031.0.copyload.i46 = load i16, ptr %13, align 2, !tbaa !177
  %i.vt = load i32, ptr %i.b, align 4, !tbaa !541
  %i.vu = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i8 0, ptr %i.vu, align 8, !tbaa !534, !alias.scope !1092
  %i.vv = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i32 %i.vs, ptr %i.vv, align 8, !tbaa !549, !alias.scope !1092
  %i.vw = getelementptr inbounds nuw i8, ptr %17, i64 20 ; 2 uses
  %i.vx = load i8, ptr %i.vw, align 4, !alias.scope !1092
  %i.vy = and i8 %i.vx, -128
  %i.vz = trunc i32 %i.vt to i8
  %i.wa = shl i8 %i.vz, 1
  %i.wb = and i8 %i.wa, 126
  %i.wc = or disjoint i8 %i.vy, %i.wb
  store i8 %i.wc, ptr %i.vw, align 4, !alias.scope !1092
  %i.wd = getelementptr inbounds nuw i8, ptr %17, i64 22
  store i16 %.sroa.033.0.copyload.i, ptr %i.wd, align 2, !tbaa !177, !alias.scope !1092
  %i.we = getelementptr inbounds nuw i8, ptr %17, i64 24
  store i16 %.sroa.031.0.copyload.i46, ptr %i.we, align 8, !tbaa !177, !alias.scope !1092
  store i32 %i.vr, ptr %17, align 8, !tbaa !165, !alias.scope !1092
  %i.wf = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !550, !nonnull !28, !align !81 ; 4 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 8 ; 3 uses
  %i.wi = load i32, ptr %i.wh, align 8, !tbaa !192 ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wg, i64 12
  %i.wk = load i32, ptr %i.wj, align 4, !tbaa !193
  %.not.i.i103.i47 = icmp ult i32 %i.wi, %i.wk
  br i1 %.not.i.i103.i47, label %bb.ec, label %bb.eb, !prof !194

bb.eb:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i44
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.wg, ptr noundef nonnull align 8 dereferenceable(26) %17)
  br label %bb.ed

bb.ec:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i44
  %i.wl = zext i32 %i.wi to i64
  %i.wm = load ptr, ptr %i.wg, align 8, !tbaa !30
  %i.wn = getelementptr inbounds nuw [32 x i8], ptr %i.wm, i64 %i.wl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.wn, ptr noundef nonnull align 8 dereferenceable(32) %17, i64 32, i1 false)
  %i.wo = load i32, ptr %i.wh, align 8, !tbaa !192
  %i.wp = add i32 %i.wo, 1
  store i32 %i.wp, ptr %i.wh, align 8, !tbaa !192
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  br label %_ZL14CC_SystemZ_ELFjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit.thread

.thread232.i:                                     ; preds = %bb.dw, %bb.dv
  %.pr270.pre296328.i = phi i16 [ %.pr228.i, %bb.dw ], [ %.pr270.pre297.i, %bb.dv ] ; 2 uses
  switch i16 %.pr270.pre296328.i, label %.thread258.i [
    i16 8, label %bb.ee
    i16 13, label %bb.em
    i16 14, label %bb.et
    i16 15, label %bb.fa
  ]

bb.ee:                                            ; preds = %.thread232.i
  %i.wq = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.wr = load ptr, ptr %i.wq, align 8, !tbaa !30
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 20
  %i.wt = load i32, ptr %i.ws, align 4, !tbaa !165 ; 5 uses
  %i.wu = and i32 %i.wt, 8192
  %.not.i.i106.i = icmp eq i32 %i.wu, 0
  br i1 %.not.i.i106.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit109.i, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.wv = and i32 %i.wt, 16384
  %.not.i.i106.1.i = icmp eq i32 %i.wv, 0
  br i1 %.not.i.i106.1.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit109.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.ww = and i32 %i.wt, 32768
  %.not.i.i106.2.i = icmp eq i32 %i.ww, 0
  br i1 %.not.i.i106.2.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit109.i, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.wx = and i32 %i.wt, 65536
  %.not.i.i106.3.i = icmp eq i32 %i.wx, 0
  br i1 %.not.i.i106.3.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit109.i, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.wy = and i32 %i.wt, 131072
end_hunk_0
