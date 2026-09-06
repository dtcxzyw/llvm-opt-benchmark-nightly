Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/versionplan?download=true
inline.NumInlined: 1527
inline.NumDeleted: 758
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZL19C_A_T_C_H_T_E_S_T_6v:.noexc.i
  %.sroa.2.0..sroa_idx.i.i115 = getelementptr inbounds nuw i8, ptr %31, i64 32
  store i64 %i.er, ptr %.sroa.2.0..sroa_idx.i.i115, align 8, !tbaa !57, !alias.scope !247
  %i.ex = getelementptr inbounds nuw i8, ptr %31, i64 40
  store ptr %i.e, ptr %i.ex, align 8, !tbaa !63, !alias.scope !247
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %27, ptr noundef nonnull align 8 dereferenceable(10) %31)
          to label %bb.aq unwind label %bb.aw

bb.aq:                                            ; preds = %bb.ap
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %31) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #19
  br label %bb.ay

bb.ar:                                            ; preds = %bb.aj
  %i.ey = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.at unwind label %bb.fu

bb.as:                                            ; preds = %bb.al, %bb.ak
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as
  %.pn70 = phi { ptr, i32 } [ %i.ez, %bb.as ], [ %i.ey, %bb.ar ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %22) #19
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.ai
  %.pn70.pn = phi { ptr, i32 } [ %.pn70, %bb.at ], [ %i.do, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  br label %bb.fs

bb.av:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit114
  %i.fa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #19
  br label %bb.bh

bb.aw:                                            ; preds = %bb.ap
  %i.fb = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %31) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  %.11 = extractvalue { ptr, i32 } %i.fb, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #19
  %i.fc = call ptr @__cxa_begin_catch(ptr %.11) #19 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %27)
          to label %bb.ax unwind label %bb.be

bb.ax:                                            ; preds = %bb.aw
  invoke void @__cxa_end_catch()
          to label %bb.ay unwind label %bb.bf

bb.ay:                                            ; preds = %bb.ax, %bb.aq
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %27)
          to label %bb.az unwind label %bb.bf

bb.az:                                            ; preds = %bb.ay
  %i.fd = getelementptr inbounds nuw i8, ptr %27, i64 58
  %i.fe = load i8, ptr %i.fd, align 2, !tbaa !50, !range !35, !noundef !36
  %i.ff = trunc nuw i8 %i.fe to i1
  br i1 %i.ff, label %_ZN5Catch16AssertionHandlerD2Ev.exit116, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fg = getelementptr inbounds nuw i8, ptr %27, i64 64
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !51, !nonnull !36, !align !52 ; 2 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !41
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 112
  %i.fk = load ptr, ptr %i.fj, align 8
  invoke void %i.fk(ptr noundef nonnull align 8 dereferenceable(8) %i.fh, ptr noundef nonnull align 8 dereferenceable(72) %27)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit116 unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fl = landingpad { ptr, i32 }
          catch ptr null
  %i.fm = extractvalue { ptr, i32 } %i.fl, 0
  call void @__clang_call_terminate(ptr %i.fm) #21
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit116:          ; preds = %bb.az, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #19
  store ptr @.str.12, ptr %33, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %33, i64 8
  store i64 7, ptr %i.fn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #19
  store ptr @.str, ptr %34, align 8, !tbaa !30
  %i.fo = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i64 68, ptr %i.fo, align 8, !tbaa !31
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %35, ptr noundef nonnull @.str.56) #19
  %i.fp = load ptr, ptr %35, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.fr = load i64, ptr %i.fq, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %32, ptr noundef nonnull align 8 dereferenceable(16) %33, ptr noundef nonnull align 8 dereferenceable(16) %34, ptr %i.fp, i64 %i.fr, i32 noundef 1)
          to label %bb.bc unwind label %bb.bi

bb.bc:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit116
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #19
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ci, i64 56
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !249
  %.not.i = icmp eq ptr %i.ft, null
  %i.fu = zext i1 %.not.i to i8                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.fv = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 0, ptr %i.fv, align 8, !tbaa !38, !alias.scope !250
  %i.fw = getelementptr inbounds nuw i8, ptr %6, i64 9
  store i8 %i.fu, ptr %i.fw, align 1, !tbaa !39, !alias.scope !250
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch9UnaryExprIbEE, i64 16), ptr %6, align 8, !tbaa !41, !alias.scope !250
  %i.fx = getelementptr inbounds nuw i8, ptr %6, i64 10
  store i8 %i.fu, ptr %i.fx, align 2, !tbaa !67, !alias.scope !250
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %32, ptr noundef nonnull align 8 dereferenceable(10) %6)
          to label %bb.bd unwind label %.body117

.body117:                                         ; preds = %bb.bc
  %i.fy = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(11) dereferenceable(11) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.fz = extractvalue { ptr, i32 } %i.fy, 0
  %i.ga = call ptr @__cxa_begin_catch(ptr %i.fz) #19 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %32)
          to label %bb.bj unwind label %bb.bu

bb.bd:                                            ; preds = %bb.bc
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(11) dereferenceable(11) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.bk

bb.be:                                            ; preds = %bb.aw
  %i.gb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bg unwind label %bb.fu

bb.bf:                                            ; preds = %bb.ay, %bb.ax
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf
  %.pn74 = phi { ptr, i32 } [ %i.gc, %bb.bf ], [ %i.gb, %bb.be ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %27) #19
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.av
  %.pn74.pn = phi { ptr, i32 } [ %.pn74, %bb.bg ], [ %i.fa, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #19
  br label %bb.fs

bb.bi:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit116
  %i.gd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #19
  br label %bb.bx

bb.bj:                                            ; preds = %.body117
  invoke void @__cxa_end_catch()
          to label %bb.bk unwind label %bb.bv

bb.bk:                                            ; preds = %bb.bj, %bb.bd
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %32)
          to label %bb.bl unwind label %bb.bv

bb.bl:                                            ; preds = %bb.bk
  %i.ge = getelementptr inbounds nuw i8, ptr %32, i64 58
  %i.gf = load i8, ptr %i.ge, align 2, !tbaa !50, !range !35, !noundef !36
  %i.gg = trunc nuw i8 %i.gf to i1
  br i1 %i.gg, label %_ZN5Catch16AssertionHandlerD2Ev.exit119, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gh = getelementptr inbounds nuw i8, ptr %32, i64 64
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !51, !nonnull !36, !align !52 ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !41
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 112
  %i.gl = load ptr, ptr %i.gk, align 8
  invoke void %i.gl(ptr noundef nonnull align 8 dereferenceable(8) %i.gi, ptr noundef nonnull align 8 dereferenceable(72) %32)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit119 unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gm = landingpad { ptr, i32 }
          catch ptr null
  %i.gn = extractvalue { ptr, i32 } %i.gm, 0
  call void @__clang_call_terminate(ptr %i.gn) #21
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit119:          ; preds = %bb.bl, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #19
  %i.go = load ptr, ptr %spec.select.i.sroa.sel, align 8, !tbaa !55
  %i.gp = load ptr, ptr %11, align 8, !tbaa !56   ; 6 uses
  %i.gq = ptrtoint ptr %i.go to i64
  %i.gr = ptrtoint ptr %i.gp to i64
  %i.gs = sub i64 %i.gq, %i.gr                    ; 2 uses
  %.not.i.i120 = icmp ugt i64 %i.gs, 144
  br i1 %.not.i.i120, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit119
  %.cmp = icmp eq i64 %i.gs, 144
  %77 = zext i1 %.cmp to i64
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.25, i64 noundef 1, i64 noundef %77) #22
          to label %.noexc121 unwind label %bb.by

.noexc121:                                        ; preds = %bb.bo
  unreachable

bb.bp:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit119
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 144 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #19
  store ptr @.str.12, ptr %37, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i64 7, ptr %i.gu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #19
  store ptr @.str, ptr %38, align 8, !tbaa !30
  %i.gv = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i64 71, ptr %i.gv, align 8, !tbaa !31
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %39, ptr noundef nonnull @.str.57) #19
  %i.gw = load ptr, ptr %39, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.gy = load i64, ptr %i.gx, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %36, ptr noundef nonnull align 8 dereferenceable(16) %37, ptr noundef nonnull align 8 dereferenceable(16) %38, ptr %i.gw, i64 %i.gy, i32 noundef 1)
          to label %bb.bq unwind label %bb.bz

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !251)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gp, i64 152
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !26, !noalias !251
  %i.hb = icmp eq i64 %i.ha, 7
  br i1 %i.hb, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.hc = load ptr, ptr %i.gt, align 8, !tbaa !28, !noalias !251 ; 2 uses
  %i.hd = load i32, ptr %i.hc, align 1
  %i.he = xor i32 %i.hd, 2002938220
  %i.hf = getelementptr i8, ptr %i.hc, i64 3
  %i.hg = load i32, ptr %i.hf, align 1
  %i.hh = xor i32 %i.hg, 1885496695
  %i.hi = or i32 %i.he, %i.hh
  %i.hj = icmp ne i32 %i.hi, 0
  %i.hk = zext i1 %i.hj to i32
  %i.hl = icmp eq i32 %i.hk, 0
  %i.hm = zext i1 %i.hl to i8
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.hn = phi i8 [ 0, %bb.bq ], [ %i.hm, %bb.br ]
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str.24) #19, !noalias !251
  %i.ho = load ptr, ptr %5, align 8, !noalias !251
  %i.hp = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.hq = load i64, ptr %i.hp, align 8, !noalias !251
  %i.hr = getelementptr inbounds nuw i8, ptr %40, i64 8
  store i8 1, ptr %i.hr, align 8, !tbaa !38, !alias.scope !251
  %i.hs = getelementptr inbounds nuw i8, ptr %40, i64 9
  store i8 %i.hn, ptr %i.hs, align 1, !tbaa !39, !alias.scope !251
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch10BinaryExprIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA8_KcEE, i64 16), ptr %40, align 8, !tbaa !41, !alias.scope !251
  %i.ht = getelementptr inbounds nuw i8, ptr %40, i64 16
  store ptr %i.gt, ptr %i.ht, align 8, !tbaa !65, !alias.scope !251
  %i.hu = getelementptr inbounds nuw i8, ptr %40, i64 24
  store ptr %i.ho, ptr %i.hu, align 8, !tbaa !61, !alias.scope !251
  %.sroa.2.0..sroa_idx.i.i123 = getelementptr inbounds nuw i8, ptr %40, i64 32
  store i64 %i.hq, ptr %.sroa.2.0..sroa_idx.i.i123, align 8, !tbaa !57, !alias.scope !251
  %i.hv = getelementptr inbounds nuw i8, ptr %40, i64 40
  store ptr @.str.54, ptr %i.hv, align 8, !tbaa !61, !alias.scope !251
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %36, ptr noundef nonnull align 8 dereferenceable(10) %40)
          to label %bb.bt unwind label %bb.ca

bb.bt:                                            ; preds = %bb.bs
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %40) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #19
  br label %bb.cc

bb.bu:                                            ; preds = %.body117
  %i.hw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bw unwind label %bb.fu

bb.bv:                                            ; preds = %bb.bk, %bb.bj
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bu, %bb.bv
  %.pn77 = phi { ptr, i32 } [ %i.hx, %bb.bv ], [ %i.hw, %bb.bu ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %32) #19
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bi
  %.pn77.pn = phi { ptr, i32 } [ %.pn77, %bb.bw ], [ %i.gd, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #19
  br label %bb.fs

bb.by:                                            ; preds = %bb.bo
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %bb.fs

bb.bz:                                            ; preds = %bb.bp
  %i.hz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #19
  br label %bb.cl

bb.ca:                                            ; preds = %bb.bs
  %i.ia = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %40) #19
  %.16 = extractvalue { ptr, i32 } %i.ia, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #19
  %i.ib = call ptr @__cxa_begin_catch(ptr %.16) #19 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %36)
          to label %bb.cb unwind label %bb.ci

bb.cb:                                            ; preds = %bb.ca
  invoke void @__cxa_end_catch()
          to label %bb.cc unwind label %bb.cj

bb.cc:                                            ; preds = %bb.cb, %bb.bt
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %36)
          to label %bb.cd unwind label %bb.cj

bb.cd:                                            ; preds = %bb.cc
  %i.ic = getelementptr inbounds nuw i8, ptr %36, i64 58
  %i.id = load i8, ptr %i.ic, align 2, !tbaa !50, !range !35, !noundef !36
  %i.ie = trunc nuw i8 %i.id to i1
  br i1 %i.ie, label %_ZN5Catch16AssertionHandlerD2Ev.exit126, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.if = getelementptr inbounds nuw i8, ptr %36, i64 64
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !51, !nonnull !36, !align !52 ; 2 uses
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !41
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 112
  %i.ij = load ptr, ptr %i.ii, align 8
  invoke void %i.ij(ptr noundef nonnull align 8 dereferenceable(8) %i.ig, ptr noundef nonnull align 8 dereferenceable(72) %36)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit126 unwind label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ik = landingpad { ptr, i32 }
          catch ptr null
  %i.il = extractvalue { ptr, i32 } %i.ik, 0
  call void @__clang_call_terminate(ptr %i.il) #21
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit126:          ; preds = %bb.cd, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #19
  store ptr @.str.12, ptr %42, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %42, i64 8
  store i64 7, ptr %i.im, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #19
  store ptr @.str, ptr %43, align 8, !tbaa !30
  %i.in = getelementptr inbounds nuw i8, ptr %43, i64 8
  store i64 72, ptr %i.in, align 8, !tbaa !31
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %44, ptr noundef nonnull @.str.58) #19
  %i.io = load ptr, ptr %44, align 8
  %i.ip = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.iq = load i64, ptr %i.ip, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %41, ptr noundef nonnull align 8 dereferenceable(16) %42, ptr noundef nonnull align 8 dereferenceable(16) %43, ptr %i.io, i64 %i.iq, i32 noundef 1)
          to label %bb.cg unwind label %bb.cm

bb.cg:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit126
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  %i.ir = getelementptr inbounds nuw i8, ptr %i.gp, i64 176
  %i.is = getelementptr inbounds nuw i8, ptr %i.gp, i64 184
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !98
  %i.iu = load ptr, ptr %i.ir, align 8, !tbaa !99
  %i.iv = ptrtoint ptr %i.it to i64
  %i.iw = ptrtoint ptr %i.iu to i64
  %i.ix = sub i64 %i.iv, %i.iw                    ; 2 uses
  %i.iy = sdiv exact i64 %i.ix, 40
  store i64 %i.iy, ptr %i.f, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  store i32 2, ptr %i.g, align 4, !tbaa !58
  call void @llvm.experimental.noalias.scope.decl(metadata !252)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.iz = icmp eq i64 %i.ix, 80
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.24) #19, !noalias !252
  %i.ja = load ptr, ptr %4, align 8, !noalias !252
  %i.jb = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.jc = load i64, ptr %i.jb, align 8, !noalias !252
  %i.jd = zext i1 %i.iz to i8
  %i.je = getelementptr inbounds nuw i8, ptr %45, i64 8
  store i8 1, ptr %i.je, align 8, !tbaa !38, !alias.scope !252
  %i.jf = getelementptr inbounds nuw i8, ptr %45, i64 9
  store i8 %i.jd, ptr %i.jf, align 1, !tbaa !39, !alias.scope !252
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch10BinaryExprIRKmRKiEE, i64 16), ptr %45, align 8, !tbaa !41, !alias.scope !252
  %i.jg = getelementptr inbounds nuw i8, ptr %45, i64 16
  store ptr %i.f, ptr %i.jg, align 8, !tbaa !60, !alias.scope !252
  %i.jh = getelementptr inbounds nuw i8, ptr %45, i64 24
end_hunk_0
