inline.NumInlined: 3452
inline.NumDeleted: 1065
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN2v88internal48Runtime_StringReplaceNonGlobalRegExpWithFunctionEiPmPNS0_7IsolateE:_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  br i1 %.not.i, label %_ZN2v88internal22PositiveNumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal6HandleINS0_10RegExpDataEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.as = add i64 %i.an, 47
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = load i64, ptr %i.at, align 8            ; 3 uses
  %i.av = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.aw = load ptr, ptr %i.d, align 8
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %bb.f, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !30

bb.f:                                             ; preds = %bb.e
  %i.ay = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #21
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.e, %bb.f
  %.0.i = phi ptr [ %i.ay, %bb.f ], [ %i.av, %bb.e ] ; 3 uses
  %i.az = ptrtoint ptr %.0.i to i64
  %i.ba = add i64 %i.az, 8
  %i.bb = inttoptr i64 %i.ba to ptr
  store ptr %i.bb, ptr %i.b, align 8
  store i64 %i.au, ptr %.0.i, align 8
  %i.bc = and i64 %i.au, 1
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %bb.g, label %_ZN2v88internal6Object8ToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit

bb.g:                                             ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %i.be = lshr i64 %i.au, 32
  %i.bf = trunc nuw i64 %i.be to i32
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.bf, i32 0)
  %i.bg = zext nneg i32 %.sroa.speculated.i to i64
  %i.bh = shl nuw nsw i64 %i.bg, 32               ; 2 uses
  %i.bi = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.bj = load ptr, ptr %i.d, align 8
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %bb.h, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, !prof !30

bb.h:                                             ; preds = %bb.g
  %i.bl = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #21
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZN2v88internal6Object8ToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit: ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %i.bm = tail call ptr @_ZN2v88internal6Object15ConvertToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef nonnull %2, ptr nonnull %.0.i) #21 ; 2 uses
  %.not243 = icmp eq ptr %i.bm, null
  br i1 %.not243, label %.critedge141.i, label %_ZN2v88internal6Object8ToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit..critedge.i_crit_edge

_ZN2v88internal6Object8ToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit..critedge.i_crit_edge: ; preds = %_ZN2v88internal6Object8ToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit
  %.pre = load i64, ptr %i.bm, align 8
  br label %.critedge.i

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %bb.g, %bb.h
  %.0.i.i.i22 = phi ptr [ %i.bl, %bb.h ], [ %i.bi, %bb.g ] ; 2 uses
  %i.bn = ptrtoint ptr %.0.i.i.i22 to i64
  %i.bo = add i64 %i.bn, 8
  %i.bp = inttoptr i64 %i.bo to ptr
  store ptr %i.bp, ptr %i.b, align 8
  store i64 %i.bh, ptr %.0.i.i.i22, align 8
  br label %.critedge.i

.critedge141.i:                                   ; preds = %_ZN2v88internal6Object8ToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.br = load i64, ptr %i.bq, align 8
  br label %_ZN2v88internalL58__RT_impl_Runtime_StringReplaceNonGlobalRegExpWithFunctionENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

.critedge.i:                                      ; preds = %_ZN2v88internal6Object8ToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit..critedge.i_crit_edge, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit
  %i.bs = phi i64 [ %i.bh, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit ], [ %.pre, %_ZN2v88internal6Object8ToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE.exit..critedge.i_crit_edge ] ; 3 uses
  %i.bt = and i64 %i.bs, 1
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.critedge.i
  %i.bv = lshr i64 %i.bs, 32
  %i.bw = trunc nuw i64 %i.bv to i32
  %..i = tail call i32 @llvm.smax.i32(i32 %i.bw, i32 0)
  br label %_ZN2v88internal22PositiveNumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit

bb.j:                                             ; preds = %.critedge.i
  %i.bx = add nsw i64 %i.bs, -1
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.0.copyload.i.i.i.i.i = load double, ptr %i.bz, align 1 ; 3 uses
  %i.ca = fcmp ult double %.0.copyload.i.i.i.i.i, 1.000000e+00
  br i1 %i.ca, label %_ZN2v88internal22PositiveNumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cb = fcmp olt double %.0.copyload.i.i.i.i.i, f0x41EFFFFFFFE00000
  %.116.i = select i1 %i.cb, double %.0.copyload.i.i.i.i.i, double f0x41EFFFFFFFE00000
  %.1.i23 = fptoui double %.116.i to i32
  br label %_ZN2v88internal22PositiveNumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal22PositiveNumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.k, %bb.j, %bb.i, %_ZN2v88internal6HandleINS0_10RegExpDataEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %.1.i = phi i32 [ 0, %_ZN2v88internal6HandleINS0_10RegExpDataEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %..i, %bb.i ], [ %.1.i23, %bb.k ], [ 0, %bb.j ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 648 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 664 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8            ; 2 uses
  %i.cf = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.cg = load ptr, ptr %i.d, align 8
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %bb.l, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit3, !prof !30

bb.l:                                             ; preds = %_ZN2v88internal22PositiveNumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ci = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #21
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit3

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit3: ; preds = %_ZN2v88internal22PositiveNumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit, %bb.l
  %.0.i2 = phi ptr [ %i.ci, %bb.l ], [ %i.cf, %_ZN2v88internal22PositiveNumberToUint32ENS0_6TaggedINS0_6ObjectEEE.exit ] ; 3 uses
  %i.cj = ptrtoint ptr %.0.i2 to i64
  %i.ck = add i64 %i.cj, 8
  %i.cl = inttoptr i64 %i.ck to ptr
  store ptr %i.cl, ptr %i.b, align 8
  store i64 %i.ce, ptr %.0.i2, align 8
  %i.cm = load i64, ptr %1, align 8
  %i.cn = add i64 %i.cm, -1
  %i.co = inttoptr i64 %i.cn to ptr
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 12
  %i.cq = load i32, ptr %i.cp, align 4
  %.not139.i = icmp ugt i32 %.1.i, %i.cq
  br i1 %.not139.i, label %.critedge143.i, label %bb.m

bb.m:                                             ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit3
  %i.cr = tail call ptr @_ZN2v88internal6RegExp11Exec_SingleEPNS0_7IsolateENS0_12DirectHandleINS0_8JSRegExpEEENS4_INS0_6StringEEEiNS4_INS0_15RegExpMatchInfoEEE(ptr noundef nonnull %2, ptr nonnull %i.k, ptr nonnull %1, i32 noundef %.1.i, ptr nonnull %.0.i.i.i19) #21 ; 3 uses
  %.not244 = icmp eq ptr %i.cr, null
  br i1 %.not244, label %_ZNK2v88internal17MaybeDirectHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %..critedge143.i_crit_edge

..critedge143.i_crit_edge:                        ; preds = %bb.m
  %.pre253 = load i64, ptr %i.cr, align 8
  br label %.critedge143.i

_ZNK2v88internal17MaybeDirectHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %bb.m
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.ct = load i64, ptr %i.cs, align 8
  br label %_ZN2v88internalL58__RT_impl_Runtime_StringReplaceNonGlobalRegExpWithFunctionENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

.critedge143.i:                                   ; preds = %..critedge143.i_crit_edge, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit3
  %i.cu = phi i64 [ %i.ce, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit3 ], [ %.pre253, %..critedge143.i_crit_edge ] ; 2 uses
  %.sroa.094.0 = phi ptr [ %.0.i2, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit3 ], [ %i.cr, %..critedge143.i_crit_edge ] ; 2 uses
  %i.cv = load i64, ptr %i.cd, align 8
  %i.cw = icmp eq i64 %i.cu, %i.cv
  br i1 %i.cw, label %bb.n, label %bb.q

bb.n:                                             ; preds = %.critedge143.i
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cx = load i64, ptr %i.k, align 8
  %i.cy = add i64 %i.cx, 47
  %i.cz = inttoptr i64 %i.cy to ptr
  store atomic volatile i64 0, ptr %i.cz monotonic, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.da = load i64, ptr %1, align 8
  br label %_ZN2v88internalL58__RT_impl_Runtime_StringReplaceNonGlobalRegExpWithFunctionENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

bb.q:                                             ; preds = %.critedge143.i
  %i.db = add i64 %i.cu, -1
  %i.dc = inttoptr i64 %i.db to ptr               ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  %i.de = load atomic volatile i64, ptr %i.dd monotonic, align 8 ; 2 uses
  %i.df = lshr i64 %i.de, 32
  %i.dg = trunc nuw i64 %i.df to i32              ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 48
  %i.di = load atomic volatile i64, ptr %i.dh monotonic, align 8 ; 2 uses
  %i.dj = lshr i64 %i.di, 32                      ; 2 uses
  %i.dk = trunc nuw i64 %i.dj to i32
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dl = load i64, ptr %i.k, align 8
  %i.dm = and i64 %i.di, -4294967296
  %i.dn = add i64 %i.dl, 47
  %i.do = inttoptr i64 %i.dn to ptr
  store atomic volatile i64 %i.dm, ptr %i.do monotonic, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZN2v88internal24IncrementalStringBuilderC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull %2) #21
  %i.dp = load i64, ptr %1, align 8
  %i.dq = add i64 %i.dp, -1
  %i.dr = inttoptr i64 %i.dq to ptr
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 12
  %i.dt = load i32, ptr %i.ds, align 4
  %i.du = icmp eq i32 %i.dt, %i.dg
  br i1 %i.du, label %_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit, label %.critedge.i26

.critedge.i26:                                    ; preds = %bb.s
  %i.dv = call ptr @_ZN2v88internal7Factory18NewProperSubStringENS0_12DirectHandleINS0_6StringEEEjj(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %1, i32 noundef 0, i32 noundef %i.dg) #21
  br label %_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit

_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit: ; preds = %bb.s, %.critedge.i26
  %.sroa.07.0.i = phi ptr [ %i.dv, %.critedge.i26 ], [ %1, %bb.s ]
  call void @_ZN2v88internal24IncrementalStringBuilder12AppendStringENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr %.sroa.07.0.i) #21
  %i.dw = load i64, ptr %.sroa.094.0, align 8
  %i.dx = add i64 %i.dw, -1
  %i.dy = inttoptr i64 %i.dx to ptr
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load i64, ptr %i.dz, align 8            ; 2 uses
  %i.eb = lshr i64 %i.ea, 32
  %i.ec = trunc nuw i64 %i.eb to i32              ; 3 uses
  %i.ed = sdiv i32 %i.ec, 2                       ; 4 uses
  %i.ee = icmp sgt i32 %i.ec, 3
  br i1 %i.ee, label %_ZN2v88internal8NullOrIsINS0_12IrRegExpDataENS0_10RegExpDataEEEbNS0_12DirectHandleIT0_EE.exit.i, label %.thread

_ZN2v88internal8NullOrIsINS0_12IrRegExpDataENS0_10RegExpDataEEEbNS0_12DirectHandleIT0_EE.exit.i: ; preds = %_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit
  %i.ef = load i64, ptr %.0.i.i, align 8          ; 2 uses
  %i.eg = add i64 %i.ef, -1
  %i.eh = inttoptr i64 %i.eg to ptr
  %i.ei = load atomic volatile i64, ptr %i.eh monotonic, align 8
  %i.ej = add i64 %i.ei, 11
  %i.ek = inttoptr i64 %i.ej to ptr
  %i.el = load atomic volatile i16, ptr %i.ek monotonic, align 2
  %i.em = icmp eq i16 %i.el, 183
  br i1 %i.em, label %_ZN2v88internal7SbxCastINS0_12IrRegExpDataENS0_10RegExpDataENS0_12DirectHandleEQ21HasCastImplementationIT1_T_T0_EEES5_IS6_ES5_IS7_ENS_14SourceLocationE.exit, label %bb.t, !prof !114

bb.t:                                             ; preds = %_ZN2v88internal8NullOrIsINS0_12IrRegExpDataENS0_10RegExpDataEEEbNS0_12DirectHandleIT0_EE.exit.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.18) #22
  unreachable

_ZN2v88internal7SbxCastINS0_12IrRegExpDataENS0_10RegExpDataENS0_12DirectHandleEQ21HasCastImplementationIT1_T_T0_EEES5_IS6_ES5_IS7_ENS_14SourceLocationE.exit: ; preds = %_ZN2v88internal8NullOrIsINS0_12IrRegExpDataENS0_10RegExpDataEEEbNS0_12DirectHandleIT0_EE.exit.i
  %i.en = add i64 %i.ef, 71
  %i.eo = inttoptr i64 %i.en to ptr
  %i.ep = load i64, ptr %i.eo, align 8            ; 3 uses
  %i.eq = trunc i64 %i.ep to i1
  br i1 %i.eq, label %_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit.i, label %.thread

_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZN2v88internal7SbxCastINS0_12IrRegExpDataENS0_10RegExpDataENS0_12DirectHandleEQ21HasCastImplementationIT1_T_T0_EEES5_IS6_ES5_IS7_ENS_14SourceLocationE.exit
  %i.er = add nsw i64 %i.ep, -1
  %i.es = inttoptr i64 %i.er to ptr
  %i.et = load atomic volatile i64, ptr %i.es monotonic, align 8
  %i.eu = add i64 %i.et, 11
  %i.ev = inttoptr i64 %i.eu to ptr
  %i.ew = load atomic volatile i16, ptr %i.ev monotonic, align 2
  %i.ex = add i16 %i.ew, -205
  %i.ey = icmp ult i16 %i.ex, 13
  br i1 %i.ey, label %bb.u, label %.thread

bb.u:                                             ; preds = %_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.ez = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.fa = load ptr, ptr %i.d, align 8
  %i.fb = icmp eq ptr %i.ez, %i.fa
  br i1 %i.fb, label %bb.v, label %bb.w, !prof !30

bb.v:                                             ; preds = %bb.u
  %i.fc = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #21
  br label %bb.w

.thread:                                          ; preds = %_ZN2v88internal7Factory12NewSubStringINS0_6StringENS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ES5_IS3_EEEES8_S7_jj.exit, %_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZN2v88internal7SbxCastINS0_12IrRegExpDataENS0_10RegExpDataENS0_12DirectHandleEQ21HasCastImplementationIT1_T_T0_EEES5_IS6_ES5_IS7_ENS_14SourceLocationE.exit
  %i.fd = icmp ugt i32 %i.ed, 65526
  br label %bb.x

bb.w:                                             ; preds = %bb.u, %bb.v
  %.0.i.i.i = phi ptr [ %i.fc, %bb.v ], [ %i.ez, %bb.u ] ; 3 uses
  %i.fe = ptrtoint ptr %.0.i.i.i to i64
  %i.ff = add i64 %i.fe, 8
  %i.fg = inttoptr i64 %i.ff to ptr
  store ptr %i.fg, ptr %i.b, align 8
  store i64 %i.ep, ptr %.0.i.i.i, align 8
  %i.fh = icmp ugt i64 %i.ea, 562872644009983
  br label %bb.x

bb.x:                                             ; preds = %.thread, %bb.w
  %i.fi = phi i1 [ %i.fh, %bb.w ], [ %i.fd, %.thread ]
  %.1134.i231 = phi i1 [ true, %bb.w ], [ false, %.thread ]
  %.sroa.069.0230 = phi ptr [ %.0.i.i.i, %bb.w ], [ null, %.thread ] ; 3 uses
  %i.fj = phi i32 [ 3, %bb.w ], [ 2, %.thread ]
  %i.fk = add nuw nsw i32 %i.fj, %i.ed            ; 2 uses
  %i.fl = icmp ugt i32 %i.fk, 65526
  %i.fm = select i1 %i.fi, i1 true, i1 %i.fl
  br i1 %i.fm, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fn = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 396, ptr null, i64 0) #21
  %i.fo = load i64, ptr %i.fn, align 8
  %i.fp = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.fo, ptr noundef null) #21
  br label %bb.ar

bb.z:                                             ; preds = %bb.x
  %i.fq = zext nneg i32 %i.fk to i64              ; 2 uses
  %i.fr = shl nuw nsw i64 %i.fq, 3                ; 3 uses
  %i.fs = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fr) #24 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fs, i8 0, i64 %i.fr, i1 false)
  %i.ft = icmp sgt i32 %i.ec, 1
  br i1 %i.ft, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.z
  %wide.trip.count = zext nneg i32 %i.ed to i64
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.fu = zext nneg i32 %i.ed to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.z
  %.0135.i.lcssa = phi i64 [ 0, %bb.z ], [ %i.fu, %._crit_edge.loopexit ]
  %i.fv = and i64 %i.de, -4294967296
  %i.fw = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.fx = load ptr, ptr %i.d, align 8
  %i.fy = icmp eq ptr %i.fw, %i.fx
  br i1 %i.fy, label %bb.aa, label %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !30

bb.aa:                                            ; preds = %._crit_edge
  %i.fz = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #21
  br label %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %._crit_edge, %bb.aa
  %.0.i.i.i17 = phi ptr [ %i.fz, %bb.aa ], [ %i.fw, %._crit_edge ] ; 2 uses
  %i.ga = ptrtoint ptr %.0.i.i.i17 to i64         ; 2 uses
  %i.gb = add i64 %i.ga, 8
  %i.gc = inttoptr i64 %i.gb to ptr
  store ptr %i.gc, ptr %i.b, align 8
  store i64 %i.fv, ptr %.0.i.i.i17, align 8
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %.0135.i.lcssa ; 3 uses
  store i64 %i.ga, ptr %i.gd, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store i64 %i.i, ptr %i.ge, align 8
  br i1 %.1134.i231, label %bb.ab, label %bb.ap

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %indvars252 = trunc i64 %indvars.iv to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.gf = call ptr @_ZN2v88internal11RegExpUtils20GenericCaptureGetterEPNS0_7IsolateENS0_12DirectHandleINS0_15RegExpMatchInfoEEEiPb(ptr noundef nonnull %2, ptr nonnull %.sroa.094.0, i32 noundef %indvars252, ptr noundef nonnull %i.a) #21
  %i.gg = load i8, ptr %i.a, align 1, !range !28, !noundef !29
  %i.gh = trunc nuw i8 %i.gg to i1
  %spec.select273 = select i1 %i.gh, ptr %i.gf, ptr %i.cc
  %.sink = ptrtoint ptr %spec.select273 to i64
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %indvars.iv
  store i64 %.sink, ptr %i.gi, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !115

bb.ab:                                            ; preds = %_ZN2v88internal12DirectHandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.gj = call ptr @_ZN2v88internal7Factory24NewJSObjectWithNullProtoEv(ptr noundef nonnull align 1 dereferenceable(1) %2) #21 ; 3 uses
  %i.gk = load i64, ptr %.sroa.069.0230, align 8
  %i.gl = add i64 %i.gk, -1
  %i.gm = inttoptr i64 %i.gl to ptr
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.go = load i64, ptr %i.gn, align 8
  %i.gp = lshr i64 %i.go, 32
  %i.gq = trunc nuw i64 %i.gp to i32
  %i.gr = ashr i32 %i.gq, 1                       ; 2 uses
  %i.gs = icmp sgt i32 %i.gr, 0
  br i1 %i.gs, label %.lr.ph.i, label %._ZN2v88internal12_GLOBAL__N_133ConstructNamedCaptureGroupsObjectIZNS0_L58__RT_impl_Runtime_StringReplaceNonGlobalRegExpWithFunctionENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateEEUliE_vEENS0_12DirectHandleINS0_8JSObjectEEES7_NS9_INS0_10FixedArrayEEERKT_.exit_crit_edge

._ZN2v88internal12_GLOBAL__N_133ConstructNamedCaptureGroupsObjectIZNS0_L58__RT_impl_Runtime_StringReplaceNonGlobalRegExpWithFunctionENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateEEUliE_vEENS0_12DirectHandleINS0_8JSObjectEEES7_NS9_INS0_10FixedArrayEEERKT_.exit_crit_edge: ; preds = %bb.ab
  %.pre254 = ptrtoint ptr %i.gj to i64
  br label %_ZN2v88internal12_GLOBAL__N_133ConstructNamedCaptureGroupsObjectIZNS0_L58__RT_impl_Runtime_StringReplaceNonGlobalRegExpWithFunctionENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateEEUliE_vEENS0_12DirectHandleINS0_8JSObjectEEES7_NS9_INS0_10FixedArrayEEERKT_.exit

.lr.ph.i:                                         ; preds = %bb.ab
  %i.gt = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.gu = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.gv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.gw = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.gx = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.gz = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ha = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.hb = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.hc = ptrtoint ptr %i.gj to i64               ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.he = getelementptr inbounds nuw i8, ptr %2, i64 55448
  %i.hf = getelementptr inbounds nuw i8, ptr %2, i64 64088
  %i.hg = getelementptr inbounds nuw i8, ptr %2, i64 64080
  %wide.trip.count.i = zext nneg i32 %i.gr to i64
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ao, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ao ] ; 2 uses
  %i.hh = shl nuw nsw i64 %indvars.iv.i, 1        ; 2 uses
  %i.hi = load i64, ptr %.sroa.069.0230, align 8
  %i.hj = add i64 %i.hi, -1
  %i.hk = inttoptr i64 %i.hj to ptr
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %i.hh
  %i.hn = load atomic volatile i64, ptr %i.hm monotonic, align 8
  %i.ho = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.hp = load ptr, ptr %i.d, align 8
  %i.hq = icmp eq ptr %i.ho, %i.hp
  br i1 %i.hq, label %bb.ad, label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !30

bb.ad:                                            ; preds = %bb.ac
  %i.hr = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #21
  br label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i30 = phi ptr [ %i.hr, %bb.ad ], [ %i.ho, %bb.ac ] ; 7 uses
  %i.hs = ptrtoint ptr %.0.i.i.i30 to i64
  %i.ht = add i64 %i.hs, 8
  %i.hu = inttoptr i64 %i.ht to ptr
  store ptr %i.hu, ptr %i.b, align 8
  store i64 %i.hn, ptr %.0.i.i.i30, align 8
  %i.hv = load i64, ptr %.sroa.069.0230, align 8
  %i.hw = add i64 %i.hv, -1
  %i.hx = inttoptr i64 %i.hw to ptr
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.hh
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 24
  %i.ia = load atomic volatile i64, ptr %i.hz monotonic, align 8
  %i.ib = ashr i64 %i.ia, 32
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.ib
  %i.id = load ptr, ptr %i.ic, align 8
  %i.ie = load i64, ptr %i.id, align 8
  %i.if = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ig = load ptr, ptr %i.d, align 8
  %i.ih = icmp eq ptr %i.if, %i.ig
  br i1 %i.ih, label %bb.ae, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, !prof !30

bb.ae:                                            ; preds = %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %i.ii = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #21
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %bb.ae, %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %.0.i.i31 = phi ptr [ %i.ii, %bb.ae ], [ %i.if, %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ] ; 5 uses
  %i.ij = ptrtoint ptr %.0.i.i31 to i64
  %i.ik = add i64 %i.ij, 8
  %i.il = inttoptr i64 %i.ik to ptr
  store ptr %i.il, ptr %i.b, align 8
  store i64 %i.ie, ptr %.0.i.i31, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.im = load i64, ptr %.0.i.i.i30, align 8
  %i.in = add i64 %i.im, -1
  %i.io = inttoptr i64 %i.in to ptr
  %i.ip = load atomic volatile i64, ptr %i.io monotonic, align 8
  %i.iq = add i64 %i.ip, 11
  %i.ir = inttoptr i64 %i.iq to ptr
  %i.is = load atomic volatile i16, ptr %i.ir monotonic, align 2 ; 0 uses
  store i32 0, ptr %i.gu, align 4
  store i32 0, ptr %i.gv, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %3, i8 0, i64 9, i1 false)
  store ptr %2, ptr %i.gw, align 8
  store ptr %.0.i.i.i30, ptr %i.gx, align 8
  store ptr null, ptr %i.gy, align 8
  store ptr %i.gj, ptr %i.gz, align 8
  store ptr null, ptr %i.ha, align 8
  store i64 %i.hc, ptr %i.hb, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hd, i8 -1, i64 16, i1 false)
  %i.it = load i64, ptr %.0.i.i.i30, align 8
  %i.iu = add i64 %i.it, -1
  %i.iv = inttoptr i64 %i.iu to ptr
  %i.iw = load atomic volatile i64, ptr %i.iv monotonic, align 8
  %i.ix = add i64 %i.iw, 11
  %i.iy = inttoptr i64 %i.ix to ptr
  %i.iz = load atomic volatile i16, ptr %i.iy monotonic, align 2
  %i.ja = and i16 %i.iz, -96
  %.not.i21.i.i.i = icmp eq i16 %i.ja, 32
  br i1 %.not.i21.i.i.i, label %bb.af, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

bb.af:                                            ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.jb = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !28, !noundef !29
  %i.jc = trunc nuw i8 %i.jb to i1
  %i.jd = load i8, ptr %i.he, align 8, !range !28
  %i.je = trunc nuw i8 %i.jd to i1
  %not..i.i.i23.i.i.i = xor i1 %i.jc, true
  %i.jf = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.je
  br i1 %i.jf, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.jg = load i8, ptr %i.hf, align 8, !range !28, !noundef !29
  %i.jh = trunc nuw i8 %i.jg to i1
  br i1 %i.jh, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZSt27__throw_bad_optional_accessv() #26
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.ag
  %i.ji = load ptr, ptr %i.hg, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.af
  %.pn.i.i26.i.i.i = phi ptr [ %i.ji, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %2, %bb.af ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.jj = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.jk = call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.jj, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %.0.i.i.i30) #21
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.jk, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %.0.i.i.i30, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.gx, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %3) #21
  %i.jl = load i32, ptr %i.gt, align 4
  %.not.i32 = icmp eq i32 %i.jl, 0
  br i1 %.not.i32, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.jm = load i64, ptr %.0.i.i31, align 8
  %i.jn = load i64, ptr %i.cc, align 8
  %i.jo = icmp eq i64 %i.jm, %i.jn
  br i1 %i.jo, label %bb.ao, label %bb.aj
end_hunk_0
