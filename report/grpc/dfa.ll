Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/dfa?download=true
inline.NumInlined: 1342
inline.NumDeleted: 567
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN3re23DFA14RunStateOnByteEPNS0_5StateEi:bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.af, align 8, !tbaa !132
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !115 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZN10LogMessageD2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i62: ; preds = %bb.j
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !114
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #25
  br label %_ZN10LogMessageD2Ev.exit64

bb.k:                                             ; preds = %bb.i
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #22
  unreachable

_ZN10LogMessageD2Ev.exit64:                       ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i62
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.af, align 8, !tbaa !132
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ao) #21
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ap) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.aj

bb.l:                                             ; preds = %bb.h
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.ak

bb.m:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZN10LogMessageC2EPKci(ptr noundef nonnull align 8 dereferenceable(384) %5, ptr noundef nonnull @.str.10, i32 noundef 1021)
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.14, i64 noundef 42)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65 unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65: ; preds = %bb.m
  %i.at = load i8, ptr %5, align 8, !tbaa !130, !range !120, !noundef !121
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65
  invoke void @_ZN10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(384) %5)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65
  %i.av = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.av, ptr %i.ar, align 8, !tbaa !132
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ax = getelementptr i8, ptr %i.av, i64 -24
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = getelementptr inbounds i8, ptr %i.ar, i64 %i.ay
  store ptr %i.aw, ptr %i.az, align 8, !tbaa !132
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ba, align 8, !tbaa !132
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !115 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZN10LogMessageD2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i66: ; preds = %bb.o
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !114
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #25
  br label %_ZN10LogMessageD2Ev.exit68

bb.p:                                             ; preds = %bb.n
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #22
  unreachable

_ZN10LogMessageD2Ev.exit68:                       ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i66
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ba, align 8, !tbaa !132
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bj) #21
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bk) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.aj

bb.q:                                             ; preds = %bb.m
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.ak

bb.r:                                             ; preds = %bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bn = icmp eq i32 %2, 256                     ; 4 uses
  %i.bo = load ptr, ptr %0, align 8, !tbaa !47    ; 2 uses
  br i1 %i.bn, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 20
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !92
  br label %_ZN3re23DFA7ByteMapEi.exit

bb.t:                                             ; preds = %bb.r
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 168
  %i.bs = sext i32 %2 to i64
  %i.bt = getelementptr inbounds i8, ptr %i.br, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !114
  %i.bv = zext i8 %i.bu to i32
  br label %_ZN3re23DFA7ByteMapEi.exit

_ZN3re23DFA7ByteMapEi.exit:                       ; preds = %bb.s, %bb.t
  %.0.i = phi i32 [ %i.bq, %bb.s ], [ %i.bv, %bb.t ]
  %i.bw = sext i32 %.0.i to i64
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.bw
  %i.by = load atomic ptr, ptr %i.bx monotonic, align 8 ; 2 uses
  %.not54 = icmp eq ptr %i.by, null
  br i1 %.not54, label %bb.u, label %bb.aj

bb.u:                                             ; preds = %_ZN3re23DFA7ByteMapEi.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !103 ; 11 uses
  store i32 0, ptr %i.ca, align 8, !tbaa !94
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !99
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 48 ; 3 uses
  store i32 %i.cc, ptr %i.cd, align 8, !tbaa !101
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !90
  %i.cg = icmp sgt i32 %i.cf, 0
  br i1 %i.cg, label %.lr.ph.i, label %_ZN3re23DFA12StateToWorkqEPNS0_5StateEPNS0_5WorkqE.exit

.lr.ph.i:                                         ; preds = %bb.u
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 52
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 12
  br label %bb.v

bb.v:                                             ; preds = %_ZN3re23DFA5Workq4markEv.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN3re23DFA5Workq4markEv.exit.i ] ; 2 uses
  %i.cm = load ptr, ptr %1, align 8, !tbaa !96
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.i
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !90 ; 2 uses
  switch i32 %i.co, label %bb.z [
    i32 -1, label %bb.w
    i32 -2, label %_ZN3re23DFA12StateToWorkqEPNS0_5StateEPNS0_5WorkqE.exit
  ]

bb.w:                                             ; preds = %bb.v
  %i.cp = load i8, ptr %i.ch, align 4, !tbaa !102, !range !120, !noundef !121
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %_ZN3re23DFA5Workq4markEv.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cr = load i32, ptr %i.cd, align 8, !tbaa !101 ; 4 uses
  %i.cs = add nsw i32 %i.cr, 1
  store i32 %i.cs, ptr %i.cd, align 8, !tbaa !101
  %i.ct = load ptr, ptr %i.cj, align 8, !tbaa !96 ; 2 uses
  %.not.i.i.i.i.i = icmp ne ptr %i.ct, null
  %i.cu = load i32, ptr %i.ci, align 8
  %.not10.i.i.i.i = icmp ugt i32 %i.cu, %i.cr
  %.not.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 %.not10.i.i.i.i, i1 false
  br i1 %.not.i.i.i.i, label %bb.y, label %_ZN3re23DFA5Workq4markEv.exit.i

bb.y:                                             ; preds = %bb.x
  %i.cv = load i32, ptr %i.ca, align 8, !tbaa !94 ; 2 uses
  %i.cw = sext i32 %i.cr to i64
  %i.cx = load ptr, ptr %i.ck, align 8, !tbaa !96
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.cw
  store i32 %i.cv, ptr %i.cy, align 4, !tbaa !90
  %i.cz = sext i32 %i.cv to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.cz
  store i32 %i.cr, ptr %i.da, align 4, !tbaa !90
  %i.db = load i32, ptr %i.ca, align 8, !tbaa !94
  %i.dc = add nsw i32 %i.db, 1
  store i32 %i.dc, ptr %i.ca, align 8, !tbaa !94
  br label %_ZN3re23DFA5Workq4markEv.exit.i

bb.z:                                             ; preds = %bb.v
  %i.dd = load i32, ptr %i.cl, align 4, !tbaa !90
  %i.de = and i32 %i.dd, 255
  tail call void @_ZN3re23DFA10AddToQueueEPNS0_5WorkqEij(ptr noundef nonnull readonly align 8 dereferenceable(296) %0, ptr noundef nonnull %i.ca, i32 noundef %i.co, i32 noundef %i.de)
  br label %_ZN3re23DFA5Workq4markEv.exit.i

_ZN3re23DFA5Workq4markEv.exit.i:                  ; preds = %bb.z, %bb.y, %bb.x, %bb.w
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.df = load i32, ptr %i.ce, align 8, !tbaa !90
  %i.dg = sext i32 %i.df to i64
  %i.dh = icmp slt i64 %indvars.iv.next.i, %i.dg
  br i1 %i.dh, label %bb.v, label %_ZN3re23DFA12StateToWorkqEPNS0_5StateEPNS0_5WorkqE.exit, !llvm.loop !2

_ZN3re23DFA12StateToWorkqEPNS0_5StateEPNS0_5WorkqE.exit: ; preds = %bb.v, %_ZN3re23DFA5Workq4markEv.exit.i, %bb.u
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !90 ; 4 uses
  %i.dk = lshr i32 %i.dj, 16
  %i.dl = and i32 %i.dj, 255                      ; 3 uses
  %i.dm = icmp eq i32 %2, 10                      ; 2 uses
  %i.dn = or i32 %i.dl, 2
  %spec.select = select i1 %i.dm, i32 %i.dn, i32 %i.dl
  %spec.select59 = zext i1 %i.dm to i32           ; 3 uses
  %i.do = or i32 %i.dl, 10
  %.145 = select i1 %i.bn, i32 %i.do, i32 %spec.select
  br i1 %i.bn, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZN3re23DFA12StateToWorkqEPNS0_5StateEPNS0_5WorkqE.exit
  %i.dp = trunc i32 %2 to i8                      ; 3 uses
  %i.dq = and i8 %i.dp, -33
  %i.dr = add i8 %i.dq, -65
  %or.cond15.i = icmp ult i8 %i.dr, 26
  %i.ds = add i8 %i.dp, -48
  %or.cond8.i = icmp ult i8 %i.ds, 10
  %or.cond16.i = or i1 %or.cond8.i, %or.cond15.i
  %i.dt = icmp eq i8 %i.dp, 95
  %i.du = or i1 %i.dt, %or.cond16.i
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZN3re23DFA12StateToWorkqEPNS0_5StateEPNS0_5WorkqE.exit
  %i.dv = phi i1 [ false, %_ZN3re23DFA12StateToWorkqEPNS0_5StateEPNS0_5WorkqE.exit ], [ %i.du, %bb.aa ] ; 2 uses
  %i.dw = and i32 %i.dj, 512
  %i.dx = icmp eq i32 %i.dw, 0
  %i.dy = xor i1 %i.dx, %i.dv
  %.2.v = select i1 %i.dy, i32 32, i32 16
  %.2 = or i32 %.2.v, %.145                       ; 2 uses
  %i.dz = xor i32 %i.dj, -1
  %i.ea = and i32 %i.dk, %i.dz
  %i.eb = and i32 %i.ea, %.2
  %.not56 = icmp eq i32 %i.eb, 0
  %.pre = load ptr, ptr %i.bz, align 8, !tbaa !103 ; 5 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %.pre72 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !104 ; 5 uses
  br i1 %.not56, label %._crit_edge, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %.pre72, align 8, !tbaa !94
  %i.ec = getelementptr inbounds nuw i8, ptr %.pre72, i64 40
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !99
  %i.ee = getelementptr inbounds nuw i8, ptr %.pre72, i64 48
  store i32 %i.ed, ptr %i.ee, align 8, !tbaa !101
  %i.ef = getelementptr inbounds nuw i8, ptr %.pre, i64 32 ; 2 uses
  %i.eg = load i32, ptr %.pre, align 8, !tbaa !94
  %.not13.i = icmp eq i32 %i.eg, 0
  br i1 %.not13.i, label %_ZN3re23DFA21RunWorkqOnEmptyStringEPNS0_5WorkqES2_j.exit, label %.lr.ph.i69

.lr.ph.i69:                                       ; preds = %bb.ac
  %i.eh = load ptr, ptr %i.ef, align 8, !tbaa !96
  %i.ei = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.lr.ph.i69
  %.014.i = phi ptr [ %i.eh, %.lr.ph.i69 ], [ %i.el, %bb.ad ] ; 2 uses
  %i.ej = load i32, ptr %.014.i, align 4, !tbaa !90 ; 2 uses
  %i.ek = load i32, ptr %i.ei, align 8, !tbaa !99
  %.not12.i = icmp slt i32 %i.ej, %i.ek
  %..i = select i1 %.not12.i, i32 %i.ej, i32 -1
  tail call void @_ZN3re23DFA10AddToQueueEPNS0_5WorkqEij(ptr noundef nonnull readonly align 8 dereferenceable(296) %0, ptr noundef nonnull %.pre72, i32 noundef %..i, i32 noundef %.2)
  %i.el = getelementptr inbounds nuw i8, ptr %.014.i, i64 4 ; 2 uses
  %i.em = load ptr, ptr %i.ef, align 8, !tbaa !96
  %i.en = load i32, ptr %.pre, align 8, !tbaa !94
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.em, i64 %i.eo
  %.not.i = icmp eq ptr %i.el, %i.ep
  br i1 %.not.i, label %_ZN3re23DFA21RunWorkqOnEmptyStringEPNS0_5WorkqES2_j.exit, label %bb.ad, !llvm.loop !3

_ZN3re23DFA21RunWorkqOnEmptyStringEPNS0_5WorkqES2_j.exit: ; preds = %bb.ad, %bb.ac
  %i.eq = load ptr, ptr %i.bz, align 8, !tbaa !232 ; 2 uses
  %i.er = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !232 ; 2 uses
  store ptr %i.er, ptr %i.bz, align 8, !tbaa !232
  store ptr %i.eq, ptr %.phi.trans.insert, align 8, !tbaa !232
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.ab, %_ZN3re23DFA21RunWorkqOnEmptyStringEPNS0_5WorkqES2_j.exit
  %i.es = phi ptr [ %i.eq, %_ZN3re23DFA21RunWorkqOnEmptyStringEPNS0_5WorkqES2_j.exit ], [ %.pre72, %bb.ab ]
  %i.et = phi ptr [ %i.er, %_ZN3re23DFA21RunWorkqOnEmptyStringEPNS0_5WorkqES2_j.exit ], [ %.pre, %bb.ab ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 0, ptr %i.a, align 1, !tbaa !20
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  call void @_ZN3re23DFA14RunWorkqOnByteEPNS0_5WorkqES2_ijPb(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef %i.et, ptr noundef %i.es, i32 noundef %2, i32 noundef %spec.select59, ptr noundef nonnull %i.a)
  %i.ev = load ptr, ptr %i.bz, align 8, !tbaa !232 ; 2 uses
  %i.ew = load ptr, ptr %i.eu, align 8, !tbaa !232 ; 2 uses
  store ptr %i.ew, ptr %i.bz, align 8, !tbaa !232
  store ptr %i.ev, ptr %i.eu, align 8, !tbaa !232
  %i.ex = load i8, ptr %i.a, align 1, !tbaa !20, !range !120, !noundef !121
  %i.ey = trunc nuw i8 %i.ex to i1                ; 2 uses
  %i.ez = or disjoint i32 %spec.select59, 256
  %spec.select60 = select i1 %i.ey, i32 %i.ez, i32 %spec.select59 ; 2 uses
  %i.fa = or disjoint i32 %spec.select60, 512
  %.1 = select i1 %i.dv, i32 %i.fa, i32 %spec.select60
  br i1 %i.ey, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %._crit_edge
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !48
  %i.fd = icmp eq i32 %i.fc, 3
  br i1 %i.fd, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae, %._crit_edge
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %.sink = phi ptr [ null, %bb.af ], [ %i.ev, %bb.ae ]
  %i.fe = tail call noundef ptr @_ZN3re23DFA18WorkqToCachedStateEPNS0_5WorkqES2_j(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef %i.ew, ptr noundef %.sink, i32 noundef %.1) ; 2 uses
  %i.ff = load ptr, ptr %0, align 8, !tbaa !47    ; 2 uses
  br i1 %i.bn, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 20
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !92
  br label %_ZN3re23DFA7ByteMapEi.exit71

bb.ai:                                            ; preds = %bb.ag
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 168
  %i.fj = sext i32 %2 to i64
  %i.fk = getelementptr inbounds i8, ptr %i.fi, i64 %i.fj
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !114
  %i.fm = zext i8 %i.fl to i32
  br label %_ZN3re23DFA7ByteMapEi.exit71

_ZN3re23DFA7ByteMapEi.exit71:                     ; preds = %bb.ah, %bb.ai
  %.0.i70 = phi i32 [ %i.fh, %bb.ah ], [ %i.fm, %bb.ai ]
  %i.fn = sext i32 %.0.i70 to i64
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.fn
  store atomic ptr %i.fe, ptr %i.fo release, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN3re23DFA7ByteMapEi.exit71, %_ZN3re23DFA7ByteMapEi.exit, %bb.b, %_ZN10LogMessageD2Ev.exit68, %_ZN10LogMessageD2Ev.exit64, %_ZN10LogMessageD2Ev.exit
  %.150 = phi ptr [ inttoptr (i64 2 to ptr), %bb.b ], [ null, %_ZN10LogMessageD2Ev.exit ], [ null, %_ZN10LogMessageD2Ev.exit64 ], [ null, %_ZN10LogMessageD2Ev.exit68 ], [ %i.fe, %_ZN3re23DFA7ByteMapEi.exit71 ], [ %i.by, %_ZN3re23DFA7ByteMapEi.exit ]
  ret ptr %.150

bb.ak:                                            ; preds = %bb.q, %bb.l, %bb.g
  %.pn = phi { ptr, i32 } [ %i.v, %bb.g ], [ %i.aq, %bb.l ], [ %i.bl, %bb.q ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN3re23DFA8RWLockerC2EPNS_5MutexE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(9) initializes((0, 9)) %0, ptr noundef %1) unnamed_addr #6 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !135
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !136
  %i.b = tail call i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(56) %1) #21
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZN3re25Mutex10ReaderLockEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #22
  unreachable

_ZN3re25Mutex10ReaderLockEv.exit:                 ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN3re23DFA8RWLocker14LockForWritingEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(9) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !136, !range !120, !noundef !121
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !135
  %i.e = tail call i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.d) #21
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN3re25Mutex12ReaderUnlockEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #22
  unreachable

_ZN3re25Mutex12ReaderUnlockEv.exit:               ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !135
  %i.g = tail call i32 @pthread_rwlock_wrlock(ptr noundef nonnull align 8 dereferenceable(56) %i.f) #21
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %_ZN3re25Mutex10WriterLockEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN3re25Mutex12ReaderUnlockEv.exit
  tail call void @abort() #22
  unreachable

_ZN3re25Mutex10WriterLockEv.exit:                 ; preds = %_ZN3re25Mutex12ReaderUnlockEv.exit
  store i8 1, ptr %i.a, align 8, !tbaa !136
  br label %bb.e

bb.e:                                             ; preds = %_ZN3re25Mutex10WriterLockEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN3re23DFA8RWLockerD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(9) dereferenceable(9) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !136, !range !120, !noundef !121
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load ptr, ptr %0, align 8, !tbaa !135
  %i.e = tail call i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.d) #21
  %.not.i.i = icmp eq i32 %i.e, 0                 ; 2 uses
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %_ZN3re25Mutex12ReaderUnlockEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #22
  unreachable

bb.d:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %_ZN3re25Mutex12ReaderUnlockEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @abort() #22
  unreachable

_ZN3re25Mutex12ReaderUnlockEv.exit:               ; preds = %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3re23DFA10ResetCacheEPNS0_8RWLockerE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(296) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.re2::hooks::DFAStateCacheReset", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !136, !range !120, !noundef !121
  %i.c = trunc nuw i8 %i.b to i1
end_hunk_0
