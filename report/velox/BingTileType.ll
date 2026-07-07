inline.NumInlined: 603
inline.NumDeleted: 219
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN8facebook5velox12BingTileType15bingTilesAroundB5cxx11Eddhd:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !18   ; 3 uses
  %i.aa = icmp ult i64 %i.z, 16
  call void @llvm.assume(i1 %i.aa)
  %i.ab = add nuw nsw i64 %i.z, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.u, ptr noundef nonnull align 8 dereferenceable(1) %i.w, i64 %i.ab, i1 false)
  br label %_ZN5folly10UnexpectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit253

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i249: ; preds = %bb.e
  store ptr %i.v, ptr %0, align 8, !tbaa !15
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !10
  store i64 %i.ac, ptr %i.u, align 8, !tbaa !10
  %.phi.trans.insert1108 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.pre1109 = load i64, ptr %.phi.trans.insert1108, align 8, !tbaa !18
  br label %_ZN5folly10UnexpectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit253

_ZN5folly10UnexpectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit253: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i249
  %i.ad = phi i64 [ %i.z, %bb.f ], [ %.pre1109, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i249 ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 2, ptr %i.af, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.gn

bb.g:                                             ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.gp

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  invoke fastcc void @_ZN8facebook5velox12_GLOBAL__N_115latitudeToTileYB5cxx11Edh(ptr dead_on_unwind noalias writable align 8 %12, double noundef %1, i8 noundef zeroext %3)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 9 uses
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !86
  %i.aj = icmp eq i8 %i.ai, 2
  br i1 %i.aj, label %bb.j, label %bb.o, !prof !31

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  invoke void @_ZN5folly14makeUnexpectedIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_10UnexpectedINSt5decayIT_E4typeEEEOSA_(ptr dead_on_unwind nonnull writable sret(%"class.folly::Unexpected") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ak, ptr %0, align 8, !tbaa !11
  %i.al = load ptr, ptr %13, align 8, !tbaa !15   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i256

bb.l:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !18 ; 3 uses
  %i.aq = icmp ult i64 %i.ap, 16
  call void @llvm.assume(i1 %i.aq)
  %i.ar = add nuw nsw i64 %i.ap, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ak, ptr noundef nonnull align 8 dereferenceable(1) %i.am, i64 %i.ar, i1 false)
  br label %_ZN5folly10UnexpectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit260

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i256: ; preds = %bb.k
  store ptr %i.al, ptr %0, align 8, !tbaa !15
  %i.as = load i64, ptr %i.am, align 8, !tbaa !10
  store i64 %i.as, ptr %i.ak, align 8, !tbaa !10
  %.phi.trans.insert1106 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.pre1107 = load i64, ptr %.phi.trans.insert1106, align 8, !tbaa !18
  br label %_ZN5folly10UnexpectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit260

_ZN5folly10UnexpectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit260: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i256
  %i.at = phi i64 [ %i.ap, %bb.l ], [ %.pre1107, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i256 ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.at, ptr %i.au, align 8, !tbaa !18
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 2, ptr %i.av, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %bb.gj

bb.m:                                             ; preds = %bb.h
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly15expected_detail15ExpectedStorageIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELNS0_11StorageTypeE2EED2Ev.exit500

bb.n:                                             ; preds = %bb.j
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %bb.gl

bb.o:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !140)
  %i.ay = icmp ugt i8 %3, 23
  br i1 %i.ay, label %bb.p, label %bb.w, !prof !31

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18, !noalias !140
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18, !noalias !143
  %i.az = zext i8 %3 to i32
  store i32 %i.az, ptr %5, align 16, !tbaa !10, !noalias !143
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 23, ptr %i.ba, align 16, !tbaa !10, !noalias !143
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.8, i64 41, i64 34, ptr nonnull %5)
          to label %.noexc261 unwind label %bb.u

.noexc261:                                        ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18, !noalias !143
  %i.bb = load ptr, ptr %6, align 8, !tbaa !15, !noalias !146 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  br i1 %i.bd, label %.thread.i, label %bb.q

.thread.i:                                        ; preds = %.noexc261
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !18, !noalias !146 ; 3 uses
  %i.bh = add nuw nsw i64 %i.bg, 1
  %i.bi = icmp ult i64 %i.bg, 16
  call void @llvm.assume(i1 %i.bi)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.be, ptr noundef nonnull align 8 dereferenceable(1) %i.bc, i64 %i.bh, i1 false)
  br label %bb.r

bb.q:                                             ; preds = %.noexc261
  %i.bj = load i64, ptr %i.bc, align 8, !tbaa !10, !noalias !146
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !18, !noalias !146
  store i64 %i.bj, ptr %i.be, align 8, !tbaa !10, !alias.scope !140
  br label %bb.r

bb.r:                                             ; preds = %.thread.i, %bb.q
  %.sink = phi ptr [ %i.be, %.thread.i ], [ %i.bb, %bb.q ]
  %i.bk = phi i64 [ %i.bg, %.thread.i ], [ %.pre.i.i, %bb.q ]
  store ptr %.sink, ptr %14, align 8, !tbaa !11, !alias.scope !140
  %i.bl = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !18, !alias.scope !140
  %i.bm = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i8 2, ptr %i.bm, align 8, !tbaa !105, !alias.scope !140
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18, !noalias !140
  %i.bn = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  invoke void @_ZN5folly14makeUnexpectedIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_10UnexpectedINSt5decayIT_E4typeEEEOSA_(ptr dead_on_unwind nonnull writable sret(%"class.folly::Unexpected") align 8 %15, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bo, ptr %0, align 8, !tbaa !11
  %i.bp = load ptr, ptr %15, align 8, !tbaa !15   ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i263

bb.t:                                             ; preds = %bb.s
  %i.bs = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !18 ; 3 uses
  %i.bu = icmp ult i64 %i.bt, 16
  call void @llvm.assume(i1 %i.bu)
  %i.bv = add nuw nsw i64 %i.bt, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bo, ptr noundef nonnull align 8 dereferenceable(1) %i.bq, i64 %i.bv, i1 false)
  br label %_ZN5folly10UnexpectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit268

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i263: ; preds = %bb.s
  store ptr %i.bp, ptr %0, align 8, !tbaa !15
  %i.bw = load i64, ptr %i.bq, align 8, !tbaa !10
  store i64 %i.bw, ptr %i.bo, align 8, !tbaa !10
  %.phi.trans.insert1104 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %.pre1105 = load i64, ptr %.phi.trans.insert1104, align 8, !tbaa !18
  br label %_ZN5folly10UnexpectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit268

_ZN5folly10UnexpectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit268: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i263
  %i.bx = phi i64 [ %i.bt, %bb.t ], [ %.pre1105, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i263 ]
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !18
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 2, ptr %i.bz, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %bb.ge

bb.u:                                             ; preds = %bb.p
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.gi

bb.v:                                             ; preds = %bb.r
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %bb.gg

bb.w:                                             ; preds = %bb.o
  %i.cc = zext nneg i8 %3 to i64
  %i.cd = shl nuw nsw i64 256, %i.cc              ; 2 uses
  store i64 %i.cd, ptr %14, align 8, !tbaa !10, !alias.scope !140
  %i.ce = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i8 1, ptr %i.ce, align 8, !tbaa !105, !alias.scope !140
  %i.cf = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 2 uses
  %.lhs.trunc = trunc i64 %i.cd to i32
  %i.cg = lshr exact i32 %.lhs.trunc, 8           ; 4 uses
  %26 = insertelement <2 x double> poison, double %1, i64 0
  %27 = insertelement <2 x double> %26, double %4, i64 1
  %28 = fmul <2 x double> %27, <double f0x400921FB54442D18, double 1.000000e+00>
  %29 = fdiv <2 x double> %28, <double 1.800000e+02, double 6.371010e+03> ; 2 uses
  %30 = extractelement <2 x double> %29, i64 1    ; 8 uses
  %31 = extractelement <2 x double> %29, i64 0    ; 10 uses
  %i.ch = call double @sin(double noundef %31) #18, !tbaa !3
  %i.ci = call double @cos(double noundef %30) #18, !tbaa !3
  %i.cj = fmul double %i.ch, %i.ci
  %i.ck = call double @cos(double noundef %31) #18, !tbaa !3
  %i.cl = call double @sin(double noundef %30) #18, !tbaa !3
  %i.cm = fmul double %i.ck, %i.cl
  %i.cn = fadd double %i.cj, %i.cm
  %i.co = call double @asin(double noundef %i.cn) #18, !tbaa !3
  %i.cp = fmul double %i.co, 1.800000e+02
  %i.cq = fdiv double %i.cp, f0x400921FB54442D18  ; 3 uses
  %i.cr = fcmp ogt double %i.cq, f0x40554345B1A57F00
  %i.cs = fcmp olt double %i.cq, f0xC0554345B1A57F00
  %..i = select i1 %i.cs, double f0xC0554345B1A57F00, double %i.cq
  %.0.i = select i1 %i.cr, double f0x40554345B1A57F00, double %..i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  invoke void @_ZN8facebook5velox12BingTileType23latitudeLongitudeToTileB5cxx11Eddh(ptr dead_on_unwind nonnull writable sret(%"class.folly::Expected") align 8 %16, double noundef %.0.i, double noundef %2, i8 noundef zeroext %3)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.ct = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 3 uses
  %i.cu = load i8, ptr %i.ct, align 8, !tbaa !32
  switch i8 %i.cu, label %bb.ad [
    i8 2, label %bb.y
    i8 1, label %bb.ae
  ], !prof !149

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  invoke void @_ZN5folly14makeUnexpectedIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_10UnexpectedINSt5decayIT_E4typeEEEOSA_(ptr dead_on_unwind nonnull writable sret(%"class.folly::Unexpected") align 8 %17, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %bb.z unwind label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.cv, ptr %0, align 8, !tbaa !11
  %i.cw = load ptr, ptr %17, align 8, !tbaa !15   ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i272

bb.aa:                                            ; preds = %bb.z
  %i.cz = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !18 ; 3 uses
  %i.db = icmp ult i64 %i.da, 16
  call void @llvm.assume(i1 %i.db)
  %i.dc = add nuw nsw i64 %i.da, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cv, ptr noundef nonnull align 8 dereferenceable(1) %i.cx, i64 %i.dc, i1 false)
  br label %_ZN5folly10UnexpectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit277

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i272: ; preds = %bb.z
  store ptr %i.cw, ptr %0, align 8, !tbaa !15
  %i.dd = load i64, ptr %i.cx, align 8, !tbaa !10
  store i64 %i.dd, ptr %i.cv, align 8, !tbaa !10
  %.phi.trans.insert1102 = getelementptr inbounds nuw i8, ptr %17, i64 8
  %.pre1103 = load i64, ptr %.phi.trans.insert1102, align 8, !tbaa !18
  br label %_ZN5folly10UnexpectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit277

_ZN5folly10UnexpectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit277: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i272
  %i.de = phi i64 [ %i.da, %bb.aa ], [ %.pre1103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i272 ]
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.de, ptr %i.df, align 8, !tbaa !18
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 2, ptr %i.dg, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  br label %bb.ga

bb.ab:                                            ; preds = %bb.w
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly15expected_detail15ExpectedStorageImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELNS0_11StorageTypeE2EED2Ev.exit486

bb.ac:                                            ; preds = %bb.y
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  br label %bb.gc

bb.ad:                                            ; preds = %bb.x
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #12
          to label %.noexc279 unwind label %bb.aj

.noexc279:                                        ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.x
  %i.dj = load i64, ptr %16, align 8, !tbaa !41   ; 2 uses
  %i.dk = call double @sin(double noundef %31) #18, !tbaa !3
  %i.dl = call double @cos(double noundef %30) #18, !tbaa !3
  %i.dm = fmul double %i.dk, %i.dl
  %i.dn = call double @cos(double noundef %31) #18, !tbaa !3
  %i.do = call double @sin(double noundef %30) #18, !tbaa !3
  %i.dp = fmul double %i.dn, %i.do
  %i.dq = fsub double %i.dm, %i.dp
  %i.dr = call double @asin(double noundef %i.dq) #18, !tbaa !3
  %i.ds = fmul double %i.dr, 1.800000e+02
  %i.dt = fdiv double %i.ds, f0x400921FB54442D18  ; 3 uses
  %i.du = fcmp ogt double %i.dt, f0x40554345B1A57F00
  %i.dv = fcmp olt double %i.dt, f0xC0554345B1A57F00
  %..i280 = select i1 %i.dv, double f0xC0554345B1A57F00, double %i.dt
  %.0.i281 = select i1 %i.du, double f0x40554345B1A57F00, double %..i280
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  invoke void @_ZN8facebook5velox12BingTileType23latitudeLongitudeToTileB5cxx11Eddh(ptr dead_on_unwind nonnull writable sret(%"class.folly::Expected") align 8 %18, double noundef %.0.i281, double noundef %2, i8 noundef zeroext %3)
          to label %bb.af unwind label %bb.ak

bb.af:                                            ; preds = %bb.ae
  %i.dw = getelementptr inbounds nuw i8, ptr %18, i64 32 ; 3 uses
  %i.dx = load i8, ptr %i.dw, align 8, !tbaa !32
  switch i8 %i.dx, label %bb.am [
    i8 2, label %bb.ag
    i8 1, label %_ZNR5folly8ExpectedImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit292
  ], !prof !149

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  invoke void @_ZN5folly14makeUnexpectedIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_10UnexpectedINSt5decayIT_E4typeEEEOSA_(ptr dead_on_unwind nonnull writable sret(%"class.folly::Unexpected") align 8 %19, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.ah unwind label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.dy, ptr %0, align 8, !tbaa !11
  %i.dz = load ptr, ptr %19, align 8, !tbaa !15   ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 3 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %bb.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i284

bb.ai:                                            ; preds = %bb.ah
  %i.ec = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !18 ; 3 uses
  %i.ee = icmp ult i64 %i.ed, 16
  call void @llvm.assume(i1 %i.ee)
  %i.ef = add nuw nsw i64 %i.ed, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dy, ptr noundef nonnull align 8 dereferenceable(1) %i.ea, i64 %i.ef, i1 false)
  br label %_ZN5folly10UnexpectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit289

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i284: ; preds = %bb.ah
  store ptr %i.dz, ptr %0, align 8, !tbaa !15
  %i.eg = load i64, ptr %i.ea, align 8, !tbaa !10
  store i64 %i.eg, ptr %i.dy, align 8, !tbaa !10
  %.phi.trans.insert1100 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %.pre1101 = load i64, ptr %.phi.trans.insert1100, align 8, !tbaa !18
  br label %_ZN5folly10UnexpectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit289

_ZN5folly10UnexpectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit289: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i284
  %i.eh = phi i64 [ %i.ed, %bb.ai ], [ %.pre1101, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i284 ]
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.eh, ptr %i.ei, align 8, !tbaa !18
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 2, ptr %i.ej, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %bb.fw

bb.aj:                                            ; preds = %bb.ad
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.gc

bb.ak:                                            ; preds = %bb.ae
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly15expected_detail15ExpectedStorageImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELNS0_11StorageTypeE2EED2Ev.exit478

bb.al:                                            ; preds = %bb.ag
  %i.em = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %bb.fy

bb.am:                                            ; preds = %bb.af
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #12
          to label %.noexc291 unwind label %bb.au

.noexc291:                                        ; preds = %bb.am
  unreachable

_ZNR5folly8ExpectedImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit292: ; preds = %bb.af
  %i.en = load i64, ptr %18, align 8, !tbaa !41   ; 2 uses
  %i.eo = fmul double %2, f0x400921FB54442D18
  %i.ep = fdiv double %i.eo, 1.800000e+02         ; 4 uses
  %i.eq = call double @sin(double noundef %30) #18, !tbaa !3
  %i.er = fneg double %i.eq
  %i.es = call double @cos(double noundef %31) #18, !tbaa !3
  %i.et = fmul double %i.es, %i.er
  %i.eu = call double @cos(double noundef %30) #18, !tbaa !3
  %i.ev = call double @sin(double noundef %31) #18, !tbaa !3 ; 2 uses
  %i.ew = fmul double %i.ev, %i.ev
  %i.ex = fsub double %i.eu, %i.ew
  %i.ey = call double @atan2(double noundef %i.et, double noundef %i.ex) #18, !tbaa !3
  %i.ez = fadd double %i.ep, %i.ey
  %i.fa = fmul double %i.ez, 1.800000e+02
  %i.fb = fdiv double %i.fa, f0x400921FB54442D18  ; 5 uses
  %i.fc = fcmp ogt double %i.fb, 1.800000e+02
  br i1 %i.fc, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZNR5folly8ExpectedImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit292
  %i.fd = fadd double %i.fb, -1.800000e+02
  %i.fe = fadd double %i.fd, -1.800000e+02
  br label %_ZN8facebook5velox12_GLOBAL__N_122addDistanceToLongitudeEdddd.exit

bb.ao:                                            ; preds = %_ZNR5folly8ExpectedImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit292
  %i.ff = fcmp olt double %i.fb, -1.800000e+02
  br i1 %i.ff, label %bb.ap, label %_ZN8facebook5velox12_GLOBAL__N_122addDistanceToLongitudeEdddd.exit

bb.ap:                                            ; preds = %bb.ao
  %i.fg = fadd double %i.fb, 1.800000e+02
  %i.fh = fadd double %i.fg, 1.800000e+02
  br label %_ZN8facebook5velox12_GLOBAL__N_122addDistanceToLongitudeEdddd.exit

_ZN8facebook5velox12_GLOBAL__N_122addDistanceToLongitudeEdddd.exit: ; preds = %bb.an, %bb.ao, %bb.ap
  %.0.i293 = phi double [ %i.fe, %bb.an ], [ %i.fh, %bb.ap ], [ %i.fb, %bb.ao ]
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18
  invoke void @_ZN8facebook5velox12BingTileType23latitudeLongitudeToTileB5cxx11Eddh(ptr dead_on_unwind nonnull writable sret(%"class.folly::Expected") align 8 %20, double noundef %1, double noundef %.0.i293, i8 noundef zeroext %3)
          to label %bb.aq unwind label %bb.av

bb.aq:                                            ; preds = %_ZN8facebook5velox12_GLOBAL__N_122addDistanceToLongitudeEdddd.exit
  %i.fi = getelementptr inbounds nuw i8, ptr %20, i64 32 ; 3 uses
  %i.fj = load i8, ptr %i.fi, align 8, !tbaa !32
  switch i8 %i.fj, label %bb.ax [
    i8 2, label %bb.ar
    i8 1, label %_ZNR5folly8ExpectedImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit304
  ], !prof !149

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #18
  invoke void @_ZN5folly14makeUnexpectedIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_10UnexpectedINSt5decayIT_E4typeEEEOSA_(ptr dead_on_unwind nonnull writable sret(%"class.folly::Unexpected") align 8 %21, ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %bb.as unwind label %bb.aw

bb.as:                                            ; preds = %bb.ar
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.fk, ptr %0, align 8, !tbaa !11
  %i.fl = load ptr, ptr %21, align 8, !tbaa !15   ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 3 uses
  %i.fn = icmp eq ptr %i.fl, %i.fm
  br i1 %i.fn, label %bb.at, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i296

bb.at:                                            ; preds = %bb.as
  %i.fo = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !18 ; 3 uses
  %i.fq = icmp ult i64 %i.fp, 16
  call void @llvm.assume(i1 %i.fq)
  %i.fr = add nuw nsw i64 %i.fp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fk, ptr noundef nonnull align 8 dereferenceable(1) %i.fm, i64 %i.fr, i1 false)
  br label %_ZN5folly10UnexpectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit301

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i296: ; preds = %bb.as
  store ptr %i.fl, ptr %0, align 8, !tbaa !15
  %i.fs = load i64, ptr %i.fm, align 8, !tbaa !10
  store i64 %i.fs, ptr %i.fk, align 8, !tbaa !10
  %.phi.trans.insert1098 = getelementptr inbounds nuw i8, ptr %21, i64 8
  %.pre1099 = load i64, ptr %.phi.trans.insert1098, align 8, !tbaa !18
  br label %_ZN5folly10UnexpectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit301

_ZN5folly10UnexpectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit301: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i296
  %i.ft = phi i64 [ %i.fp, %bb.at ], [ %.pre1099, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i296 ]
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ft, ptr %i.fu, align 8, !tbaa !18
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 2, ptr %i.fv, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  br label %bb.fs

bb.au:                                            ; preds = %bb.am
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.fy

bb.av:                                            ; preds = %_ZN8facebook5velox12_GLOBAL__N_122addDistanceToLongitudeEdddd.exit
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly15expected_detail15ExpectedStorageImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELNS0_11StorageTypeE2EED2Ev.exit470

bb.aw:                                            ; preds = %bb.ar
  %i.fy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  br label %bb.fu

bb.ax:                                            ; preds = %bb.aq
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #12
          to label %.noexc303 unwind label %bb.bf

.noexc303:                                        ; preds = %bb.ax
  unreachable

_ZNR5folly8ExpectedImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit304: ; preds = %bb.aq
  %i.fz = load i64, ptr %20, align 8, !tbaa !41
  %i.ga = call double @sin(double noundef %30) #18, !tbaa !3
  %i.gb = call double @cos(double noundef %31) #18, !tbaa !3
  %i.gc = fmul double %i.ga, %i.gb
  %i.gd = call double @cos(double noundef %30) #18, !tbaa !3
  %i.ge = call double @sin(double noundef %31) #18, !tbaa !3 ; 2 uses
  %i.gf = fmul double %i.ge, %i.ge
  %i.gg = fsub double %i.gd, %i.gf
  %i.gh = call double @atan2(double noundef %i.gc, double noundef %i.gg) #18, !tbaa !3
  %i.gi = fadd double %i.ep, %i.gh
  %i.gj = fmul double %i.gi, 1.800000e+02
  %i.gk = fdiv double %i.gj, f0x400921FB54442D18  ; 5 uses
  %i.gl = fcmp ogt double %i.gk, 1.800000e+02
  br i1 %i.gl, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %_ZNR5folly8ExpectedImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit304
  %i.gm = fadd double %i.gk, -1.800000e+02
  %i.gn = fadd double %i.gm, -1.800000e+02
  br label %_ZN8facebook5velox12_GLOBAL__N_122addDistanceToLongitudeEdddd.exit306

bb.az:                                            ; preds = %_ZNR5folly8ExpectedImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit304
  %i.go = fcmp olt double %i.gk, -1.800000e+02
  br i1 %i.go, label %bb.ba, label %_ZN8facebook5velox12_GLOBAL__N_122addDistanceToLongitudeEdddd.exit306

bb.ba:                                            ; preds = %bb.az
  %i.gp = fadd double %i.gk, 1.800000e+02
  %i.gq = fadd double %i.gp, 1.800000e+02
  br label %_ZN8facebook5velox12_GLOBAL__N_122addDistanceToLongitudeEdddd.exit306

_ZN8facebook5velox12_GLOBAL__N_122addDistanceToLongitudeEdddd.exit306: ; preds = %bb.ay, %bb.az, %bb.ba
  %.0.i305 = phi double [ %i.gn, %bb.ay ], [ %i.gq, %bb.ba ], [ %i.gk, %bb.az ]
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #18
  invoke void @_ZN8facebook5velox12BingTileType23latitudeLongitudeToTileB5cxx11Eddh(ptr dead_on_unwind nonnull writable sret(%"class.folly::Expected") align 8 %22, double noundef %1, double noundef %.0.i305, i8 noundef zeroext %3)
          to label %bb.bb unwind label %bb.bg

bb.bb:                                            ; preds = %_ZN8facebook5velox12_GLOBAL__N_122addDistanceToLongitudeEdddd.exit306
  %i.gr = getelementptr inbounds nuw i8, ptr %22, i64 32 ; 3 uses
  %i.gs = load i8, ptr %i.gr, align 8, !tbaa !32
  switch i8 %i.gs, label %bb.bi [
    i8 2, label %bb.bc
    i8 1, label %_ZNR5folly8ExpectedImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit317
  ], !prof !149

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #18
  invoke void @_ZN5folly14makeUnexpectedIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_10UnexpectedINSt5decayIT_E4typeEEEOSA_(ptr dead_on_unwind nonnull writable sret(%"class.folly::Unexpected") align 8 %23, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %bb.bd unwind label %bb.bh

bb.bd:                                            ; preds = %bb.bc
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.gt, ptr %0, align 8, !tbaa !11
  %i.gu = load ptr, ptr %23, align 8, !tbaa !15   ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 3 uses
  %i.gw = icmp eq ptr %i.gu, %i.gv
  br i1 %i.gw, label %bb.be, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i309

bb.be:                                            ; preds = %bb.bd
  %i.gx = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !18 ; 3 uses
  %i.gz = icmp ult i64 %i.gy, 16
  call void @llvm.assume(i1 %i.gz)
  %i.ha = add nuw nsw i64 %i.gy, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gt, ptr noundef nonnull align 8 dereferenceable(1) %i.gv, i64 %i.ha, i1 false)
  br label %_ZN5folly10UnexpectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit314

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i309: ; preds = %bb.bd
  store ptr %i.gu, ptr %0, align 8, !tbaa !15
  %i.hb = load i64, ptr %i.gv, align 8, !tbaa !10
  store i64 %i.hb, ptr %i.gt, align 8, !tbaa !10
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %23, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !18
  br label %_ZN5folly10UnexpectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit314

_ZN5folly10UnexpectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit314: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i309
  %i.hc = phi i64 [ %i.gy, %bb.be ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i309 ]
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.hc, ptr %i.hd, align 8, !tbaa !18
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 2, ptr %i.he, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  br label %bb.fp

bb.bf:                                            ; preds = %bb.ax
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %bb.fu

bb.bg:                                            ; preds = %_ZN8facebook5velox12_GLOBAL__N_122addDistanceToLongitudeEdddd.exit306
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly15expected_detail15ExpectedStorageImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELNS0_11StorageTypeE2EED2Ev.exit462

bb.bh:                                            ; preds = %bb.bc
  %i.hh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  br label %_ZNSt6vectorImSaImEED2Ev.exit457

bb.bi:                                            ; preds = %bb.bb
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #12
          to label %.noexc316 unwind label %bb.bn

.noexc316:                                        ; preds = %bb.bi
  unreachable

_ZNR5folly8ExpectedImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit317: ; preds = %bb.bb
  %i.hi = load i64, ptr %22, align 8, !tbaa !41
  %i.hj = lshr i64 %i.hi, 32
  %i.hk = trunc nuw i64 %i.hj to i32
  %i.hl = and i32 %i.hk, 16777215                 ; 4 uses
  %i.hm = lshr i64 %i.fz, 32
  %i.hn = trunc nuw i64 %i.hm to i32
  %i.ho = and i32 %i.hn, 16777215                 ; 4 uses
  %i.hp = icmp samesign ult i32 %i.hl, %i.ho      ; 2 uses
  %i.hq = trunc i64 %i.en to i32
  %i.hr = and i32 %i.hq, 16777215                 ; 3 uses
  %i.hs = trunc i64 %i.dj to i32
  %i.ht = and i32 %i.hs, 16777215                 ; 2 uses
  %i.hu = add nuw nsw i32 %i.cg, 1
  %.sink1416 = select i1 %i.hp, i32 %i.hu, i32 %i.hl
  %.sink1415 = select i1 %i.hp, i32 %i.hl, i32 1
  %reass.sub = sub nsw i32 %.sink1416, %i.ho
  %i.hv = add nsw i32 %reass.sub, %.sink1415      ; 3 uses
  %reass.sub892 = sub nsw i32 %i.hr, %i.ht
  %i.hw = add nsw i32 %reass.sub892, 1
  %i.hx = mul i32 %i.hv, %i.hw                    ; 4 uses
  %i.hy = icmp ugt i32 %i.hx, 1000000
  br i1 %i.hy, label %bb.bj, label %bb.bp

bb.bj:                                            ; preds = %_ZNR5folly8ExpectedImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit317
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18, !noalias !150
  store i32 %i.hx, ptr %7, align 16, !tbaa !10, !noalias !150
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, ptr nonnull @.str.11, i64 90, i64 2, ptr nonnull %7)
          to label %bb.bk unwind label %bb.bo

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18, !noalias !150
  call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %i.hz = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 6 uses
  store ptr %i.hz, ptr %24, align 8, !tbaa !11, !alias.scope !153
  %i.ia = load ptr, ptr %25, align 8, !tbaa !15, !noalias !153 ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 3 uses
  %i.ic = icmp eq ptr %i.ia, %i.ib
  br i1 %i.ic, label %.thread1206, label %bb.bl

.thread1206:                                      ; preds = %bb.bk
  %i.id = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !18, !noalias !153 ; 3 uses
  %i.if = icmp ult i64 %i.ie, 16
  call void @llvm.assume(i1 %i.if)
  %i.ig = add nuw nsw i64 %i.ie, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hz, ptr noundef nonnull align 8 dereferenceable(1) %i.ib, i64 %i.ig, i1 false)
  %i.ih = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.ii, ptr %0, align 8, !tbaa !11
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.ij = load i64, ptr %i.ib, align 8, !tbaa !10, !noalias !153
  store i64 %i.ij, ptr %i.hz, align 8, !tbaa !10, !alias.scope !153
  %.phi.trans.insert.i319 = getelementptr inbounds nuw i8, ptr %25, i64 8
  %.pre.i320 = load i64, ptr %.phi.trans.insert.i319, align 8, !tbaa !18, !noalias !153 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.il, ptr %0, align 8, !tbaa !11
  %i.im = icmp eq ptr %i.ia, %i.hz
  br i1 %i.im, label %bb.bm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i322

bb.bm:                                            ; preds = %.thread1206, %bb.bl
  %i.in = phi ptr [ %i.ii, %.thread1206 ], [ %i.il, %bb.bl ]
  %i.io = phi ptr [ %i.ih, %.thread1206 ], [ %i.ik, %bb.bl ]
  %i.ip = phi i64 [ %i.ie, %.thread1206 ], [ %.pre.i320, %bb.bl ] ; 3 uses
  %i.iq = icmp ult i64 %i.ip, 16
  call void @llvm.assume(i1 %i.iq)
  %i.ir = add nuw nsw i64 %i.ip, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.in, ptr noundef nonnull align 8 dereferenceable(1) %i.hz, i64 %i.ir, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i322: ; preds = %bb.bl
  store ptr %i.ia, ptr %0, align 8, !tbaa !15
  %i.is = load i64, ptr %i.hz, align 8, !tbaa !10
  store i64 %i.is, ptr %i.il, align 8, !tbaa !10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i322
  %i.it = phi ptr [ %i.io, %bb.bm ], [ %i.ik, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i322 ]
  %i.iu = phi i64 [ %i.ip, %bb.bm ], [ %.pre.i320, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i322 ]
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.iu, ptr %i.iv, align 8, !tbaa !18
  store i64 0, ptr %i.it, align 8, !tbaa !18
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 2, ptr %i.iw, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  br label %bb.fp

bb.bn:                                            ; preds = %bb.bi
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit457

bb.bo:                                            ; preds = %bb.bj
  %i.iy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  br label %_ZNSt6vectorImSaImEED2Ev.exit457

bb.bp:                                            ; preds = %_ZNR5folly8ExpectedImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit317
  %i.iz = zext nneg i32 %i.hx to i64              ; 2 uses
  %.not601 = icmp eq i32 %i.hx, 0
  br i1 %.not601, label %_ZNSt6vectorImSaImEE7reserveEm.exit, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %bb.bp
  %i.ja = shl nuw nsw i64 %i.iz, 3
  %i.jb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ja) #19
          to label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i unwind label %.thread ; 2 uses

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i: ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.iz
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit

_ZNSt6vectorImSaImEE7reserveEm.exit:              ; preds = %bb.bp, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i
  %.sroa.63.15 = phi ptr [ %i.jc, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ null, %bb.bp ] ; 2 uses
  %.sroa.30.13 = phi ptr [ %i.jb, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ null, %bb.bp ] ; 4 uses
  %.not893 = icmp eq i32 %i.hv, 0
  br i1 %.not893, label %.preheader642, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit
  %i.jd = zext nneg i8 %3 to i64
  %i.je = shl nuw nsw i64 %i.jd, 26
  %i.jf = add nsw i32 %i.cg, -1
  br label %bb.bq

.preheader642:                                    ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit, %_ZNSt6vectorImSaImEE7reserveEm.exit
  %.sroa.63.0.lcssa = phi ptr [ %.sroa.63.15, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %.sroa.63.16, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 2 uses
  %.sroa.30.0.lcssa = phi ptr [ %.sroa.30.13, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %.sroa.30.14, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 2 uses
  %.sroa.0537.0.lcssa = phi ptr [ %.sroa.30.13, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %.sroa.0537.16, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 2 uses
  %.not883 = icmp samesign ugt i32 %i.ht, %i.hr
  %.pre1110 = zext nneg i8 %3 to i64
  %.pre1111 = shl nuw nsw i64 %.pre1110, 26       ; 5 uses
  %.pre1115 = and i64 %i.dj, 16777215             ; 3 uses
  br i1 %.not883, label %._crit_edge, label %.lr.ph888

.lr.ph888:                                        ; preds = %.preheader642
  %i.jg = add nuw nsw i32 %i.hr, 1
  %wide.trip.count = zext nneg i32 %i.jg to i64
  br label %bb.by

.thread:                                          ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit457

bb.bq:                                            ; preds = %.lr.ph, %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %.0163880 = phi i32 [ 0, %.lr.ph ], [ %i.kf, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 2 uses
  %.sroa.0537.0879 = phi ptr [ %.sroa.30.13, %.lr.ph ], [ %.sroa.0537.16, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 7 uses
  %.sroa.30.0878 = phi ptr [ %.sroa.30.13, %.lr.ph ], [ %.sroa.30.14, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 6 uses
  %.sroa.63.0877 = phi ptr [ %.sroa.63.15, %.lr.ph ], [ %.sroa.63.16, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 4 uses
  %i.ji = load i8, ptr %i.ah, align 8, !tbaa !86
  switch i8 %i.ji, label %bb.bs [
    i8 1, label %_ZNR5folly8ExpectedIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit
    i8 2, label %bb.br
  ], !prof !88

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJRKS8_EEEvDpT0_(ptr noundef nonnull align 8 dereferenceable(40) %12) #12
          to label %.noexc335 unwind label %.loopexit.split-lp649

.noexc335:                                        ; preds = %bb.br
  unreachable

bb.bs:                                            ; preds = %bb.bq
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #12
          to label %.noexc336 unwind label %.loopexit.split-lp649

.noexc336:                                        ; preds = %bb.bs
  unreachable

_ZNR5folly8ExpectedIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit: ; preds = %bb.bq
  %i.jj = add nuw i32 %.0163880, %i.ho
  %i.jk = and i32 %i.jj, %i.jf
  %i.jl = load i32, ptr %12, align 8, !tbaa !3
  %i.jm = zext i32 %i.jk to i64
  %i.jn = shl nuw i64 %i.jm, 32
  %i.jo = zext i32 %i.jl to i64
  %i.jp = or disjoint i64 %i.jn, %i.jo
  %i.jq = or i64 %i.jp, %i.je                     ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.30.0878, %.sroa.63.0877
  br i1 %.not.i.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %_ZNR5folly8ExpectedIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit
  store i64 %i.jq, ptr %.sroa.30.0878, align 8, !tbaa !41
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.bu:                                            ; preds = %_ZNR5folly8ExpectedIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit
  %i.jr = ptrtoint ptr %.sroa.30.0878 to i64
  %i.js = ptrtoint ptr %.sroa.0537.0879 to i64
  %i.jt = sub i64 %i.jr, %i.js                    ; 6 uses
  %i.ju = icmp eq i64 %i.jt, 9223372036854775800
  br i1 %i.ju, label %bb.bv, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #20
          to label %.noexc337 unwind label %.loopexit.split-lp649

.noexc337:                                        ; preds = %bb.bv
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bu
  %i.jv = ashr exact i64 %i.jt, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.jv, i64 1)
  %i.jw = add nsw i64 %.sroa.speculated.i.i.i.i, %i.jv ; 2 uses
  %i.jx = icmp ult i64 %i.jw, %i.jv
  %i.jy = call i64 @llvm.umin.i64(i64 %i.jw, i64 1152921504606846975)
  %i.jz = select i1 %i.jx, i64 1152921504606846975, i64 %i.jy ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.jz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ka = shl nuw nsw i64 %i.jz, 3
  %i.kb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ka) #19
          to label %.noexc338 unwind label %.loopexit648 ; 4 uses

.noexc338:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.kc = getelementptr inbounds i8, ptr %i.kb, i64 %i.jt ; 2 uses
  store i64 %i.jq, ptr %i.kc, align 8, !tbaa !41
  %i.kd = icmp sgt i64 %i.jt, 0
  br i1 %i.kd, label %bb.bw, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.bw:                                            ; preds = %.noexc338
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.kb, ptr align 8 %.sroa.0537.0879, i64 %i.jt, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.bw, %.noexc338
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0537.0879, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.bx

bb.bx:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0537.0879, i64 noundef %i.jt) #21
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.bx, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %i.jz
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, %bb.bt
  %.sroa.63.16 = phi ptr [ %i.ke, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.63.0877, %bb.bt ] ; 2 uses
  %.pn = phi ptr [ %i.kc, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.30.0878, %bb.bt ]
  %.sroa.0537.16 = phi ptr [ %i.kb, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.0537.0879, %bb.bt ] ; 2 uses
  %.sroa.30.14 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  %i.kf = add nuw i32 %.0163880, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.kf, %i.hv
  br i1 %exitcond.not, label %.preheader642, label %bb.bq, !llvm.loop !156

.loopexit648:                                     ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit650 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fn

.loopexit.split-lp649:                            ; preds = %bb.br, %bb.bs, %bb.bv
  %.sroa.63.08771082 = phi ptr [ %.sroa.63.0877, %bb.br ], [ %.sroa.63.0877, %bb.bs ], [ %.sroa.30.0878, %bb.bv ]
  %lpad.loopexit.split-lp651 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fn

._crit_edge:                                      ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit354, %.preheader642
  %.sroa.63.1.lcssa = phi ptr [ %.sroa.63.0.lcssa, %.preheader642 ], [ %.sroa.63.2, %_ZNSt6vectorImSaImEE9push_backEOm.exit354 ]
  %.sroa.30.1.lcssa = phi ptr [ %.sroa.30.0.lcssa, %.preheader642 ], [ %.sroa.30.2, %_ZNSt6vectorImSaImEE9push_backEOm.exit354 ]
  %.sroa.0537.1.lcssa = phi ptr [ %.sroa.0537.0.lcssa, %.preheader642 ], [ %.sroa.0537.2, %_ZNSt6vectorImSaImEE9push_backEOm.exit354 ]
  %i.kg = call double @sin(double noundef %31) #18, !tbaa !3 ; 8 uses
  %i.kh = call double @cos(double noundef %31) #18, !tbaa !3 ; 8 uses
  %i.ki = zext nneg i8 %3 to i32
  %i.kj = shl nuw i32 1, %i.ki
  %i.kk = sitofp i32 %i.kj to double              ; 18 uses
  %i.kl = and i64 %i.en, 16777215                 ; 2 uses
  br label %bb.ck

bb.by:                                            ; preds = %.lr.ph888, %_ZNSt6vectorImSaImEE9push_backEOm.exit354
  %indvars.iv = phi i64 [ %.pre1115, %.lr.ph888 ], [ %indvars.iv.next, %_ZNSt6vectorImSaImEE9push_backEOm.exit354 ] ; 3 uses
  %.sroa.0537.1886 = phi ptr [ %.sroa.0537.0.lcssa, %.lr.ph888 ], [ %.sroa.0537.2, %_ZNSt6vectorImSaImEE9push_backEOm.exit354 ] ; 9 uses
  %.sroa.30.1885 = phi ptr [ %.sroa.30.0.lcssa, %.lr.ph888 ], [ %.sroa.30.2, %_ZNSt6vectorImSaImEE9push_backEOm.exit354 ] ; 7 uses
  %.sroa.63.1884 = phi ptr [ %.sroa.63.0.lcssa, %.lr.ph888 ], [ %.sroa.63.2, %_ZNSt6vectorImSaImEE9push_backEOm.exit354 ] ; 6 uses
  %i.km = load i8, ptr %i.ah, align 8, !tbaa !86
  switch i8 %i.km, label %bb.ca [
    i8 1, label %_ZNR5folly8ExpectedIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit341
    i8 2, label %bb.bz
  ], !prof !88

bb.bz:                                            ; preds = %bb.by
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJRKS8_EEEvDpT0_(ptr noundef nonnull align 8 dereferenceable(40) %12) #12
          to label %.noexc339 unwind label %bb.cj

.noexc339:                                        ; preds = %bb.bz
  unreachable

bb.ca:                                            ; preds = %bb.by
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #12
          to label %.noexc340 unwind label %bb.cj

.noexc340:                                        ; preds = %bb.ca
  unreachable

_ZNR5folly8ExpectedIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit341: ; preds = %bb.by
  %i.kn = load i32, ptr %12, align 8, !tbaa !3
  %i.ko = zext i32 %i.kn to i64
  %.not208 = icmp eq i64 %indvars.iv, %i.ko
  br i1 %.not208, label %_ZNSt6vectorImSaImEE9push_backEOm.exit354, label %bb.cb

bb.cb:                                            ; preds = %_ZNR5folly8ExpectedIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit341
  %i.kp = load i8, ptr %i.r, align 8, !tbaa !86
  switch i8 %i.kp, label %bb.cd [
    i8 1, label %_ZNR5folly8ExpectedIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit344
    i8 2, label %bb.cc
  ], !prof !88

bb.cc:                                            ; preds = %bb.cb
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJRKS8_EEEvDpT0_(ptr noundef nonnull align 8 dereferenceable(40) %10) #12
          to label %.noexc342 unwind label %.loopexit.split-lp644

.noexc342:                                        ; preds = %bb.cc
  unreachable

bb.cd:                                            ; preds = %bb.cb
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #12
          to label %.noexc343 unwind label %.loopexit.split-lp644

.noexc343:                                        ; preds = %bb.cd
  unreachable

_ZNR5folly8ExpectedIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit344: ; preds = %bb.cb
  %i.kq = load i32, ptr %10, align 8, !tbaa !3
  %i.kr = zext i32 %i.kq to i64
  %i.ks = shl nuw i64 %i.kr, 32
  %i.kt = or disjoint i64 %i.ks, %indvars.iv
  %i.ku = or i64 %i.kt, %.pre1111                 ; 2 uses
  %.not.i.i345 = icmp eq ptr %.sroa.30.1885, %.sroa.63.1884
  br i1 %.not.i.i345, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %_ZNR5folly8ExpectedIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit344
  store i64 %i.ku, ptr %.sroa.30.1885, align 8, !tbaa !41
  %i.kv = getelementptr inbounds nuw i8, ptr %.sroa.30.1885, i64 8
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit354

bb.cf:                                            ; preds = %_ZNR5folly8ExpectedIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit344
  %i.kw = ptrtoint ptr %.sroa.30.1885 to i64
  %i.kx = ptrtoint ptr %.sroa.0537.1886 to i64
  %i.ky = sub i64 %i.kw, %i.kx                    ; 6 uses
  %i.kz = icmp eq i64 %i.ky, 9223372036854775800
  br i1 %i.kz, label %bb.cg, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i346

bb.cg:                                            ; preds = %bb.cf
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #20
          to label %.noexc352 unwind label %.loopexit.split-lp644

.noexc352:                                        ; preds = %bb.cg
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i346: ; preds = %bb.cf
  %i.la = ashr exact i64 %i.ky, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i347 = call i64 @llvm.umax.i64(i64 %i.la, i64 1)
  %i.lb = add nsw i64 %.sroa.speculated.i.i.i.i347, %i.la ; 2 uses
  %i.lc = icmp ult i64 %i.lb, %i.la
  %i.ld = call i64 @llvm.umin.i64(i64 %i.lb, i64 1152921504606846975)
  %i.le = select i1 %i.lc, i64 1152921504606846975, i64 %i.ld ; 3 uses
  %.not.i.i.i.i348 = icmp ne i64 %i.le, 0
  call void @llvm.assume(i1 %.not.i.i.i.i348)
  %i.lf = shl nuw nsw i64 %i.le, 3
  %i.lg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lf) #19
          to label %.noexc353 unwind label %.loopexit643 ; 4 uses

.noexc353:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i346
  %i.lh = getelementptr inbounds i8, ptr %i.lg, i64 %i.ky ; 2 uses
  store i64 %i.ku, ptr %i.lh, align 8, !tbaa !41
  %i.li = icmp sgt i64 %i.ky, 0
  br i1 %i.li, label %bb.ch, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i349

bb.ch:                                            ; preds = %.noexc353
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.lg, ptr align 8 %.sroa.0537.1886, i64 %i.ky, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i349

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i349: ; preds = %bb.ch, %.noexc353
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %.not.i17.i.i.i350 = icmp eq ptr %.sroa.0537.1886, null
  br i1 %.not.i17.i.i.i350, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i351, label %bb.ci

bb.ci:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i349
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0537.1886, i64 noundef %i.ky) #21
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i351

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i351: ; preds = %bb.ci, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i349
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.lg, i64 %i.le
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit354

bb.cj:                                            ; preds = %bb.ca, %bb.bz
  %i.ll = landingpad { ptr, i32 }
          cleanup
  br label %bb.fn

.loopexit643:                                     ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i346
  %lpad.loopexit645 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fn

.loopexit.split-lp644:                            ; preds = %bb.cc, %bb.cd, %bb.cg
  %.sroa.63.18841069 = phi ptr [ %.sroa.63.1884, %bb.cc ], [ %.sroa.63.1884, %bb.cd ], [ %.sroa.30.1885, %bb.cg ]
  %lpad.loopexit.split-lp646 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fn

_ZNSt6vectorImSaImEE9push_backEOm.exit354:        ; preds = %bb.ce, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i351, %_ZNR5folly8ExpectedIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit341
  %.sroa.63.2 = phi ptr [ %.sroa.63.1884, %_ZNR5folly8ExpectedIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit341 ], [ %i.lk, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i351 ], [ %.sroa.63.1884, %bb.ce ] ; 2 uses
  %.sroa.30.2 = phi ptr [ %.sroa.30.1885, %_ZNR5folly8ExpectedIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit341 ], [ %i.lj, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i351 ], [ %i.kv, %bb.ce ] ; 2 uses
  %.sroa.0537.2 = phi ptr [ %.sroa.0537.1886, %_ZNR5folly8ExpectedIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit341 ], [ %i.lg, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i351 ], [ %.sroa.0537.1886, %bb.ce ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond1089 = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond1089, label %._crit_edge, label %bb.by, !llvm.loop !157

bb.ck:                                            ; preds = %bb.dj, %._crit_edge
  %.sroa.63.3 = phi ptr [ %.sroa.63.1.lcssa, %._crit_edge ], [ %.sroa.63.6, %bb.dj ] ; 3 uses
  %.sroa.30.3 = phi ptr [ %.sroa.30.1.lcssa, %._crit_edge ], [ %.sroa.30.6, %bb.dj ] ; 2 uses
  %.sroa.0537.3 = phi ptr [ %.sroa.0537.1.lcssa, %._crit_edge ], [ %.sroa.0537.6, %bb.dj ] ; 3 uses
  %.0173 = phi i32 [ %i.hl, %._crit_edge ], [ %i.oy, %bb.dj ] ; 5 uses
  %i.lm = load i8, ptr %i.r, align 8, !tbaa !86
  switch i8 %i.lm, label %bb.cm [
    i8 1, label %_ZNR5folly8ExpectedIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit357
    i8 2, label %bb.cl
  ], !prof !88

bb.cl:                                            ; preds = %bb.ck
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJRKS8_EEEvDpT0_(ptr noundef nonnull align 8 dereferenceable(40) %10) #12
          to label %.noexc355 unwind label %bb.cn

.noexc355:                                        ; preds = %bb.cl
  unreachable

bb.cm:                                            ; preds = %bb.ck
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #12
          to label %.noexc356 unwind label %bb.cn

.noexc356:                                        ; preds = %bb.cm
  unreachable

_ZNR5folly8ExpectedIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit357: ; preds = %bb.ck
  %i.ln = load i32, ptr %10, align 8, !tbaa !3
  %.not182 = icmp eq i32 %.0173, %i.ln
  br i1 %.not182, label %.preheader619.preheader, label %.preheader631

.preheader619.preheader:                          ; preds = %_ZNR5folly8ExpectedIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit357
  %i.lo = add nsw i32 %i.cg, -1
  br label %.preheader619

.preheader631:                                    ; preds = %_ZNR5folly8ExpectedIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit357
  %i.lp = zext i32 %.0173 to i64
  %i.lq = shl nuw i64 %i.lp, 32                   ; 2 uses
  %i.lr = uitofp i32 %.0173 to double             ; 2 uses
  %i.ls = fcmp olt double %i.kk, %i.lr
  %.sroa.speculated.i363 = select i1 %i.ls, double %i.kk, double %i.lr
  %i.lt = fdiv double %.sroa.speculated.i363, %i.kk
  %i.lu = fadd double %i.lt, -5.000000e-01
  %i.lv = fmul double %i.lu, 3.600000e+02
  %i.lw = fmul double %i.lv, f0x400921FB54442D18
  %i.lx = fdiv double %i.lw, 1.800000e+02
  %i.ly = fsub double %i.ep, %i.lx                ; 4 uses
  %invariant.op = or disjoint i64 %i.lq, %.pre1111
  br label %bb.co

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %bb.fn

end_hunk_0
