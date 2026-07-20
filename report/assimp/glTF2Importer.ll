inline.NumInlined: 10360
inline.NumDeleted: 3521
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 68
loop-unroll.NumUnrolled: 83
begin_hunk_0_@_ZN5glTF28Accessor11ExtractDataI10aiVector3tIfEEEmRPT_PKSt6vectorIjSaIjEE:bb.a
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 288
  %i.ee = load i64, ptr %i.ed, align 8
  br label %_ZN5glTF28Accessor14GetMaxByteSizeEv.exit

_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.thread.i: ; preds = %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.i87, %bb.ag
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.eg = load ptr, ptr %i.ef, align 8            ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 72
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = load ptr, ptr %i.eh, align 8
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = sub i64 %i.el, %i.em
  br label %_ZN5glTF28Accessor14GetMaxByteSizeEv.exit

_ZN5glTF28Accessor14GetMaxByteSizeEv.exit:        ; preds = %bb.af, %bb.ah, %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.thread.i
  %.0.i = phi i64 [ %i.dn, %bb.af ], [ %i.ee, %bb.ah ], [ %i.en, %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.thread.i ] ; 3 uses
  store i64 %.0.i, ptr %i.c, align 8
  %i.eo = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.fr149, i64 12) ; 2 uses
  %i.ep = extractvalue { i64, i1 } %i.eo, 1
  %i.eq = extractvalue { i64, i1 } %i.eo, 0       ; 2 uses
  %i.er = select i1 %i.ep, i64 -1, i64 %i.eq
  %i.es = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.er) #37 ; 4 uses
  %i.et = icmp eq i64 %.fr149, 0                  ; 2 uses
  br i1 %i.et, label %.loopexit109, label %.loopexit109.thread

.loopexit109:                                     ; preds = %_ZN5glTF28Accessor14GetMaxByteSizeEv.exit
  store ptr %i.es, ptr %1, align 8
  br i1 %.not71, label %bb.ao, label %.loopexit

.loopexit109.thread:                              ; preds = %_ZN5glTF28Accessor14GetMaxByteSizeEv.exit
  %i.eu = add i64 %i.eq, -12                      ; 2 uses
  %i.ev = urem i64 %i.eu, 12
  %i.ew = sub nuw i64 %i.eu, %i.ev
  %i.ex = add i64 %i.ew, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.es, i8 0, i64 %i.ex, i1 false)
  store ptr %i.es, ptr %1, align 8
  br i1 %.not71, label %bb.ao, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit109.thread
  %i.ey = udiv i64 %.0.i, %i.cz
  %i.ez = and i64 %i.ey, 4294967295
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph, %bb.an
  %.051110 = phi i64 [ 0, %.lr.ph ], [ %i.fs, %bb.an ] ; 3 uses
  %i.fa = load ptr, ptr %2, align 8
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %.051110
  %i.fc = load i32, ptr %i.fb, align 4
  %i.fd = zext i32 %i.fc to i64                   ; 2 uses
  %.not74 = icmp samesign ugt i64 %i.ez, %i.fd
  %i.fe = mul i64 %i.cz, %i.fd                    ; 2 uses
  br i1 %.not74, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ff = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  store i64 %i.fe, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZN5glTF226getContextForErrorMessagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %i.fg, ptr noundef nonnull align 8 dereferenceable(32) %i.fh)
          to label %bb.ak unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.thread

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN17DeadlyImportErrorC2IJRA20_KcmRA12_S1_RKmRA5_S1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ff, ptr noundef nonnull align 1 dereferenceable(20) @.str.315, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 1 dereferenceable(12) @.str.316, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(5) @.str.314, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.al unwind label %bb.am

bb.al:                                            ; preds = %bb.ak
  invoke void @__cxa_throw(ptr nonnull %i.ff, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.ax unwind label %bb.am

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.thread: ; preds = %bb.aj
  %i.fi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  br label %.sink.split

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.047 = phi i1 [ false, %bb.al ], [ true, %bb.ak ] ; 2 uses
  %i.fj = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fk = load ptr, ptr %6, align 8               ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.fm = icmp eq ptr %i.fk, %i.fl
  br i1 %i.fm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %bb.am
  %i.fn = load i64, ptr %i.fl, align 8
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fo) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  br i1 %.047, label %.sink.split, label %bb.av

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  br i1 %.047, label %.sink.split, label %bb.av

bb.an:                                            ; preds = %bb.ai
  %i.fp = load ptr, ptr %1, align 8
  %i.fq = getelementptr inbounds nuw [12 x i8], ptr %i.fp, i64 %.051110
  %i.fr = getelementptr inbounds nuw i8, ptr %.3.i, i64 %i.fe
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.fq, ptr nonnull align 1 %i.fr, i64 %i.cx, i1 false)
  %i.fs = add nuw i64 %.051110, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.fs, %.fr149
  br i1 %exitcond.not, label %.loopexit, label %bb.ai, !llvm.loop !104

bb.ao:                                            ; preds = %.loopexit109.thread, %.loopexit109
  %i.ft = mul i64 %i.cz, %.fr149                  ; 2 uses
  %i.fu = icmp ugt i64 %i.ft, %.0.i
  br i1 %i.fu, label %bb.ap, label %bb.at

bb.ap:                                            ; preds = %bb.ao
  %i.fv = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  store i64 %i.ft, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZN5glTF226getContextForErrorMessagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %i.fw, ptr noundef nonnull align 8 dereferenceable(32) %i.fx)
          to label %bb.aq unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.thread

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN17DeadlyImportErrorC2IJRA20_KcmRA12_S1_RKmRA5_S1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.fv, ptr noundef nonnull align 1 dereferenceable(20) @.str.317, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 1 dereferenceable(12) @.str.316, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(5) @.str.314, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.ar unwind label %bb.as

bb.ar:                                            ; preds = %bb.aq
  invoke void @__cxa_throw(ptr nonnull %i.fv, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.ax unwind label %bb.as

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.thread: ; preds = %bb.ap
  %i.fy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  br label %.sink.split

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.046 = phi i1 [ false, %bb.ar ], [ true, %bb.aq ] ; 2 uses
  %i.fz = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ga = load ptr, ptr %7, align 8               ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.gc = icmp eq ptr %i.ga, %i.gb
  br i1 %i.gc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %bb.as
  %i.gd = load i64, ptr %i.gb, align 8
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.ge) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  br i1 %.046, label %.sink.split, label %bb.av

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  br i1 %.046, label %.sink.split, label %bb.av

bb.at:                                            ; preds = %bb.ao
  %i.gf = icmp eq i32 %i.cw, 12
  %i.gg = icmp eq i64 %i.cz, 12
  %or.cond = and i1 %i.gg, %i.gf
  br i1 %or.cond, label %bb.au, label %.preheader

.preheader:                                       ; preds = %bb.at
  br i1 %i.et, label %.loopexit, label %.lr.ph112.preheader

.lr.ph112.preheader:                              ; preds = %.preheader
  %xtraiter = and i64 %.fr149, 1
  %i.gh = icmp eq i64 %.fr149, 1
  br i1 %i.gh, label %.lr.ph112.epil.preheader, label %.lr.ph112.preheader.new

.lr.ph112.preheader.new:                          ; preds = %.lr.ph112.preheader
  %unroll_iter = and i64 %.fr149, -2
  br label %.lr.ph112

bb.au:                                            ; preds = %bb.at
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.es, ptr nonnull align 1 %.3.i, i64 %i.cy, i1 false)
  br label %.loopexit

.lr.ph112:                                        ; preds = %.lr.ph112, %.lr.ph112.preheader.new
  %.0111 = phi i64 [ 0, %.lr.ph112.preheader.new ], [ %i.gr, %.lr.ph112 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph112.preheader.new ], [ %niter.next.1, %.lr.ph112 ]
  %i.gi = load ptr, ptr %1, align 8
  %i.gj = getelementptr inbounds nuw [12 x i8], ptr %i.gi, i64 %.0111
  %i.gk = mul i64 %.0111, %i.cz
  %i.gl = getelementptr inbounds nuw i8, ptr %.3.i, i64 %i.gk
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.gj, ptr nonnull align 1 %i.gl, i64 %i.cx, i1 false)
  %i.gm = or disjoint i64 %.0111, 1               ; 2 uses
  %i.gn = load ptr, ptr %1, align 8
  %i.go = getelementptr inbounds nuw [12 x i8], ptr %i.gn, i64 %i.gm
  %i.gp = mul i64 %i.gm, %i.cz
  %i.gq = getelementptr inbounds nuw i8, ptr %.3.i, i64 %i.gp
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.go, ptr nonnull align 1 %i.gq, i64 %i.cx, i1 false)
  %i.gr = add nuw i64 %.0111, 2                   ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph112, !llvm.loop !105

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph112
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph112.epil.preheader

.lr.ph112.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph112.preheader
  %.0111.epil.init = phi i64 [ 0, %.lr.ph112.preheader ], [ %i.gr, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod157 = trunc i64 %.fr149 to i1
  tail call void @llvm.assume(i1 %lcmp.mod157)
  %i.gs = load ptr, ptr %1, align 8
  %i.gt = getelementptr inbounds nuw [12 x i8], ptr %i.gs, i64 %.0111.epil.init
  %i.gu = mul i64 %.0111.epil.init, %i.cz
  %i.gv = getelementptr inbounds nuw i8, ptr %.3.i, i64 %i.gu
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.gt, ptr nonnull align 1 %i.gv, i64 %i.cx, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.an, %.lr.ph112.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.loopexit109, %.preheader, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  ret i64 %.fr149

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88
  %.sink = phi ptr [ %i.ff, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ], [ %i.ff, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88 ], [ %i.ff, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.thread ], [ %i.fv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %i.fv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.thread ], [ %i.fv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ]
  %.pn75.pn.ph = phi { ptr, i32 } [ %i.fj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ], [ %i.fj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88 ], [ %i.fi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.thread ], [ %i.fz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %i.fy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.thread ], [ %i.fz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ]
  call void @__cxa_free_exception(ptr %.sink) #34
  br label %bb.av

bb.av:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93
  %.pn75.pn = phi { ptr, i32 } [ %i.fz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ], [ %i.fj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88 ], [ %i.fz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %i.fj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ], [ %.pn75.pn.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  br label %bb.aw

bb.aw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %bb.ad, %bb.av
  %.pn78.pn = phi { ptr, i32 } [ %.pn78101, %bb.ad ], [ %i.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ], [ %.pn75.pn, %bb.av ], [ %i.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %common.resume

bb.ax:                                            ; preds = %bb.ar, %bb.al, %bb.ab, %bb.m
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger4warnIJRA23_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA52_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(23) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(52) %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %5)
  %i.a = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(23) %1) #34
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef nonnull align 1 dereferenceable(23) %1, i64 noundef %i.a)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA23_cEERKT_.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %5) #34
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA23_cEERKT_.exit: ; preds = %bb.a
  invoke void @_ZN6Assimp6Logger13formatMessageIJRA52_KcERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_NS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(52) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA23_cEERKT_.exit
  %i.d = load ptr, ptr %4, align 8
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.d)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %4, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.j, ptr %5, align 8
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.l = getelementptr i8, ptr %i.j, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %5, i64 %i.m
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #35
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #34
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.w) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA23_cEERKT_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

bb.f:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %4, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.f
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7, %bb.e
  %.pn = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7 ], [ %i.y, %bb.f ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger4warnIJRA24_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA53_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(53) %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %5)
  %i.a = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(24) %1) #34
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef nonnull align 1 dereferenceable(24) %1, i64 noundef %i.a)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA24_cEERKT_.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %5) #34
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA24_cEERKT_.exit: ; preds = %bb.a
  invoke void @_ZN6Assimp6Logger13formatMessageIJRA53_KcERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_NS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(53) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA24_cEERKT_.exit
  %i.d = load ptr, ptr %4, align 8
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.d)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %4, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.j, ptr %5, align 8
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.l = getelementptr i8, ptr %i.j, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %5, i64 %i.m
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
end_hunk_0
begin_hunk_1_@_ZN5glTF28Accessor11ExtractDataIN12_GLOBAL__N_17TangentEEEmRPT_PKSt6vectorIjSaIjEE:bb.a
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  store <2 x float> zeroinitializer, ptr %i.fc, align 4
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  store float 0.000000e+00, ptr %i.fd, align 4
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 32
  store <2 x float> zeroinitializer, ptr %i.fe, align 4
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fa, i64 40
  store float 0.000000e+00, ptr %i.ff, align 4
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fa, i64 48
  store <2 x float> zeroinitializer, ptr %i.fg, align 4
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fa, i64 56
  store float 0.000000e+00, ptr %i.fh, align 4
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fa, i64 64
  store <2 x float> zeroinitializer, ptr %i.fi, align 4
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fa, i64 72
  store float 0.000000e+00, ptr %i.fj, align 4
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fa, i64 80
  store <2 x float> zeroinitializer, ptr %i.fk, align 4
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fa, i64 88
  store float 0.000000e+00, ptr %i.fl, align 4
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fa, i64 96
  store <2 x float> zeroinitializer, ptr %i.fm, align 4
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fa, i64 104
  store float 0.000000e+00, ptr %i.fn, align 4
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fa, i64 112
  store <2 x float> zeroinitializer, ptr %i.fo, align 4
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fa, i64 120
  store float 0.000000e+00, ptr %i.fp, align 4
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fa, i64 128 ; 2 uses
  %i.fr = icmp eq ptr %i.fq, %i.et
  br i1 %i.fr, label %.loopexit109.thread, label %.new

.loopexit109:                                     ; preds = %_ZN5glTF28Accessor14GetMaxByteSizeEv.exit
  store ptr %i.er, ptr %1, align 8
  br i1 %.not71, label %bb.ap, label %.loopexit

.loopexit109.thread:                              ; preds = %.new, %.prol.loopexit
  store ptr %i.er, ptr %1, align 8
  br i1 %.not71, label %bb.ap, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit109.thread
  %i.fs = udiv i64 %.0.i, %i.cz
  %i.ft = and i64 %i.fs, 4294967295
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph, %bb.ao
  %.051110 = phi i64 [ 0, %.lr.ph ], [ %i.gm, %bb.ao ] ; 3 uses
  %i.fu = load ptr, ptr %2, align 8
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %.051110
  %i.fw = load i32, ptr %i.fv, align 4
  %i.fx = zext i32 %i.fw to i64                   ; 2 uses
  %.not74 = icmp samesign ugt i64 %i.ft, %i.fx
  %i.fy = mul i64 %i.cz, %i.fx                    ; 2 uses
  br i1 %.not74, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fz = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  store i64 %i.fy, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZN5glTF226getContextForErrorMessagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %i.ga, ptr noundef nonnull align 8 dereferenceable(32) %i.gb)
          to label %bb.al unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.thread

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN17DeadlyImportErrorC2IJRA20_KcmRA12_S1_RKmRA5_S1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.fz, ptr noundef nonnull align 1 dereferenceable(20) @.str.315, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 1 dereferenceable(12) @.str.316, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(5) @.str.314, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %bb.al
  invoke void @__cxa_throw(ptr nonnull %i.fz, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.ay unwind label %bb.an

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.thread: ; preds = %bb.ak
  %i.gc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  br label %.sink.split

bb.an:                                            ; preds = %bb.am, %bb.al
  %.047 = phi i1 [ false, %bb.am ], [ true, %bb.al ] ; 2 uses
  %i.gd = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ge = load ptr, ptr %6, align 8               ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.gg = icmp eq ptr %i.ge, %i.gf
  br i1 %i.gg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %bb.an
  %i.gh = load i64, ptr %i.gf, align 8
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gi) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  br i1 %.047, label %.sink.split, label %bb.aw

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  br i1 %.047, label %.sink.split, label %bb.aw

bb.ao:                                            ; preds = %bb.aj
  %i.gj = load ptr, ptr %1, align 8
  %i.gk = getelementptr inbounds nuw [16 x i8], ptr %i.gj, i64 %.051110
  %i.gl = getelementptr inbounds nuw i8, ptr %.3.i, i64 %i.fy
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.gk, ptr nonnull align 1 %i.gl, i64 %i.cx, i1 false)
  %i.gm = add nuw i64 %.051110, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.gm, %i.cd
  br i1 %exitcond.not, label %.loopexit, label %bb.aj, !llvm.loop !107

bb.ap:                                            ; preds = %.loopexit109.thread, %.loopexit109
  %i.gn = mul i64 %i.cz, %i.cd                    ; 2 uses
  %i.go = icmp ugt i64 %i.gn, %.0.i
  br i1 %i.go, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %bb.ap
  %i.gp = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  store i64 %i.gn, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZN5glTF226getContextForErrorMessagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %i.gq, ptr noundef nonnull align 8 dereferenceable(32) %i.gr)
          to label %bb.ar unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.thread

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN17DeadlyImportErrorC2IJRA20_KcmRA12_S1_RKmRA5_S1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.gp, ptr noundef nonnull align 1 dereferenceable(20) @.str.317, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 1 dereferenceable(12) @.str.316, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(5) @.str.314, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %bb.ar
  invoke void @__cxa_throw(ptr nonnull %i.gp, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.ay unwind label %bb.at

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.thread: ; preds = %bb.aq
  %i.gs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  br label %.sink.split

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.046 = phi i1 [ false, %bb.as ], [ true, %bb.ar ] ; 2 uses
  %i.gt = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.gu = load ptr, ptr %7, align 8               ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.gw = icmp eq ptr %i.gu, %i.gv
  br i1 %i.gw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %bb.at
  %i.gx = load i64, ptr %i.gv, align 8
  %i.gy = add i64 %i.gx, 1
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gy) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  br i1 %.046, label %.sink.split, label %bb.aw

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  br i1 %.046, label %.sink.split, label %bb.aw

bb.au:                                            ; preds = %bb.ap
  %i.gz = icmp eq i32 %i.cw, 16
  %i.ha = icmp eq i64 %i.cz, 16
  %or.cond = and i1 %i.ha, %i.gz
  br i1 %or.cond, label %bb.av, label %.preheader

.preheader:                                       ; preds = %bb.au
  br i1 %i.es, label %.loopexit, label %.lr.ph112.preheader

.lr.ph112.preheader:                              ; preds = %.preheader
  %xtraiter6 = and i64 %i.cd, 1
  %i.hb = icmp eq i64 %i.cd, 1
  br i1 %i.hb, label %.lr.ph112.epil.preheader, label %.lr.ph112.preheader.new

.lr.ph112.preheader.new:                          ; preds = %.lr.ph112.preheader
  %unroll_iter = and i64 %i.cd, -2
  br label %.lr.ph112

bb.av:                                            ; preds = %bb.au
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.er, ptr nonnull align 1 %.3.i, i64 %i.cy, i1 false)
  br label %.loopexit

.lr.ph112:                                        ; preds = %.lr.ph112, %.lr.ph112.preheader.new
  %.0111 = phi i64 [ 0, %.lr.ph112.preheader.new ], [ %i.hl, %.lr.ph112 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph112.preheader.new ], [ %niter.next.1, %.lr.ph112 ]
  %i.hc = load ptr, ptr %1, align 8
  %i.hd = getelementptr inbounds nuw [16 x i8], ptr %i.hc, i64 %.0111
  %i.he = mul i64 %.0111, %i.cz
  %i.hf = getelementptr inbounds nuw i8, ptr %.3.i, i64 %i.he
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.hd, ptr nonnull align 1 %i.hf, i64 %i.cx, i1 false)
  %i.hg = or disjoint i64 %.0111, 1               ; 2 uses
  %i.hh = load ptr, ptr %1, align 8
  %i.hi = getelementptr inbounds nuw [16 x i8], ptr %i.hh, i64 %i.hg
  %i.hj = mul i64 %i.hg, %i.cz
  %i.hk = getelementptr inbounds nuw i8, ptr %.3.i, i64 %i.hj
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.hi, ptr nonnull align 1 %i.hk, i64 %i.cx, i1 false)
  %i.hl = add nuw i64 %.0111, 2                   ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph112, !llvm.loop !108

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph112
  %lcmp.mod7.not = icmp eq i64 %xtraiter6, 0
  br i1 %lcmp.mod7.not, label %.loopexit, label %.lr.ph112.epil.preheader

.lr.ph112.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph112.preheader
  %.0111.epil.init = phi i64 [ 0, %.lr.ph112.preheader ], [ %i.hl, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod8 = trunc i64 %i.cd to i1
  tail call void @llvm.assume(i1 %lcmp.mod8)
  %i.hm = load ptr, ptr %1, align 8
  %i.hn = getelementptr inbounds nuw [16 x i8], ptr %i.hm, i64 %.0111.epil.init
  %i.ho = mul i64 %.0111.epil.init, %i.cz
  %i.hp = getelementptr inbounds nuw i8, ptr %.3.i, i64 %i.ho
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.hn, ptr nonnull align 1 %i.hp, i64 %i.cx, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ao, %.lr.ph112.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.loopexit109, %.preheader, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  ret void

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88
  %.sink = phi ptr [ %i.fz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ], [ %i.fz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88 ], [ %i.fz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.thread ], [ %i.gp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %i.gp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.thread ], [ %i.gp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ]
  %.pn75.pn.ph = phi { ptr, i32 } [ %i.gd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ], [ %i.gd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88 ], [ %i.gc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.thread ], [ %i.gt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %i.gs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.thread ], [ %i.gt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ]
  call void @__cxa_free_exception(ptr %.sink) #34
  br label %bb.aw

bb.aw:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93
  %.pn75.pn = phi { ptr, i32 } [ %i.gt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ], [ %i.gd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88 ], [ %i.gt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %i.gd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ], [ %.pn75.pn.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  br label %bb.ax

bb.ax:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %bb.ad, %bb.aw
  %.pn78.pn = phi { ptr, i32 } [ %.pn78101, %bb.ad ], [ %i.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ], [ %.pn75.pn, %bb.aw ], [ %i.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %common.resume

bb.ay:                                            ; preds = %bb.as, %bb.am, %bb.ab, %bb.m
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger4warnIJRA28_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA34_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(28) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(34) %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %5)
  %i.a = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(28) %1) #34
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef nonnull align 1 dereferenceable(28) %1, i64 noundef %i.a)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA28_cEERKT_.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %5) #34
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA28_cEERKT_.exit: ; preds = %bb.a
  invoke void @_ZN6Assimp6Logger13formatMessageIJRA34_KcERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_NS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(34) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA28_cEERKT_.exit
  %i.d = load ptr, ptr %4, align 8
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.d)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %4, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.j, ptr %5, align 8
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.l = getelementptr i8, ptr %i.j, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %5, i64 %i.m
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #35
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #34
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.w) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA28_cEERKT_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

bb.f:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %4, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.f
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7, %bb.e
  %.pn = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7 ], [ %i.y, %bb.f ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5glTF28Accessor11ExtractDataI9aiColor4tIfEEEmRPT_PKSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not21.i = icmp eq ptr %i.g, null
  br i1 %.not21.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 296
  %i.i = load ptr, ptr %i.h, align 8
  br label %_ZN5glTF28Accessor10GetPointerEv.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not22.i = icmp eq ptr %i.k, null
  br i1 %.not22.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load ptr, ptr %i.l, align 8
  br label %_ZN5glTF28Accessor10GetPointerEv.exit

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZN5glTF28Accessor10GetPointerEv.exit.thread, label %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.i

_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.i: ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.q = load i32, ptr %i.p, align 8
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
end_hunk_1
begin_hunk_2_@_ZN5glTF28Accessor11ExtractDataI9aiColor4tIfEEEmRPT_PKSt6vectorIjSaIjEE:bb.a
  br i1 %i.ea, label %bb.ah, label %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.thread.i

bb.ah:                                            ; preds = %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.i87
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.ds
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 288
  %i.ee = load i64, ptr %i.ed, align 8
  br label %_ZN5glTF28Accessor14GetMaxByteSizeEv.exit

_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.thread.i: ; preds = %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.i87, %bb.ag
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.eg = load ptr, ptr %i.ef, align 8            ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 72
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = load ptr, ptr %i.eh, align 8
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = sub i64 %i.el, %i.em
  br label %_ZN5glTF28Accessor14GetMaxByteSizeEv.exit

_ZN5glTF28Accessor14GetMaxByteSizeEv.exit:        ; preds = %bb.af, %bb.ah, %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.thread.i
  %.0.i = phi i64 [ %i.dn, %bb.af ], [ %i.ee, %bb.ah ], [ %i.en, %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.thread.i ] ; 3 uses
  store i64 %.0.i, ptr %i.c, align 8
  %i.eo = icmp ugt i64 %i.cd, 1152921504606846975
  %i.ep = shl i64 %i.cd, 4                        ; 2 uses
  %i.eq = select i1 %i.eo, i64 -1, i64 %i.ep
  %i.er = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.eq) #37 ; 4 uses
  %i.es = icmp eq i64 %i.cd, 0                    ; 2 uses
  br i1 %i.es, label %.loopexit109, label %.loopexit109.thread

.loopexit109:                                     ; preds = %_ZN5glTF28Accessor14GetMaxByteSizeEv.exit
  store ptr %i.er, ptr %1, align 8
  br i1 %.not71, label %bb.ao, label %.loopexit

.loopexit109.thread:                              ; preds = %_ZN5glTF28Accessor14GetMaxByteSizeEv.exit
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.er, i8 0, i64 %i.ep, i1 false)
  store ptr %i.er, ptr %1, align 8
  br i1 %.not71, label %bb.ao, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit109.thread
  %i.et = udiv i64 %.0.i, %i.cz
  %i.eu = and i64 %i.et, 4294967295
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph, %bb.an
  %.051110 = phi i64 [ 0, %.lr.ph ], [ %i.fn, %bb.an ] ; 3 uses
  %i.ev = load ptr, ptr %2, align 8
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %.051110
  %i.ex = load i32, ptr %i.ew, align 4
  %i.ey = zext i32 %i.ex to i64                   ; 2 uses
  %.not74 = icmp samesign ugt i64 %i.eu, %i.ey
  %i.ez = mul i64 %i.cz, %i.ey                    ; 2 uses
  br i1 %.not74, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fa = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  store i64 %i.ez, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZN5glTF226getContextForErrorMessagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %i.fb, ptr noundef nonnull align 8 dereferenceable(32) %i.fc)
          to label %bb.ak unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.thread

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN17DeadlyImportErrorC2IJRA20_KcmRA12_S1_RKmRA5_S1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.fa, ptr noundef nonnull align 1 dereferenceable(20) @.str.315, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 1 dereferenceable(12) @.str.316, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(5) @.str.314, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.al unwind label %bb.am

bb.al:                                            ; preds = %bb.ak
  invoke void @__cxa_throw(ptr nonnull %i.fa, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.ax unwind label %bb.am

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.thread: ; preds = %bb.aj
  %i.fd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  br label %.sink.split

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.047 = phi i1 [ false, %bb.al ], [ true, %bb.ak ] ; 2 uses
  %i.fe = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ff = load ptr, ptr %6, align 8               ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.fh = icmp eq ptr %i.ff, %i.fg
  br i1 %i.fh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %bb.am
  %i.fi = load i64, ptr %i.fg, align 8
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fj) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  br i1 %.047, label %.sink.split, label %bb.av

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  br i1 %.047, label %.sink.split, label %bb.av

bb.an:                                            ; preds = %bb.ai
  %i.fk = load ptr, ptr %1, align 8
  %i.fl = getelementptr inbounds nuw [16 x i8], ptr %i.fk, i64 %.051110
  %i.fm = getelementptr inbounds nuw i8, ptr %.3.i, i64 %i.ez
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.fl, ptr nonnull align 1 %i.fm, i64 %i.cx, i1 false)
  %i.fn = add nuw i64 %.051110, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.fn, %i.cd
  br i1 %exitcond.not, label %.loopexit, label %bb.ai, !llvm.loop !109

bb.ao:                                            ; preds = %.loopexit109.thread, %.loopexit109
  %i.fo = mul i64 %i.cz, %i.cd                    ; 2 uses
  %i.fp = icmp ugt i64 %i.fo, %.0.i
  br i1 %i.fp, label %bb.ap, label %bb.at

bb.ap:                                            ; preds = %bb.ao
  %i.fq = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  store i64 %i.fo, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZN5glTF226getContextForErrorMessagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %i.fr, ptr noundef nonnull align 8 dereferenceable(32) %i.fs)
          to label %bb.aq unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.thread

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN17DeadlyImportErrorC2IJRA20_KcmRA12_S1_RKmRA5_S1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.fq, ptr noundef nonnull align 1 dereferenceable(20) @.str.317, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 1 dereferenceable(12) @.str.316, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(5) @.str.314, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.ar unwind label %bb.as

bb.ar:                                            ; preds = %bb.aq
  invoke void @__cxa_throw(ptr nonnull %i.fq, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.ax unwind label %bb.as

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.thread: ; preds = %bb.ap
  %i.ft = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  br label %.sink.split

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.046 = phi i1 [ false, %bb.ar ], [ true, %bb.aq ] ; 2 uses
  %i.fu = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fv = load ptr, ptr %7, align 8               ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.fx = icmp eq ptr %i.fv, %i.fw
  br i1 %i.fx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %bb.as
  %i.fy = load i64, ptr %i.fw, align 8
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fz) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  br i1 %.046, label %.sink.split, label %bb.av

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  br i1 %.046, label %.sink.split, label %bb.av

bb.at:                                            ; preds = %bb.ao
  %i.ga = icmp eq i32 %i.cw, 16
  %i.gb = icmp eq i64 %i.cz, 16
  %or.cond = and i1 %i.gb, %i.ga
  br i1 %or.cond, label %bb.au, label %.preheader

.preheader:                                       ; preds = %bb.at
  br i1 %i.es, label %.loopexit, label %.lr.ph112.preheader

.lr.ph112.preheader:                              ; preds = %.preheader
  %xtraiter = and i64 %i.cd, 1
  %i.gc = icmp eq i64 %i.cd, 1
  br i1 %i.gc, label %.lr.ph112.epil.preheader, label %.lr.ph112.preheader.new

.lr.ph112.preheader.new:                          ; preds = %.lr.ph112.preheader
  %unroll_iter = and i64 %i.cd, -2
  br label %.lr.ph112

bb.au:                                            ; preds = %bb.at
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.er, ptr nonnull align 1 %.3.i, i64 %i.cy, i1 false)
  br label %.loopexit

.lr.ph112:                                        ; preds = %.lr.ph112, %.lr.ph112.preheader.new
  %.0111 = phi i64 [ 0, %.lr.ph112.preheader.new ], [ %i.gm, %.lr.ph112 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph112.preheader.new ], [ %niter.next.1, %.lr.ph112 ]
  %i.gd = load ptr, ptr %1, align 8
  %i.ge = getelementptr inbounds nuw [16 x i8], ptr %i.gd, i64 %.0111
  %i.gf = mul i64 %.0111, %i.cz
  %i.gg = getelementptr inbounds nuw i8, ptr %.3.i, i64 %i.gf
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ge, ptr nonnull align 1 %i.gg, i64 %i.cx, i1 false)
  %i.gh = or disjoint i64 %.0111, 1               ; 2 uses
  %i.gi = load ptr, ptr %1, align 8
  %i.gj = getelementptr inbounds nuw [16 x i8], ptr %i.gi, i64 %i.gh
  %i.gk = mul i64 %i.gh, %i.cz
  %i.gl = getelementptr inbounds nuw i8, ptr %.3.i, i64 %i.gk
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.gj, ptr nonnull align 1 %i.gl, i64 %i.cx, i1 false)
  %i.gm = add nuw i64 %.0111, 2                   ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph112, !llvm.loop !110

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph112
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph112.epil.preheader

.lr.ph112.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph112.preheader
  %.0111.epil.init = phi i64 [ 0, %.lr.ph112.preheader ], [ %i.gm, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod155 = trunc i64 %i.cd to i1
  tail call void @llvm.assume(i1 %lcmp.mod155)
  %i.gn = load ptr, ptr %1, align 8
  %i.go = getelementptr inbounds nuw [16 x i8], ptr %i.gn, i64 %.0111.epil.init
  %i.gp = mul i64 %.0111.epil.init, %i.cz
  %i.gq = getelementptr inbounds nuw i8, ptr %.3.i, i64 %i.gp
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.go, ptr nonnull align 1 %i.gq, i64 %i.cx, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.an, %.lr.ph112.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.loopexit109, %.preheader, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  ret i64 %i.cd

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88
  %.sink = phi ptr [ %i.fa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ], [ %i.fa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88 ], [ %i.fa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.thread ], [ %i.fq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %i.fq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.thread ], [ %i.fq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ]
  %.pn75.pn.ph = phi { ptr, i32 } [ %i.fe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ], [ %i.fe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88 ], [ %i.fd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.thread ], [ %i.fu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %i.ft, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.thread ], [ %i.fu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ]
  call void @__cxa_free_exception(ptr %.sink) #34
  br label %bb.av

bb.av:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93
  %.pn75.pn = phi { ptr, i32 } [ %i.fu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ], [ %i.fe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88 ], [ %i.fu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %i.fe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ], [ %.pn75.pn.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  br label %bb.aw

bb.aw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %bb.ad, %bb.av
  %.pn78.pn = phi { ptr, i32 } [ %.pn78101, %bb.ad ], [ %i.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ], [ %.pn75.pn, %bb.av ], [ %i.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %common.resume

bb.ax:                                            ; preds = %bb.ar, %bb.al, %bb.ab, %bb.m
  unreachable
}

declare void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger4warnIJRA31_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA34_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(31) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(34) %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %5)
  %i.a = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(31) %1) #34
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef nonnull align 1 dereferenceable(31) %1, i64 noundef %i.a)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA31_cEERKT_.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %5) #34
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA31_cEERKT_.exit: ; preds = %bb.a
  invoke void @_ZN6Assimp6Logger13formatMessageIJRA34_KcERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_NS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(34) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA31_cEERKT_.exit
  %i.d = load ptr, ptr %4, align 8
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.d)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %4, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.j, ptr %5, align 8
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.l = getelementptr i8, ptr %i.j, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %5, i64 %i.m
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #35
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #34
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.w) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA31_cEERKT_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

bb.f:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %4, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.f
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7, %bb.e
  %.pn = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7 ], [ %i.y, %bb.f ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %common.resume
}

declare noundef ptr @_ZN6Assimp16aiCreateAnimMeshEPK6aiMeshbbbbb(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger4warnIJRA21_KcRmRA11_S2_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA34_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(21) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(11) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(34) %5) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %7)
  %i.a = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(21) %1) #34
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %7, ptr noundef nonnull align 1 dereferenceable(21) %1, i64 noundef %i.a)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA21_cEERKT_.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %7) #34
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA21_cEERKT_.exit: ; preds = %bb.a
  invoke void @_ZN6Assimp6Logger13formatMessageIJRA11_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA34_S2_ERmEESA_NS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %7, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(11) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(34) %5)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA21_cEERKT_.exit
  %i.d = load ptr, ptr %6, align 8
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.d)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %6, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.j, ptr %7, align 8
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.l = getelementptr i8, ptr %i.j, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %7, i64 %i.m
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8
end_hunk_2
begin_hunk_3_@_ZN6Assimp13glTF2Importer10ImportNodeERN5glTF25AssetERN10glTFCommon3RefINS1_4NodeEEE:bb.a
  %i.qg = sub i64 %i.qe, %i.qf
  %i.qh = ashr exact i64 %i.qg, 3
  %i.qi = icmp ugt i64 %i.qh, %i.qa
  br i1 %i.qi, label %bb.bu, label %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.thread.i.i.i

bb.bu:                                            ; preds = %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.i86.i.i
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr %i.qd, i64 %i.qa
  %i.qk = load ptr, ptr %i.qj, align 8
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 288
  %i.qm = load i64, ptr %i.ql, align 8
  br label %_ZN5glTF28Accessor14GetMaxByteSizeEv.exit.i.i

_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.thread.i.i.i: ; preds = %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.i86.i.i, %bb.bt
  %i.qn = getelementptr inbounds nuw i8, ptr %i.lm, i64 360
  %i.qo = load ptr, ptr %i.qn, align 8            ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 64
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qo, i64 72
  %i.qr = load ptr, ptr %i.qq, align 8
  %i.qs = load ptr, ptr %i.qp, align 8
  %i.qt = ptrtoint ptr %i.qr to i64
  %i.qu = ptrtoint ptr %i.qs to i64
  %i.qv = sub i64 %i.qt, %i.qu
  br label %_ZN5glTF28Accessor14GetMaxByteSizeEv.exit.i.i

_ZN5glTF28Accessor14GetMaxByteSizeEv.exit.i.i:    ; preds = %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.thread.i.i.i, %bb.bu, %bb.bs
  %.0.i.i.i = phi i64 [ %i.pv, %bb.bs ], [ %i.qm, %bb.bu ], [ %i.qv, %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.thread.i.i.i ] ; 3 uses
  store i64 %.0.i.i.i, ptr %i.m, align 8
  %i.qw = icmp ugt i64 %i.ol, 1152921504606846975
  %i.qx = shl i64 %i.ol, 4
  %i.qy = select i1 %i.qw, i64 -1, i64 %i.qx
  %i.qz = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.qy) #37
          to label %.noexc166 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 6 uses

.noexc166:                                        ; preds = %_ZN5glTF28Accessor14GetMaxByteSizeEv.exit.i.i
  store ptr %i.qz, ptr %i.ln, align 8
  br i1 %i.ig, label %bb.cc, label %bb.bv

bb.bv:                                            ; preds = %.noexc166
  %.not111.i.i = icmp eq i64 %i.ol, 0
  br i1 %.not111.i.i, label %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE7WeightsEEmRPT_PKSD_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bv
  %i.ra = udiv i64 %.0.i.i.i, %i.ph
  %i.rb = and i64 %i.ra, 4294967295
  %i.rc = load ptr, ptr %i.ic, align 8
  br label %bb.bw

bb.bw:                                            ; preds = %bb.cb, %.lr.ph.i.i
  %.051108.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ru, %bb.cb ] ; 3 uses
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.rc, i64 %.051108.i.i
  %i.re = load i32, ptr %i.rd, align 4
  %i.rf = zext i32 %i.re to i64                   ; 3 uses
  %.not73.i.i = icmp samesign ugt i64 %i.rb, %i.rf
  br i1 %.not73.i.i, label %bb.cb, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.rg = call ptr @__cxa_allocate_exception(i64 16) #34 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #34
  %i.rh = mul i64 %i.ph, %i.rf
  store i64 %i.rh, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #34
  %i.ri = getelementptr inbounds nuw i8, ptr %i.lm, i64 16
  %i.rj = getelementptr inbounds nuw i8, ptr %i.lm, i64 48
  invoke void @_ZN5glTF226getContextForErrorMessagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(32) %i.ri, ptr noundef nonnull align 8 dereferenceable(32) %i.rj)
          to label %bb.by unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.thread.i.i

bb.by:                                            ; preds = %bb.bx
  invoke void @_ZN17DeadlyImportErrorC2IJRA20_KcmRA12_S1_RKmRA5_S1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.rg, ptr noundef nonnull align 1 dereferenceable(20) @.str.315, ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 1 dereferenceable(12) @.str.316, ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 1 dereferenceable(5) @.str.314, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %bb.bz unwind label %bb.ca

bb.bz:                                            ; preds = %bb.by
  invoke void @__cxa_throw(ptr nonnull %i.rg, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.cl unwind label %bb.ca

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.thread.i.i: ; preds = %bb.bx
  %i.rk = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #34
  br label %.sink.split.i.i

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.047.i.i = phi i1 [ false, %bb.bz ], [ true, %bb.by ] ; 2 uses
  %i.rl = landingpad { ptr, i32 }
          catch ptr null                          ; 4 uses
  %i.rm = load ptr, ptr %16, align 8              ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.ro = icmp eq ptr %i.rm, %i.rn
  br i1 %i.ro, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87.i.i: ; preds = %bb.ca
  %i.rp = load i64, ptr %i.rn, align 8
  %i.rq = add i64 %i.rp, 1
  call void @_ZdlPvm(ptr noundef %i.rm, i64 noundef %i.rq) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #34
  br i1 %.047.i.i, label %.sink.split.i.i, label %bb.cj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.i.i: ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #34
  br i1 %.047.i.i, label %.sink.split.i.i, label %bb.cj

bb.cb:                                            ; preds = %bb.bw
  %i.rr = getelementptr inbounds nuw [16 x i8], ptr %i.qz, i64 %.051108.i.i
  %i.rs = mul i64 %i.ph, %i.rf
  %i.rt = getelementptr inbounds nuw i8, ptr %.3.i.i.i, i64 %i.rs
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.rr, ptr nonnull align 1 %i.rt, i64 %i.pf, i1 false)
  %i.ru = add nuw i64 %.051108.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ru, %i.ol
  br i1 %exitcond.not.i.i, label %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE7WeightsEEmRPT_PKSD_.exit.i, label %bb.bw, !llvm.loop !130

bb.cc:                                            ; preds = %.noexc166
  %i.rv = mul i64 %i.ph, %i.ol                    ; 2 uses
  %i.rw = icmp ugt i64 %i.rv, %.0.i.i.i
  br i1 %i.rw, label %bb.cd, label %bb.ch

bb.cd:                                            ; preds = %bb.cc
  %i.rx = call ptr @__cxa_allocate_exception(i64 16) #34 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #34
  store i64 %i.rv, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #34
  %i.ry = getelementptr inbounds nuw i8, ptr %i.lm, i64 16
  %i.rz = getelementptr inbounds nuw i8, ptr %i.lm, i64 48
  invoke void @_ZN5glTF226getContextForErrorMessagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(32) %i.ry, ptr noundef nonnull align 8 dereferenceable(32) %i.rz)
          to label %bb.ce unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread.i.i

bb.ce:                                            ; preds = %bb.cd
  invoke void @_ZN17DeadlyImportErrorC2IJRA20_KcmRA12_S1_RKmRA5_S1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.rx, ptr noundef nonnull align 1 dereferenceable(20) @.str.317, ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 1 dereferenceable(12) @.str.316, ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 1 dereferenceable(5) @.str.314, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.cf unwind label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  invoke void @__cxa_throw(ptr nonnull %i.rx, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.cl unwind label %bb.cg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread.i.i: ; preds = %bb.cd
  %i.sa = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #34
  br label %.sink.split.i.i

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %.046.i.i = phi i1 [ false, %bb.cf ], [ true, %bb.ce ] ; 2 uses
  %i.sb = landingpad { ptr, i32 }
          catch ptr null                          ; 4 uses
  %i.sc = load ptr, ptr %17, align 8              ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.se = icmp eq ptr %i.sc, %i.sd
  br i1 %i.se, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90.i.i: ; preds = %bb.cg
  %i.sf = load i64, ptr %i.sd, align 8
  %i.sg = add i64 %i.sf, 1
  call void @_ZdlPvm(ptr noundef %i.sc, i64 noundef %i.sg) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #34
  br i1 %.046.i.i, label %.sink.split.i.i, label %bb.cj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i.i: ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #34
  br i1 %.046.i.i, label %.sink.split.i.i, label %bb.cj

bb.ch:                                            ; preds = %bb.cc
  %i.sh = icmp eq i32 %i.pe, 16
  %i.si = icmp eq i64 %i.ph, 16
  %or.cond.i.i161 = and i1 %i.sh, %i.si
  br i1 %or.cond.i.i161, label %bb.ci, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ch
  %.not112.i.i = icmp eq i64 %i.ol, 0
  br i1 %.not112.i.i, label %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE7WeightsEEmRPT_PKSD_.exit.i, label %.lr.ph110.i.i.preheader

.lr.ph110.i.i.preheader:                          ; preds = %.preheader.i.i
  %xtraiter = and i64 %i.ol, 1
  %i.sj = icmp eq i64 %i.ol, 1
  br i1 %i.sj, label %.lr.ph110.i.i.epil.preheader, label %.lr.ph110.i.i.preheader.new

.lr.ph110.i.i.preheader.new:                      ; preds = %.lr.ph110.i.i.preheader
  %unroll_iter = and i64 %i.ol, -2
  br label %.lr.ph110.i.i

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.qz, ptr nonnull align 1 %.3.i.i.i, i64 %i.pg, i1 false)
  br label %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE7WeightsEEmRPT_PKSD_.exit.i

.lr.ph110.i.i:                                    ; preds = %.lr.ph110.i.i, %.lr.ph110.i.i.preheader.new
  %.0109.i.i = phi i64 [ 0, %.lr.ph110.i.i.preheader.new ], [ %i.sr, %.lr.ph110.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph110.i.i.preheader.new ], [ %niter.next.1, %.lr.ph110.i.i ]
  %i.sk = getelementptr inbounds nuw [16 x i8], ptr %i.qz, i64 %.0109.i.i
  %i.sl = mul i64 %.0109.i.i, %i.ph
  %i.sm = getelementptr inbounds nuw i8, ptr %.3.i.i.i, i64 %i.sl
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.sk, ptr nonnull align 1 %i.sm, i64 %i.pf, i1 false)
  %i.sn = or disjoint i64 %.0109.i.i, 1           ; 2 uses
  %i.so = getelementptr inbounds nuw [16 x i8], ptr %i.qz, i64 %i.sn
  %i.sp = mul i64 %i.sn, %i.ph
  %i.sq = getelementptr inbounds nuw i8, ptr %.3.i.i.i, i64 %i.sp
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.so, ptr nonnull align 1 %i.sq, i64 %i.pf, i1 false)
  %i.sr = add nuw i64 %.0109.i.i, 2               ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE7WeightsEEmRPT_PKSD_.exit.i.loopexit.unr-lcssa, label %.lr.ph110.i.i, !llvm.loop !131

.sink.split.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.thread.i.i
  %.sink.i.i = phi ptr [ %i.rg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.i.i ], [ %i.rg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87.i.i ], [ %i.rg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.thread.i.i ], [ %i.rx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90.i.i ], [ %i.rx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread.i.i ], [ %i.rx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i.i ]
  %.pn74.pn.ph.i.i = phi { ptr, i32 } [ %i.rl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.i.i ], [ %i.rl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87.i.i ], [ %i.rk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.thread.i.i ], [ %i.sb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90.i.i ], [ %i.sa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread.i.i ], [ %i.sb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i.i ]
  call void @__cxa_free_exception(ptr %.sink.i.i) #34
  br label %bb.cj

bb.cj:                                            ; preds = %.sink.split.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87.i.i
  %.pn74.pn.i.i = phi { ptr, i32 } [ %i.sb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i.i ], [ %i.rl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87.i.i ], [ %i.sb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90.i.i ], [ %i.rl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.i.i ], [ %.pn74.pn.ph.i.i, %.sink.split.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #34
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i.i
  %.pn77.pn.i.i = phi { ptr, i32 } [ %.pn77100.i.i, %bb.bq ], [ %i.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i.i ], [ %.pn74.pn.i.i, %bb.cj ], [ %i.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #34
  br label %.body

bb.cl:                                            ; preds = %bb.cf, %bb.bz, %bb.bo, %bb.az
  unreachable

_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE7WeightsEEmRPT_PKSD_.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph110.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE7WeightsEEmRPT_PKSD_.exit.i, label %.lr.ph110.i.i.epil.preheader

.lr.ph110.i.i.epil.preheader:                     ; preds = %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE7WeightsEEmRPT_PKSD_.exit.i.loopexit.unr-lcssa, %.lr.ph110.i.i.preheader
  %.0109.i.i.epil.init = phi i64 [ 0, %.lr.ph110.i.i.preheader ], [ %i.sr, %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE7WeightsEEmRPT_PKSD_.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod955 = trunc i64 %i.ol to i1
  call void @llvm.assume(i1 %lcmp.mod955)
  %i.ss = getelementptr inbounds nuw [16 x i8], ptr %i.qz, i64 %.0109.i.i.epil.init
  %i.st = mul i64 %.0109.i.i.epil.init, %i.ph
  %i.su = getelementptr inbounds nuw i8, ptr %.3.i.i.i, i64 %i.st
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ss, ptr nonnull align 1 %i.su, i64 %i.pf, i1 false)
  br label %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE7WeightsEEmRPT_PKSD_.exit.i

_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE7WeightsEEmRPT_PKSD_.exit.i: ; preds = %bb.cb, %.lr.ph110.i.i.epil.preheader, %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE7WeightsEEmRPT_PKSD_.exit.i.loopexit.unr-lcssa, %bb.ci, %.preheader.i.i, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #34
  %i.sv = add nuw i64 %.084281.i, 1               ; 2 uses
  %i.sw = load ptr, ptr %i.ja, align 8
  %i.sx = load ptr, ptr %i.iy, align 8            ; 2 uses
  %i.sy = ptrtoint ptr %i.sw to i64
  %i.sz = ptrtoint ptr %i.sx to i64
  %i.ta = sub i64 %i.sy, %i.sz
  %i.tb = ashr exact i64 %i.ta, 4
  %i.tc = icmp ult i64 %i.sv, %i.tb
  br i1 %i.tc, label %bb.an, label %._crit_edge.i, !llvm.loop !132

bb.cm:                                            ; preds = %.noexc164
  br i1 %.not297.i, label %.loopexit.i, label %.lr.ph287.i

.lr.ph287.i:                                      ; preds = %bb.cm, %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE8Indices8EEmRPT_PKSD_.exit.i
  %i.td = phi ptr [ %i.abf, %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE8Indices8EEmRPT_PKSD_.exit.i ], [ %.pre.i, %bb.cm ]
  %.081285.i = phi i64 [ %i.abd, %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE8Indices8EEmRPT_PKSD_.exit.i ], [ 0, %bb.cm ] ; 3 uses
  %i.te = getelementptr inbounds nuw [16 x i8], ptr %i.td, i64 %.081285.i ; 2 uses
  %i.tf = load ptr, ptr %i.te, align 8
  %i.tg = getelementptr inbounds nuw i8, ptr %i.te, i64 8
  %i.th = load i32, ptr %i.tg, align 8
  %i.ti = zext i32 %i.th to i64
  %i.tj = load ptr, ptr %i.tf, align 8
  %i.tk = getelementptr inbounds nuw [8 x i8], ptr %i.tj, i64 %i.ti
  %i.tl = load ptr, ptr %i.tk, align 8            ; 20 uses
  %i.tm = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %.081285.i
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tl, i64 368 ; 2 uses
  %i.to = load ptr, ptr %i.tn, align 8            ; 2 uses
  %.not21.i.i93.i = icmp eq ptr %i.to, null
  br i1 %.not21.i.i93.i, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %.lr.ph287.i
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 296
  %i.tq = load ptr, ptr %i.tp, align 8
  br label %_ZN5glTF28Accessor10GetPointerEv.exit.i94.i

bb.co:                                            ; preds = %.lr.ph287.i
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tl, i64 360
  %i.ts = load ptr, ptr %i.tr, align 8            ; 2 uses
  %.not22.i.i148.i = icmp eq ptr %i.ts, null
  br i1 %.not22.i.i148.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 64
  %i.tu = load ptr, ptr %i.tt, align 8
  br label %_ZN5glTF28Accessor10GetPointerEv.exit.i94.i

bb.cq:                                            ; preds = %bb.co
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tl, i64 264
  %i.tw = load ptr, ptr %i.tv, align 8            ; 3 uses
  %.not.i.i.i149.i = icmp eq ptr %i.tw, null
  br i1 %.not.i.i.i149.i, label %_ZN5glTF28Accessor10GetPointerEv.exit.thread.i142.i, label %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.i.i150.i

_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.i.i150.i: ; preds = %bb.cq
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tl, i64 272
  %i.ty = load i32, ptr %i.tx, align 8
  %i.tz = zext i32 %i.ty to i64                   ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tw, i64 8
  %i.ub = load ptr, ptr %i.ua, align 8
  %i.uc = load ptr, ptr %i.tw, align 8            ; 2 uses
  %i.ud = ptrtoint ptr %i.ub to i64
  %i.ue = ptrtoint ptr %i.uc to i64
  %i.uf = sub i64 %i.ud, %i.ue
  %i.ug = ashr exact i64 %i.uf, 3
  %i.uh = icmp ugt i64 %i.ug, %i.tz
  br i1 %i.uh, label %bb.cr, label %_ZN5glTF28Accessor10GetPointerEv.exit.thread.i142.i

bb.cr:                                            ; preds = %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.i.i150.i
  %i.ui = getelementptr inbounds nuw [8 x i8], ptr %i.uc, i64 %i.tz
  %i.uj = load ptr, ptr %i.ui, align 8            ; 3 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 264
  %i.ul = load ptr, ptr %i.uk, align 8            ; 3 uses
  %.not.i18.i.i151.i = icmp eq ptr %i.ul, null
  br i1 %.not.i18.i.i151.i, label %_ZN5glTF28Accessor10GetPointerEv.exit.thread.i142.i, label %_ZNK10glTFCommon3RefIN5glTF26BufferEEcvbEv.exit.i.i152.i

_ZNK10glTFCommon3RefIN5glTF26BufferEEcvbEv.exit.i.i152.i: ; preds = %bb.cr
  %i.um = getelementptr inbounds nuw i8, ptr %i.uj, i64 272
  %i.un = load i32, ptr %i.um, align 8
  %i.uo = zext i32 %i.un to i64                   ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.ul, i64 8
  %i.uq = load ptr, ptr %i.up, align 8
  %i.ur = load ptr, ptr %i.ul, align 8            ; 2 uses
  %i.us = ptrtoint ptr %i.uq to i64
  %i.ut = ptrtoint ptr %i.ur to i64
  %i.uu = sub i64 %i.us, %i.ut
  %i.uv = ashr exact i64 %i.uu, 3
  %i.uw = icmp ugt i64 %i.uv, %i.uo
  br i1 %i.uw, label %bb.cs, label %_ZN5glTF28Accessor10GetPointerEv.exit.thread.i142.i

bb.cs:                                            ; preds = %_ZNK10glTFCommon3RefIN5glTF26BufferEEcvbEv.exit.i.i152.i
  %i.ux = getelementptr inbounds nuw [8 x i8], ptr %i.ur, i64 %i.uo
  %i.uy = load ptr, ptr %i.ux, align 8            ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 296
  %i.va = load ptr, ptr %i.uz, align 8            ; 2 uses
  %.not.i.i153.i = icmp eq ptr %i.va, null
  br i1 %.not.i.i153.i, label %_ZN5glTF28Accessor10GetPointerEv.exit.thread.i142.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.vb = getelementptr inbounds nuw i8, ptr %i.tl, i64 280
  %i.vc = load i64, ptr %i.vb, align 8
  %i.vd = getelementptr inbounds nuw i8, ptr %i.uj, i64 280
  %i.ve = load i64, ptr %i.vd, align 8
  %i.vf = add i64 %i.ve, %i.vc                    ; 4 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.uy, i64 288
  %i.vh = load ptr, ptr %i.vg, align 8            ; 4 uses
  %.not16.i.i154.i = icmp eq ptr %i.vh, null
  br i1 %.not16.i.i154.i, label %.thread.i.i156.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.vi = load i64, ptr %i.vh, align 8            ; 3 uses
  %.not17.i.i155.i = icmp ult i64 %i.vf, %i.vi
  br i1 %.not17.i.i155.i, label %.thread.i.i156.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vh, i64 24
  %i.vk = load i64, ptr %i.vj, align 8
  %i.vl = add i64 %i.vk, %i.vi
  %i.vm = icmp ult i64 %i.vf, %i.vl
  br i1 %i.vm, label %bb.cw, label %.thread.i.i156.i

bb.cw:                                            ; preds = %bb.cv
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vh, i64 16
  %i.vo = load ptr, ptr %i.vn, align 8
  %i.vp = sub i64 %i.vf, %i.vi
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vo, i64 %i.vp
  br label %_ZN5glTF28Accessor10GetPointerEv.exit.i94.i

.thread.i.i156.i:                                 ; preds = %bb.cv, %bb.cu, %bb.ct
  %i.vr = getelementptr inbounds nuw i8, ptr %i.va, i64 %i.vf
  br label %_ZN5glTF28Accessor10GetPointerEv.exit.i94.i

_ZN5glTF28Accessor10GetPointerEv.exit.i94.i:      ; preds = %.thread.i.i156.i, %bb.cw, %bb.cp, %bb.cn
  %.3.i.i95.i = phi ptr [ %i.tq, %bb.cn ], [ %i.tu, %bb.cp ], [ %i.vq, %bb.cw ], [ %i.vr, %.thread.i.i156.i ] ; 8 uses
  %.not.i96.i = icmp eq ptr %.3.i.i95.i, null
  br i1 %.not.i96.i, label %_ZN5glTF28Accessor10GetPointerEv.exit.thread.i142.i, label %bb.db

_ZN5glTF28Accessor10GetPointerEv.exit.thread.i142.i: ; preds = %_ZN5glTF28Accessor10GetPointerEv.exit.i94.i, %bb.cs, %_ZNK10glTFCommon3RefIN5glTF26BufferEEcvbEv.exit.i.i152.i, %bb.cr, %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.i.i150.i, %bb.cq
  %i.vs = call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  %i.vt = getelementptr inbounds nuw i8, ptr %i.tl, i64 16
  %i.vu = getelementptr inbounds nuw i8, ptr %i.tl, i64 48
  invoke void @_ZN5glTF226getContextForErrorMessagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %i.vt, ptr noundef nonnull align 8 dereferenceable(32) %i.vu)
          to label %bb.cx unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i143.i

bb.cx:                                            ; preds = %_ZN5glTF28Accessor10GetPointerEv.exit.thread.i142.i
  invoke void @_ZN17DeadlyImportErrorC2IJRA47_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.vs, ptr noundef nonnull align 1 dereferenceable(47) @.str.311, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.cy unwind label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  invoke void @__cxa_throw(ptr nonnull %i.vs, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.ek unwind label %bb.cz

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i143.i: ; preds = %_ZN5glTF28Accessor10GetPointerEv.exit.thread.i142.i
  %i.vv = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %bb.da

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %.061.i145.i = phi i1 [ false, %bb.cy ], [ true, %bb.cx ] ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN6Assimp13glTF2Importer10ImportNodeERN5glTF25AssetERN10glTFCommon3RefINS1_4NodeEEE:bb.a
  br label %_ZN5glTF28Accessor14GetMaxByteSizeEv.exit.i101.i

_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.thread.i.i131.i: ; preds = %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.i86.i130.i, %bb.ds
  %i.ym = getelementptr inbounds nuw i8, ptr %i.tl, i64 360
  %i.yn = load ptr, ptr %i.ym, align 8            ; 2 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 64
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yn, i64 72
  %i.yq = load ptr, ptr %i.yp, align 8
  %i.yr = load ptr, ptr %i.yo, align 8
  %i.ys = ptrtoint ptr %i.yq to i64
  %i.yt = ptrtoint ptr %i.yr to i64
  %i.yu = sub i64 %i.ys, %i.yt
  br label %_ZN5glTF28Accessor14GetMaxByteSizeEv.exit.i101.i

_ZN5glTF28Accessor14GetMaxByteSizeEv.exit.i101.i: ; preds = %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.thread.i.i131.i, %bb.dt, %bb.dr
  %.0.i.i102.i = phi i64 [ %i.xu, %bb.dr ], [ %i.yl, %bb.dt ], [ %i.yu, %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.thread.i.i131.i ] ; 3 uses
  store i64 %.0.i.i102.i, ptr %i.h, align 8
  %i.yv = icmp ugt i64 %i.wk, 4611686018427387903
  %i.yw = shl i64 %i.wk, 2
  %i.yx = select i1 %i.yv, i64 -1, i64 %i.yw
  %i.yy = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.yx) #37
          to label %.noexc168 unwind label %.loopexit.split-lp.loopexit ; 8 uses

.noexc168:                                        ; preds = %_ZN5glTF28Accessor14GetMaxByteSizeEv.exit.i101.i
  store ptr %i.yy, ptr %i.tm, align 8
  br i1 %i.ig, label %bb.eb, label %bb.du

bb.du:                                            ; preds = %.noexc168
  %.not111.i103.i = icmp eq i64 %i.wk, 0
  br i1 %.not111.i103.i, label %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE8Indices8EEmRPT_PKSD_.exit.i, label %.lr.ph.i104.i

.lr.ph.i104.i:                                    ; preds = %bb.du
  %i.yz = udiv i64 %.0.i.i102.i, %i.xg
  %i.za = and i64 %i.yz, 4294967295
  %i.zb = load ptr, ptr %i.ic, align 8
  br label %bb.dv

bb.dv:                                            ; preds = %bb.ea, %.lr.ph.i104.i
  %.051108.i105.i = phi i64 [ 0, %.lr.ph.i104.i ], [ %i.zt, %bb.ea ] ; 3 uses
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %i.zb, i64 %.051108.i105.i
  %i.zd = load i32, ptr %i.zc, align 4
  %i.ze = zext i32 %i.zd to i64                   ; 3 uses
  %.not73.i106.i = icmp samesign ugt i64 %i.za, %i.ze
  br i1 %.not73.i106.i, label %bb.ea, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.zf = call ptr @__cxa_allocate_exception(i64 16) #34 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #34
  %i.zg = mul i64 %i.xg, %i.ze
  store i64 %i.zg, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  %i.zh = getelementptr inbounds nuw i8, ptr %i.tl, i64 16
  %i.zi = getelementptr inbounds nuw i8, ptr %i.tl, i64 48
  invoke void @_ZN5glTF226getContextForErrorMessagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %i.zh, ptr noundef nonnull align 8 dereferenceable(32) %i.zi)
          to label %bb.dx unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.thread.i107.i

bb.dx:                                            ; preds = %bb.dw
  invoke void @_ZN17DeadlyImportErrorC2IJRA20_KcmRA12_S1_RKmRA5_S1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.zf, ptr noundef nonnull align 1 dereferenceable(20) @.str.315, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 1 dereferenceable(12) @.str.316, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 1 dereferenceable(5) @.str.314, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.dy unwind label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  invoke void @__cxa_throw(ptr nonnull %i.zf, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.ek unwind label %bb.dz

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.thread.i107.i: ; preds = %bb.dw
  %i.zj = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #34
  br label %.sink.split.i108.i

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %.047.i115.i = phi i1 [ false, %bb.dy ], [ true, %bb.dx ] ; 2 uses
  %i.zk = landingpad { ptr, i32 }
          catch ptr null                          ; 4 uses
  %i.zl = load ptr, ptr %11, align 8              ; 2 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.zn = icmp eq ptr %i.zl, %i.zm
  br i1 %i.zn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.i117.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87.i116.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87.i116.i: ; preds = %bb.dz
  %i.zo = load i64, ptr %i.zm, align 8
  %i.zp = add i64 %i.zo, 1
  call void @_ZdlPvm(ptr noundef %i.zl, i64 noundef %i.zp) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #34
  br i1 %.047.i115.i, label %.sink.split.i108.i, label %bb.ei

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.i117.i: ; preds = %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #34
  br i1 %.047.i115.i, label %.sink.split.i108.i, label %bb.ei

bb.ea:                                            ; preds = %bb.dv
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %i.yy, i64 %.051108.i105.i
  %i.zr = mul i64 %i.xg, %i.ze
  %i.zs = getelementptr inbounds nuw i8, ptr %.3.i.i95.i, i64 %i.zr
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.zq, ptr nonnull align 1 %i.zs, i64 %i.xe, i1 false)
  %i.zt = add nuw i64 %.051108.i105.i, 1          ; 2 uses
  %exitcond.not.i118.i = icmp eq i64 %i.zt, %i.wk
  br i1 %exitcond.not.i118.i, label %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE8Indices8EEmRPT_PKSD_.exit.i, label %bb.dv, !llvm.loop !133

bb.eb:                                            ; preds = %.noexc168
  %i.zu = mul i64 %i.xg, %i.wk                    ; 2 uses
  %i.zv = icmp ugt i64 %i.zu, %.0.i.i102.i
  br i1 %i.zv, label %bb.ec, label %bb.eg

bb.ec:                                            ; preds = %bb.eb
  %i.zw = call ptr @__cxa_allocate_exception(i64 16) #34 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #34
  store i64 %i.zu, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  %i.zx = getelementptr inbounds nuw i8, ptr %i.tl, i64 16
  %i.zy = getelementptr inbounds nuw i8, ptr %i.tl, i64 48
  invoke void @_ZN5glTF226getContextForErrorMessagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(32) %i.zx, ptr noundef nonnull align 8 dereferenceable(32) %i.zy)
          to label %bb.ed unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread.i125.i

bb.ed:                                            ; preds = %bb.ec
  invoke void @_ZN17DeadlyImportErrorC2IJRA20_KcmRA12_S1_RKmRA5_S1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.zw, ptr noundef nonnull align 1 dereferenceable(20) @.str.317, ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 1 dereferenceable(12) @.str.316, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 1 dereferenceable(5) @.str.314, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.ee unwind label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  invoke void @__cxa_throw(ptr nonnull %i.zw, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.ek unwind label %bb.ef

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread.i125.i: ; preds = %bb.ec
  %i.zz = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #34
  br label %.sink.split.i108.i

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  %.046.i126.i = phi i1 [ false, %bb.ee ], [ true, %bb.ed ] ; 2 uses
  %i.aaa = landingpad { ptr, i32 }
          catch ptr null                          ; 4 uses
  %i.aab = load ptr, ptr %12, align 8             ; 2 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.aad = icmp eq ptr %i.aab, %i.aac
  br i1 %i.aad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i128.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90.i127.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90.i127.i: ; preds = %bb.ef
  %i.aae = load i64, ptr %i.aac, align 8
  %i.aaf = add i64 %i.aae, 1
  call void @_ZdlPvm(ptr noundef %i.aab, i64 noundef %i.aaf) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #34
  br i1 %.046.i126.i, label %.sink.split.i108.i, label %bb.ei

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i128.i: ; preds = %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #34
  br i1 %.046.i126.i, label %.sink.split.i108.i, label %bb.ei

bb.eg:                                            ; preds = %bb.eb
  %i.aag = icmp eq i32 %i.xd, 4
  %i.aah = icmp eq i64 %i.xg, 4
  %or.cond.i119.i = and i1 %i.aag, %i.aah
  br i1 %or.cond.i119.i, label %bb.eh, label %.preheader.i120.i

.preheader.i120.i:                                ; preds = %bb.eg
  %.not112.i121.i = icmp eq i64 %i.wk, 0
  br i1 %.not112.i121.i, label %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE8Indices8EEmRPT_PKSD_.exit.i, label %.lr.ph110.i122.i.preheader

.lr.ph110.i122.i.preheader:                       ; preds = %.preheader.i120.i
  %xtraiter961 = and i64 %i.wk, 3                 ; 3 uses
  %i.aai = icmp ult i64 %i.wk, 4
  br i1 %i.aai, label %.lr.ph110.i122.i.epil.preheader, label %.lr.ph110.i122.i.preheader.new

.lr.ph110.i122.i.preheader.new:                   ; preds = %.lr.ph110.i122.i.preheader
  %unroll_iter965 = and i64 %i.wk, -4
  br label %.lr.ph110.i122.i

bb.eh:                                            ; preds = %bb.eg
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.yy, ptr nonnull align 1 %.3.i.i95.i, i64 %i.xf, i1 false)
  br label %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE8Indices8EEmRPT_PKSD_.exit.i

.lr.ph110.i122.i:                                 ; preds = %.lr.ph110.i122.i, %.lr.ph110.i122.i.preheader.new
  %.0109.i123.i = phi i64 [ 0, %.lr.ph110.i122.i.preheader.new ], [ %i.aay, %.lr.ph110.i122.i ] ; 6 uses
  %niter966 = phi i64 [ 0, %.lr.ph110.i122.i.preheader.new ], [ %niter966.next.3, %.lr.ph110.i122.i ]
  %i.aaj = getelementptr inbounds nuw [4 x i8], ptr %i.yy, i64 %.0109.i123.i
  %i.aak = mul i64 %.0109.i123.i, %i.xg
  %i.aal = getelementptr inbounds nuw i8, ptr %.3.i.i95.i, i64 %i.aak
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aaj, ptr nonnull align 1 %i.aal, i64 %i.xe, i1 false)
  %i.aam = or disjoint i64 %.0109.i123.i, 1       ; 2 uses
  %i.aan = getelementptr inbounds nuw [4 x i8], ptr %i.yy, i64 %i.aam
  %i.aao = mul i64 %i.aam, %i.xg
  %i.aap = getelementptr inbounds nuw i8, ptr %.3.i.i95.i, i64 %i.aao
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aan, ptr nonnull align 1 %i.aap, i64 %i.xe, i1 false)
  %i.aaq = or disjoint i64 %.0109.i123.i, 2       ; 2 uses
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %i.yy, i64 %i.aaq
  %i.aas = mul i64 %i.aaq, %i.xg
  %i.aat = getelementptr inbounds nuw i8, ptr %.3.i.i95.i, i64 %i.aas
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aar, ptr nonnull align 1 %i.aat, i64 %i.xe, i1 false)
  %i.aau = or disjoint i64 %.0109.i123.i, 3       ; 2 uses
  %i.aav = getelementptr inbounds nuw [4 x i8], ptr %i.yy, i64 %i.aau
  %i.aaw = mul i64 %i.aau, %i.xg
  %i.aax = getelementptr inbounds nuw i8, ptr %.3.i.i95.i, i64 %i.aaw
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aav, ptr nonnull align 1 %i.aax, i64 %i.xe, i1 false)
  %i.aay = add nuw i64 %.0109.i123.i, 4           ; 2 uses
  %niter966.next.3 = add nuw i64 %niter966, 4     ; 2 uses
  %niter966.ncmp.3 = icmp eq i64 %niter966.next.3, %unroll_iter965
  br i1 %niter966.ncmp.3, label %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE8Indices8EEmRPT_PKSD_.exit.i.loopexit.unr-lcssa, label %.lr.ph110.i122.i, !llvm.loop !134

.sink.split.i108.i:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i128.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90.i127.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread.i125.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.i117.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87.i116.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.thread.i107.i
  %.sink.i109.i = phi ptr [ %i.zf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.i117.i ], [ %i.zf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87.i116.i ], [ %i.zf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.thread.i107.i ], [ %i.zw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90.i127.i ], [ %i.zw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread.i125.i ], [ %i.zw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i128.i ]
  %.pn74.pn.ph.i110.i = phi { ptr, i32 } [ %i.zk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.i117.i ], [ %i.zk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87.i116.i ], [ %i.zj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.thread.i107.i ], [ %i.aaa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90.i127.i ], [ %i.zz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread.i125.i ], [ %i.aaa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i128.i ]
  call void @__cxa_free_exception(ptr %.sink.i109.i) #34
  br label %bb.ei

bb.ei:                                            ; preds = %.sink.split.i108.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i128.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90.i127.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.i117.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87.i116.i
  %.pn74.pn.i111.i = phi { ptr, i32 } [ %i.aaa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i128.i ], [ %i.zk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87.i116.i ], [ %i.aaa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90.i127.i ], [ %i.zk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.i117.i ], [ %.pn74.pn.ph.i110.i, %.sink.split.i108.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #34
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.dp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i136.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i135.i
  %.pn77.pn.i112.i = phi { ptr, i32 } [ %.pn77100.i133.i, %bb.dp ], [ %i.xm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i136.i ], [ %.pn74.pn.i111.i, %bb.ei ], [ %i.xm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i135.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  br label %.body

bb.ek:                                            ; preds = %bb.ee, %bb.dy, %bb.dn, %bb.cy
  unreachable

_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE8Indices8EEmRPT_PKSD_.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph110.i122.i
  %lcmp.mod963.not = icmp eq i64 %xtraiter961, 0
  br i1 %lcmp.mod963.not, label %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE8Indices8EEmRPT_PKSD_.exit.i, label %.lr.ph110.i122.i.epil.preheader

.lr.ph110.i122.i.epil.preheader:                  ; preds = %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE8Indices8EEmRPT_PKSD_.exit.i.loopexit.unr-lcssa, %.lr.ph110.i122.i.preheader
  %.0109.i123.i.epil.init = phi i64 [ 0, %.lr.ph110.i122.i.preheader ], [ %i.aay, %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE8Indices8EEmRPT_PKSD_.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod964 = icmp ne i64 %xtraiter961, 0
  call void @llvm.assume(i1 %lcmp.mod964)
  br label %.lr.ph110.i122.i.epil

.lr.ph110.i122.i.epil:                            ; preds = %.lr.ph110.i122.i.epil, %.lr.ph110.i122.i.epil.preheader
  %.0109.i123.i.epil = phi i64 [ %i.abc, %.lr.ph110.i122.i.epil ], [ %.0109.i123.i.epil.init, %.lr.ph110.i122.i.epil.preheader ] ; 3 uses
  %epil.iter962 = phi i64 [ %epil.iter962.next, %.lr.ph110.i122.i.epil ], [ 0, %.lr.ph110.i122.i.epil.preheader ]
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %i.yy, i64 %.0109.i123.i.epil
  %i.aba = mul i64 %.0109.i123.i.epil, %i.xg
  %i.abb = getelementptr inbounds nuw i8, ptr %.3.i.i95.i, i64 %i.aba
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aaz, ptr nonnull align 1 %i.abb, i64 %i.xe, i1 false)
  %i.abc = add nuw i64 %.0109.i123.i.epil, 1
  %epil.iter962.next = add i64 %epil.iter962, 1   ; 2 uses
  %epil.iter962.cmp.not = icmp eq i64 %epil.iter962.next, %xtraiter961
  br i1 %epil.iter962.cmp.not, label %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE8Indices8EEmRPT_PKSD_.exit.i, label %.lr.ph110.i122.i.epil, !llvm.loop !135

_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE8Indices8EEmRPT_PKSD_.exit.i: ; preds = %bb.ea, %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE8Indices8EEmRPT_PKSD_.exit.i.loopexit.unr-lcssa, %.lr.ph110.i122.i.epil, %bb.eh, %.preheader.i120.i, %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  %i.abd = add nuw i64 %.081285.i, 1              ; 2 uses
  %i.abe = load ptr, ptr %i.jf, align 8
  %i.abf = load ptr, ptr %i.jd, align 8           ; 2 uses
  %i.abg = ptrtoint ptr %i.abe to i64
  %i.abh = ptrtoint ptr %i.abf to i64
  %i.abi = sub i64 %i.abg, %i.abh
  %i.abj = ashr exact i64 %i.abi, 4
  %i.abk = icmp ult i64 %i.abd, %i.abj
  br i1 %i.abk, label %.lr.ph287.i, label %.loopexit.i, !llvm.loop !136

bb.el:                                            ; preds = %.noexc164
  br i1 %.not297.i, label %.loopexit.i, label %.lr.ph284.i

.lr.ph284.i:                                      ; preds = %bb.el, %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE9Indices16EEmRPT_PKSD_.exit.i
  %i.abl = phi ptr [ %i.ajn, %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE9Indices16EEmRPT_PKSD_.exit.i ], [ %.pre.i, %bb.el ]
  %.080282.i = phi i64 [ %i.ajl, %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE9Indices16EEmRPT_PKSD_.exit.i ], [ 0, %bb.el ] ; 3 uses
  %i.abm = getelementptr inbounds nuw [16 x i8], ptr %i.abl, i64 %.080282.i ; 2 uses
  %i.abn = load ptr, ptr %i.abm, align 8
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abm, i64 8
  %i.abp = load i32, ptr %i.abo, align 8
  %i.abq = zext i32 %i.abp to i64
  %i.abr = load ptr, ptr %i.abn, align 8
  %i.abs = getelementptr inbounds nuw [8 x i8], ptr %i.abr, i64 %i.abq
  %i.abt = load ptr, ptr %i.abs, align 8          ; 20 uses
  %i.abu = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %.080282.i
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abt, i64 368 ; 2 uses
  %i.abw = load ptr, ptr %i.abv, align 8          ; 2 uses
  %.not21.i.i157.i = icmp eq ptr %i.abw, null
  br i1 %.not21.i.i157.i, label %bb.en, label %bb.em

bb.em:                                            ; preds = %.lr.ph284.i
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abw, i64 296
  %i.aby = load ptr, ptr %i.abx, align 8
  br label %_ZN5glTF28Accessor10GetPointerEv.exit.i158.i

bb.en:                                            ; preds = %.lr.ph284.i
  %i.abz = getelementptr inbounds nuw i8, ptr %i.abt, i64 360
  %i.aca = load ptr, ptr %i.abz, align 8          ; 2 uses
  %.not22.i.i212.i = icmp eq ptr %i.aca, null
  br i1 %.not22.i.i212.i, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aca, i64 64
  %i.acc = load ptr, ptr %i.acb, align 8
  br label %_ZN5glTF28Accessor10GetPointerEv.exit.i158.i

bb.ep:                                            ; preds = %bb.en
  %i.acd = getelementptr inbounds nuw i8, ptr %i.abt, i64 264
  %i.ace = load ptr, ptr %i.acd, align 8          ; 3 uses
  %.not.i.i.i213.i = icmp eq ptr %i.ace, null
  br i1 %.not.i.i.i213.i, label %_ZN5glTF28Accessor10GetPointerEv.exit.thread.i206.i, label %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.i.i214.i

_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.i.i214.i: ; preds = %bb.ep
  %i.acf = getelementptr inbounds nuw i8, ptr %i.abt, i64 272
  %i.acg = load i32, ptr %i.acf, align 8
  %i.ach = zext i32 %i.acg to i64                 ; 2 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ace, i64 8
  %i.acj = load ptr, ptr %i.aci, align 8
  %i.ack = load ptr, ptr %i.ace, align 8          ; 2 uses
  %i.acl = ptrtoint ptr %i.acj to i64
  %i.acm = ptrtoint ptr %i.ack to i64
  %i.acn = sub i64 %i.acl, %i.acm
  %i.aco = ashr exact i64 %i.acn, 3
  %i.acp = icmp ugt i64 %i.aco, %i.ach
  br i1 %i.acp, label %bb.eq, label %_ZN5glTF28Accessor10GetPointerEv.exit.thread.i206.i

bb.eq:                                            ; preds = %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.i.i214.i
  %i.acq = getelementptr inbounds nuw [8 x i8], ptr %i.ack, i64 %i.ach
  %i.acr = load ptr, ptr %i.acq, align 8          ; 3 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acr, i64 264
  %i.act = load ptr, ptr %i.acs, align 8          ; 3 uses
  %.not.i18.i.i215.i = icmp eq ptr %i.act, null
  br i1 %.not.i18.i.i215.i, label %_ZN5glTF28Accessor10GetPointerEv.exit.thread.i206.i, label %_ZNK10glTFCommon3RefIN5glTF26BufferEEcvbEv.exit.i.i216.i

_ZNK10glTFCommon3RefIN5glTF26BufferEEcvbEv.exit.i.i216.i: ; preds = %bb.eq
  %i.acu = getelementptr inbounds nuw i8, ptr %i.acr, i64 272
  %i.acv = load i32, ptr %i.acu, align 8
  %i.acw = zext i32 %i.acv to i64                 ; 2 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %i.act, i64 8
  %i.acy = load ptr, ptr %i.acx, align 8
  %i.acz = load ptr, ptr %i.act, align 8          ; 2 uses
  %i.ada = ptrtoint ptr %i.acy to i64
  %i.adb = ptrtoint ptr %i.acz to i64
  %i.adc = sub i64 %i.ada, %i.adb
  %i.add = ashr exact i64 %i.adc, 3
  %i.ade = icmp ugt i64 %i.add, %i.acw
  br i1 %i.ade, label %bb.er, label %_ZN5glTF28Accessor10GetPointerEv.exit.thread.i206.i

bb.er:                                            ; preds = %_ZNK10glTFCommon3RefIN5glTF26BufferEEcvbEv.exit.i.i216.i
  %i.adf = getelementptr inbounds nuw [8 x i8], ptr %i.acz, i64 %i.acw
  %i.adg = load ptr, ptr %i.adf, align 8          ; 2 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adg, i64 296
  %i.adi = load ptr, ptr %i.adh, align 8          ; 2 uses
  %.not.i.i217.i = icmp eq ptr %i.adi, null
  br i1 %.not.i.i217.i, label %_ZN5glTF28Accessor10GetPointerEv.exit.thread.i206.i, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.adj = getelementptr inbounds nuw i8, ptr %i.abt, i64 280
  %i.adk = load i64, ptr %i.adj, align 8
  %i.adl = getelementptr inbounds nuw i8, ptr %i.acr, i64 280
  %i.adm = load i64, ptr %i.adl, align 8
  %i.adn = add i64 %i.adm, %i.adk                 ; 4 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adg, i64 288
  %i.adp = load ptr, ptr %i.ado, align 8          ; 4 uses
  %.not16.i.i218.i = icmp eq ptr %i.adp, null
  br i1 %.not16.i.i218.i, label %.thread.i.i220.i, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.adq = load i64, ptr %i.adp, align 8          ; 3 uses
  %.not17.i.i219.i = icmp ult i64 %i.adn, %i.adq
  br i1 %.not17.i.i219.i, label %.thread.i.i220.i, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adp, i64 24
  %i.ads = load i64, ptr %i.adr, align 8
  %i.adt = add i64 %i.ads, %i.adq
  %i.adu = icmp ult i64 %i.adn, %i.adt
  br i1 %i.adu, label %bb.ev, label %.thread.i.i220.i

bb.ev:                                            ; preds = %bb.eu
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adp, i64 16
  %i.adw = load ptr, ptr %i.adv, align 8
  %i.adx = sub i64 %i.adn, %i.adq
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adw, i64 %i.adx
  br label %_ZN5glTF28Accessor10GetPointerEv.exit.i158.i

.thread.i.i220.i:                                 ; preds = %bb.eu, %bb.et, %bb.es
  %i.adz = getelementptr inbounds nuw i8, ptr %i.adi, i64 %i.adn
  br label %_ZN5glTF28Accessor10GetPointerEv.exit.i158.i

_ZN5glTF28Accessor10GetPointerEv.exit.i158.i:     ; preds = %.thread.i.i220.i, %bb.ev, %bb.eo, %bb.em
  %.3.i.i159.i = phi ptr [ %i.aby, %bb.em ], [ %i.acc, %bb.eo ], [ %i.ady, %bb.ev ], [ %i.adz, %.thread.i.i220.i ] ; 8 uses
  %.not.i160.i = icmp eq ptr %.3.i.i159.i, null
  br i1 %.not.i160.i, label %_ZN5glTF28Accessor10GetPointerEv.exit.thread.i206.i, label %bb.fa

_ZN5glTF28Accessor10GetPointerEv.exit.thread.i206.i: ; preds = %_ZN5glTF28Accessor10GetPointerEv.exit.i158.i, %bb.er, %_ZNK10glTFCommon3RefIN5glTF26BufferEEcvbEv.exit.i.i216.i, %bb.eq, %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.i.i214.i, %bb.ep
  %i.aea = call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.abt, i64 16
  %i.aec = getelementptr inbounds nuw i8, ptr %i.abt, i64 48
  invoke void @_ZN5glTF226getContextForErrorMessagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %i.aeb, ptr noundef nonnull align 8 dereferenceable(32) %i.aec)
          to label %bb.ew unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i207.i

bb.ew:                                            ; preds = %_ZN5glTF28Accessor10GetPointerEv.exit.thread.i206.i
  invoke void @_ZN17DeadlyImportErrorC2IJRA47_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.aea, ptr noundef nonnull align 1 dereferenceable(47) @.str.311, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.ex unwind label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  invoke void @__cxa_throw(ptr nonnull %i.aea, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.gj unwind label %bb.ey

end_hunk_4
begin_hunk_5_@_ZN6Assimp13glTF2Importer10ImportNodeERN5glTF25AssetERN10glTFCommon3RefINS1_4NodeEEE:bb.a
  br label %_ZN5glTF28Accessor14GetMaxByteSizeEv.exit.i165.i

_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.thread.i.i195.i: ; preds = %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.i86.i194.i, %bb.fr
  %i.agu = getelementptr inbounds nuw i8, ptr %i.abt, i64 360
  %i.agv = load ptr, ptr %i.agu, align 8          ; 2 uses
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agv, i64 64
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agv, i64 72
  %i.agy = load ptr, ptr %i.agx, align 8
  %i.agz = load ptr, ptr %i.agw, align 8
  %i.aha = ptrtoint ptr %i.agy to i64
  %i.ahb = ptrtoint ptr %i.agz to i64
  %i.ahc = sub i64 %i.aha, %i.ahb
  br label %_ZN5glTF28Accessor14GetMaxByteSizeEv.exit.i165.i

_ZN5glTF28Accessor14GetMaxByteSizeEv.exit.i165.i: ; preds = %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.thread.i.i195.i, %bb.fs, %bb.fq
  %.0.i.i166.i = phi i64 [ %i.agc, %bb.fq ], [ %i.agt, %bb.fs ], [ %i.ahc, %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.thread.i.i195.i ] ; 3 uses
  store i64 %.0.i.i166.i, ptr %i.c, align 8
  %i.ahd = icmp ugt i64 %i.aes, 2305843009213693951
  %i.ahe = shl i64 %i.aes, 3
  %i.ahf = select i1 %i.ahd, i64 -1, i64 %i.ahe
  %i.ahg = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ahf) #37
          to label %.noexc170 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 8 uses

.noexc170:                                        ; preds = %_ZN5glTF28Accessor14GetMaxByteSizeEv.exit.i165.i
  store ptr %i.ahg, ptr %i.abu, align 8
  br i1 %i.ig, label %bb.ga, label %bb.ft

bb.ft:                                            ; preds = %.noexc170
  %.not111.i167.i = icmp eq i64 %i.aes, 0
  br i1 %.not111.i167.i, label %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE9Indices16EEmRPT_PKSD_.exit.i, label %.lr.ph.i168.i

.lr.ph.i168.i:                                    ; preds = %bb.ft
  %i.ahh = udiv i64 %.0.i.i166.i, %i.afo
  %i.ahi = and i64 %i.ahh, 4294967295
  %i.ahj = load ptr, ptr %i.ic, align 8
  br label %bb.fu

bb.fu:                                            ; preds = %bb.fz, %.lr.ph.i168.i
  %.051108.i169.i = phi i64 [ 0, %.lr.ph.i168.i ], [ %i.aib, %bb.fz ] ; 3 uses
  %i.ahk = getelementptr inbounds nuw [4 x i8], ptr %i.ahj, i64 %.051108.i169.i
  %i.ahl = load i32, ptr %i.ahk, align 4
  %i.ahm = zext i32 %i.ahl to i64                 ; 3 uses
  %.not73.i170.i = icmp samesign ugt i64 %i.ahi, %i.ahm
  br i1 %.not73.i170.i, label %bb.fz, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.ahn = call ptr @__cxa_allocate_exception(i64 16) #34 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  %i.aho = mul i64 %i.afo, %i.ahm
  store i64 %i.aho, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.abt, i64 16
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.abt, i64 48
  invoke void @_ZN5glTF226getContextForErrorMessagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %i.ahp, ptr noundef nonnull align 8 dereferenceable(32) %i.ahq)
          to label %bb.fw unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.thread.i171.i

bb.fw:                                            ; preds = %bb.fv
  invoke void @_ZN17DeadlyImportErrorC2IJRA20_KcmRA12_S1_RKmRA5_S1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ahn, ptr noundef nonnull align 1 dereferenceable(20) @.str.315, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 1 dereferenceable(12) @.str.316, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(5) @.str.314, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.fx unwind label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  invoke void @__cxa_throw(ptr nonnull %i.ahn, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.gj unwind label %bb.fy

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.thread.i171.i: ; preds = %bb.fv
  %i.ahr = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  br label %.sink.split.i172.i

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %.047.i179.i = phi i1 [ false, %bb.fx ], [ true, %bb.fw ] ; 2 uses
  %i.ahs = landingpad { ptr, i32 }
          catch ptr null                          ; 4 uses
  %i.aht = load ptr, ptr %6, align 8              ; 2 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ahv = icmp eq ptr %i.aht, %i.ahu
  br i1 %i.ahv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.i181.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87.i180.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87.i180.i: ; preds = %bb.fy
  %i.ahw = load i64, ptr %i.ahu, align 8
  %i.ahx = add i64 %i.ahw, 1
  call void @_ZdlPvm(ptr noundef %i.aht, i64 noundef %i.ahx) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  br i1 %.047.i179.i, label %.sink.split.i172.i, label %bb.gh

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.i181.i: ; preds = %bb.fy
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  br i1 %.047.i179.i, label %.sink.split.i172.i, label %bb.gh

bb.fz:                                            ; preds = %bb.fu
  %i.ahy = getelementptr inbounds nuw [8 x i8], ptr %i.ahg, i64 %.051108.i169.i
  %i.ahz = mul i64 %i.afo, %i.ahm
  %i.aia = getelementptr inbounds nuw i8, ptr %.3.i.i159.i, i64 %i.ahz
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.ahy, ptr nonnull align 1 %i.aia, i64 %i.afm, i1 false)
  %i.aib = add nuw i64 %.051108.i169.i, 1         ; 2 uses
  %exitcond.not.i182.i = icmp eq i64 %i.aib, %i.aes
  br i1 %exitcond.not.i182.i, label %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE9Indices16EEmRPT_PKSD_.exit.i, label %bb.fu, !llvm.loop !137

bb.ga:                                            ; preds = %.noexc170
  %i.aic = mul i64 %i.afo, %i.aes                 ; 2 uses
  %i.aid = icmp ugt i64 %i.aic, %.0.i.i166.i
  br i1 %i.aid, label %bb.gb, label %bb.gf

bb.gb:                                            ; preds = %bb.ga
  %i.aie = call ptr @__cxa_allocate_exception(i64 16) #34 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  store i64 %i.aic, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.aif = getelementptr inbounds nuw i8, ptr %i.abt, i64 16
  %i.aig = getelementptr inbounds nuw i8, ptr %i.abt, i64 48
  invoke void @_ZN5glTF226getContextForErrorMessagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %i.aif, ptr noundef nonnull align 8 dereferenceable(32) %i.aig)
          to label %bb.gc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread.i189.i

bb.gc:                                            ; preds = %bb.gb
  invoke void @_ZN17DeadlyImportErrorC2IJRA20_KcmRA12_S1_RKmRA5_S1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.aie, ptr noundef nonnull align 1 dereferenceable(20) @.str.317, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 1 dereferenceable(12) @.str.316, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(5) @.str.314, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.gd unwind label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  invoke void @__cxa_throw(ptr nonnull %i.aie, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.gj unwind label %bb.ge

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread.i189.i: ; preds = %bb.gb
  %i.aih = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  br label %.sink.split.i172.i

bb.ge:                                            ; preds = %bb.gd, %bb.gc
  %.046.i190.i = phi i1 [ false, %bb.gd ], [ true, %bb.gc ] ; 2 uses
  %i.aii = landingpad { ptr, i32 }
          catch ptr null                          ; 4 uses
  %i.aij = load ptr, ptr %7, align 8              ; 2 uses
  %i.aik = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ail = icmp eq ptr %i.aij, %i.aik
  br i1 %i.ail, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i192.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90.i191.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90.i191.i: ; preds = %bb.ge
  %i.aim = load i64, ptr %i.aik, align 8
  %i.ain = add i64 %i.aim, 1
  call void @_ZdlPvm(ptr noundef %i.aij, i64 noundef %i.ain) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  br i1 %.046.i190.i, label %.sink.split.i172.i, label %bb.gh

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i192.i: ; preds = %bb.ge
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  br i1 %.046.i190.i, label %.sink.split.i172.i, label %bb.gh

bb.gf:                                            ; preds = %bb.ga
  %i.aio = icmp eq i32 %i.afl, 8
  %i.aip = icmp eq i64 %i.afo, 8
  %or.cond.i183.i = and i1 %i.aio, %i.aip
  br i1 %or.cond.i183.i, label %bb.gg, label %.preheader.i184.i

.preheader.i184.i:                                ; preds = %bb.gf
  %.not112.i185.i = icmp eq i64 %i.aes, 0
  br i1 %.not112.i185.i, label %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE9Indices16EEmRPT_PKSD_.exit.i, label %.lr.ph110.i186.i.preheader

.lr.ph110.i186.i.preheader:                       ; preds = %.preheader.i184.i
  %xtraiter956 = and i64 %i.aes, 3                ; 3 uses
  %i.aiq = icmp ult i64 %i.aes, 4
  br i1 %i.aiq, label %.lr.ph110.i186.i.epil.preheader, label %.lr.ph110.i186.i.preheader.new

.lr.ph110.i186.i.preheader.new:                   ; preds = %.lr.ph110.i186.i.preheader
  %unroll_iter959 = and i64 %i.aes, -4
  br label %.lr.ph110.i186.i

bb.gg:                                            ; preds = %bb.gf
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.ahg, ptr nonnull align 1 %.3.i.i159.i, i64 %i.afn, i1 false)
  br label %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE9Indices16EEmRPT_PKSD_.exit.i

.lr.ph110.i186.i:                                 ; preds = %.lr.ph110.i186.i, %.lr.ph110.i186.i.preheader.new
  %.0109.i187.i = phi i64 [ 0, %.lr.ph110.i186.i.preheader.new ], [ %i.ajg, %.lr.ph110.i186.i ] ; 6 uses
  %niter960 = phi i64 [ 0, %.lr.ph110.i186.i.preheader.new ], [ %niter960.next.3, %.lr.ph110.i186.i ]
  %i.air = getelementptr inbounds nuw [8 x i8], ptr %i.ahg, i64 %.0109.i187.i
  %i.ais = mul i64 %.0109.i187.i, %i.afo
  %i.ait = getelementptr inbounds nuw i8, ptr %.3.i.i159.i, i64 %i.ais
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.air, ptr nonnull align 1 %i.ait, i64 %i.afm, i1 false)
  %i.aiu = or disjoint i64 %.0109.i187.i, 1       ; 2 uses
  %i.aiv = getelementptr inbounds nuw [8 x i8], ptr %i.ahg, i64 %i.aiu
  %i.aiw = mul i64 %i.aiu, %i.afo
  %i.aix = getelementptr inbounds nuw i8, ptr %.3.i.i159.i, i64 %i.aiw
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.aiv, ptr nonnull align 1 %i.aix, i64 %i.afm, i1 false)
  %i.aiy = or disjoint i64 %.0109.i187.i, 2       ; 2 uses
  %i.aiz = getelementptr inbounds nuw [8 x i8], ptr %i.ahg, i64 %i.aiy
  %i.aja = mul i64 %i.aiy, %i.afo
  %i.ajb = getelementptr inbounds nuw i8, ptr %.3.i.i159.i, i64 %i.aja
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.aiz, ptr nonnull align 1 %i.ajb, i64 %i.afm, i1 false)
  %i.ajc = or disjoint i64 %.0109.i187.i, 3       ; 2 uses
  %i.ajd = getelementptr inbounds nuw [8 x i8], ptr %i.ahg, i64 %i.ajc
  %i.aje = mul i64 %i.ajc, %i.afo
  %i.ajf = getelementptr inbounds nuw i8, ptr %.3.i.i159.i, i64 %i.aje
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.ajd, ptr nonnull align 1 %i.ajf, i64 %i.afm, i1 false)
  %i.ajg = add nuw i64 %.0109.i187.i, 4           ; 2 uses
  %niter960.next.3 = add nuw i64 %niter960, 4     ; 2 uses
  %niter960.ncmp.3 = icmp eq i64 %niter960.next.3, %unroll_iter959
  br i1 %niter960.ncmp.3, label %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE9Indices16EEmRPT_PKSD_.exit.i.loopexit.unr-lcssa, label %.lr.ph110.i186.i, !llvm.loop !138

.sink.split.i172.i:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i192.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90.i191.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread.i189.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.i181.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87.i180.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.thread.i171.i
  %.sink.i173.i = phi ptr [ %i.ahn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.i181.i ], [ %i.ahn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87.i180.i ], [ %i.ahn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.thread.i171.i ], [ %i.aie, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90.i191.i ], [ %i.aie, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread.i189.i ], [ %i.aie, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i192.i ]
  %.pn74.pn.ph.i174.i = phi { ptr, i32 } [ %i.ahs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.i181.i ], [ %i.ahs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87.i180.i ], [ %i.ahr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.thread.i171.i ], [ %i.aii, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90.i191.i ], [ %i.aih, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread.i189.i ], [ %i.aii, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i192.i ]
  call void @__cxa_free_exception(ptr %.sink.i173.i) #34
  br label %bb.gh

bb.gh:                                            ; preds = %.sink.split.i172.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i192.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90.i191.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.i181.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87.i180.i
  %.pn74.pn.i175.i = phi { ptr, i32 } [ %i.aii, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i192.i ], [ %i.ahs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87.i180.i ], [ %i.aii, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90.i191.i ], [ %i.ahs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.i181.i ], [ %.pn74.pn.ph.i174.i, %.sink.split.i172.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %bb.fo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i200.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i199.i
  %.pn77.pn.i176.i = phi { ptr, i32 } [ %.pn77100.i197.i, %bb.fo ], [ %i.afu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i200.i ], [ %.pn74.pn.i175.i, %bb.gh ], [ %i.afu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i199.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %.body

bb.gj:                                            ; preds = %bb.gd, %bb.fx, %bb.fm, %bb.ex
  unreachable

_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE9Indices16EEmRPT_PKSD_.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph110.i186.i
  %lcmp.mod957.not = icmp eq i64 %xtraiter956, 0
  br i1 %lcmp.mod957.not, label %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE9Indices16EEmRPT_PKSD_.exit.i, label %.lr.ph110.i186.i.epil.preheader

.lr.ph110.i186.i.epil.preheader:                  ; preds = %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE9Indices16EEmRPT_PKSD_.exit.i.loopexit.unr-lcssa, %.lr.ph110.i186.i.preheader
  %.0109.i187.i.epil.init = phi i64 [ 0, %.lr.ph110.i186.i.preheader ], [ %i.ajg, %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE9Indices16EEmRPT_PKSD_.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod958 = icmp ne i64 %xtraiter956, 0
  call void @llvm.assume(i1 %lcmp.mod958)
  br label %.lr.ph110.i186.i.epil

.lr.ph110.i186.i.epil:                            ; preds = %.lr.ph110.i186.i.epil, %.lr.ph110.i186.i.epil.preheader
  %.0109.i187.i.epil = phi i64 [ %i.ajk, %.lr.ph110.i186.i.epil ], [ %.0109.i187.i.epil.init, %.lr.ph110.i186.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph110.i186.i.epil ], [ 0, %.lr.ph110.i186.i.epil.preheader ]
  %i.ajh = getelementptr inbounds nuw [8 x i8], ptr %i.ahg, i64 %.0109.i187.i.epil
  %i.aji = mul i64 %.0109.i187.i.epil, %i.afo
  %i.ajj = getelementptr inbounds nuw i8, ptr %.3.i.i159.i, i64 %i.aji
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.ajh, ptr nonnull align 1 %i.ajj, i64 %i.afm, i1 false)
  %i.ajk = add nuw i64 %.0109.i187.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter956
  br i1 %epil.iter.cmp.not, label %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE9Indices16EEmRPT_PKSD_.exit.i, label %.lr.ph110.i186.i.epil, !llvm.loop !139

_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE9Indices16EEmRPT_PKSD_.exit.i: ; preds = %bb.fz, %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE9Indices16EEmRPT_PKSD_.exit.i.loopexit.unr-lcssa, %.lr.ph110.i186.i.epil, %bb.gg, %.preheader.i184.i, %bb.ft
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.ajl = add nuw i64 %.080282.i, 1              ; 2 uses
  %i.ajm = load ptr, ptr %i.jf, align 8
  %i.ajn = load ptr, ptr %i.jd, align 8           ; 2 uses
  %i.ajo = ptrtoint ptr %i.ajm to i64
  %i.ajp = ptrtoint ptr %i.ajn to i64
  %i.ajq = sub i64 %i.ajo, %i.ajp
  %i.ajr = ashr exact i64 %i.ajq, 4
  %i.ajs = icmp ult i64 %i.ajl, %i.ajr
  br i1 %i.ajs, label %.lr.ph284.i, label %.loopexit.i, !llvm.loop !140

.loopexit.i:                                      ; preds = %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE9Indices16EEmRPT_PKSD_.exit.i, %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE8Indices8EEmRPT_PKSD_.exit.i, %bb.el, %bb.cm
  %.083.i = phi ptr [ %i.lb, %bb.cm ], [ null, %bb.el ], [ %i.lb, %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE8Indices8EEmRPT_PKSD_.exit.i ], [ null, %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE9Indices16EEmRPT_PKSD_.exit.i ] ; 4 uses
  %.082.i = phi ptr [ null, %bb.cm ], [ %i.lb, %bb.el ], [ null, %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE8Indices8EEmRPT_PKSD_.exit.i ], [ %i.lb, %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE9Indices16EEmRPT_PKSD_.exit.i ] ; 5 uses
  %i.ajt = icmp eq ptr %.083.i, null              ; 3 uses
  %i.aju = icmp eq ptr %.082.i, null              ; 3 uses
  %i.ajv = load ptr, ptr %i.ja, align 8           ; 2 uses
  %i.ajw = load ptr, ptr %i.iy, align 8           ; 2 uses
  %.not298.i = icmp eq ptr %i.ajv, %i.ajw
  br i1 %.not298.i, label %._crit_edge294.i, label %.preheader226.lr.ph.i

.preheader226.lr.ph.i:                            ; preds = %.loopexit.i
  %.not299.i = icmp eq i64 %i.ol, 0
  br i1 %.not299.i, label %.preheader.i, label %.preheader226.i.preheader

.preheader226.i.preheader:                        ; preds = %.preheader226.lr.ph.i
  %i.ajx = ptrtoint ptr %i.im to i64
  br label %.preheader226.i

.preheader226.i:                                  ; preds = %.preheader226.i.preheader, %._crit_edge290.i
  %i.ajy = phi ptr [ %i.apg, %._crit_edge290.i ], [ %i.il, %.preheader226.i.preheader ]
  %.079291.i = phi i64 [ %i.alh, %._crit_edge290.i ], [ 0, %.preheader226.i.preheader ] ; 4 uses
  %i.ajz = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %.079291.i
  %i.aka = getelementptr inbounds nuw [8 x i8], ptr %.083.i, i64 %.079291.i
  %i.akb = getelementptr inbounds nuw [8 x i8], ptr %.082.i, i64 %.079291.i
  br label %.preheader225.i

.preheader.i:                                     ; preds = %._crit_edge290.i, %.preheader226.lr.ph.i
  %i.akc = phi ptr [ %i.ajw, %.preheader226.lr.ph.i ], [ %i.alj, %._crit_edge290.i ] ; 2 uses
  %i.akd = phi ptr [ %i.ajv, %.preheader226.lr.ph.i ], [ %i.ali, %._crit_edge290.i ] ; 2 uses
  %.not300.i = icmp eq ptr %i.akd, %i.akc
  br i1 %.not300.i, label %._crit_edge294.i, label %.lr.ph293.i

.lr.ph293.i:                                      ; preds = %.preheader.i
  br i1 %i.ajt, label %.lr.ph293.split.us.i, label %.lr.ph293.split.i

.lr.ph293.split.us.i:                             ; preds = %.lr.ph293.i
  br i1 %i.aju, label %.lr.ph293.split.us.split.us.i, label %.lr.ph293.split.us.split.i

.lr.ph293.split.us.split.us.i:                    ; preds = %.lr.ph293.split.us.i, %bb.gl
  %i.ake = phi ptr [ %i.akj, %bb.gl ], [ %i.akc, %.lr.ph293.split.us.i ]
  %i.akf = phi ptr [ %i.akk, %bb.gl ], [ %i.akd, %.lr.ph293.split.us.i ]
  %.0292.us.us.i = phi i64 [ %i.akl, %bb.gl ], [ 0, %.lr.ph293.split.us.i ] ; 2 uses
  %i.akg = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %.0292.us.us.i
  %i.akh = load ptr, ptr %i.akg, align 8          ; 2 uses
  %i.aki = icmp eq ptr %i.akh, null
  br i1 %i.aki, label %bb.gl, label %bb.gk

bb.gk:                                            ; preds = %.lr.ph293.split.us.split.us.i
  call void @_ZdaPv(ptr noundef nonnull %i.akh) #35
  %.pre382.i = load ptr, ptr %i.ja, align 8
  %.pre383.i = load ptr, ptr %i.iy, align 8
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %.lr.ph293.split.us.split.us.i
  %i.akj = phi ptr [ %.pre383.i, %bb.gk ], [ %i.ake, %.lr.ph293.split.us.split.us.i ] ; 2 uses
  %i.akk = phi ptr [ %.pre382.i, %bb.gk ], [ %i.akf, %.lr.ph293.split.us.split.us.i ] ; 2 uses
  %i.akl = add nuw i64 %.0292.us.us.i, 1          ; 2 uses
  %i.akm = ptrtoint ptr %i.akk to i64
  %i.akn = ptrtoint ptr %i.akj to i64
  %i.ako = sub i64 %i.akm, %i.akn
  %i.akp = ashr exact i64 %i.ako, 4
  %i.akq = icmp ult i64 %i.akl, %i.akp
  br i1 %i.akq, label %.lr.ph293.split.us.split.us.i, label %._crit_edge294.i, !llvm.loop !141

.lr.ph293.split.us.split.i:                       ; preds = %.lr.ph293.split.us.i, %bb.gp
  %.0292.us.i = phi i64 [ %i.akx, %bb.gp ], [ 0, %.lr.ph293.split.us.i ] ; 3 uses
  %i.akr = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %.0292.us.i
  %i.aks = load ptr, ptr %i.akr, align 8          ; 2 uses
  %i.akt = icmp eq ptr %i.aks, null
  br i1 %i.akt, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %.lr.ph293.split.us.split.i
  call void @_ZdaPv(ptr noundef nonnull %i.aks) #35
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %.lr.ph293.split.us.split.i
  %i.aku = getelementptr inbounds nuw [8 x i8], ptr %.082.i, i64 %.0292.us.i
  %i.akv = load ptr, ptr %i.aku, align 8          ; 2 uses
  %i.akw = icmp eq ptr %i.akv, null
  br i1 %i.akw, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %bb.gn
  call void @_ZdaPv(ptr noundef nonnull %i.akv) #35
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %bb.gn
  %i.akx = add nuw i64 %.0292.us.i, 1             ; 2 uses
  %i.aky = load ptr, ptr %i.ja, align 8
  %i.akz = load ptr, ptr %i.iy, align 8
  %i.ala = ptrtoint ptr %i.aky to i64
  %i.alb = ptrtoint ptr %i.akz to i64
  %i.alc = sub i64 %i.ala, %i.alb
  %i.ald = ashr exact i64 %i.alc, 4
  %i.ale = icmp ult i64 %i.akx, %i.ald
  br i1 %i.ale, label %.lr.ph293.split.us.split.i, label %._crit_edge294.i, !llvm.loop !141

.preheader225.i:                                  ; preds = %bb.gq, %.preheader226.i
  %i.alf = phi ptr [ %i.ajy, %.preheader226.i ], [ %i.apg, %bb.gq ]
  %.078289.i = phi i64 [ 0, %.preheader226.i ], [ %i.alp, %bb.gq ] ; 5 uses
  %i.alg = trunc i64 %.078289.i to i32            ; 2 uses
  br label %bb.gr

._crit_edge290.i:                                 ; preds = %bb.gq
  %i.alh = add nuw i64 %.079291.i, 1              ; 2 uses
  %i.ali = load ptr, ptr %i.ja, align 8           ; 2 uses
  %i.alj = load ptr, ptr %i.iy, align 8           ; 2 uses
  %i.alk = ptrtoint ptr %i.ali to i64
  %i.all = ptrtoint ptr %i.alj to i64
  %i.alm = sub i64 %i.alk, %i.all
  %i.aln = ashr exact i64 %i.alm, 4
  %i.alo = icmp ult i64 %i.alh, %i.aln
  br i1 %i.alo, label %.preheader226.i, label %.preheader.i, !llvm.loop !142

bb.gq:                                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJjRKfEEERS0_DpOT_.exit.i
  %i.alp = add nuw i64 %.078289.i, 1              ; 2 uses
  %exitcond367.not.i = icmp eq i64 %i.alp, %i.ol
  br i1 %exitcond367.not.i, label %._crit_edge290.i, label %.preheader225.i, !llvm.loop !143

bb.gr:                                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJjRKfEEERS0_DpOT_.exit.i, %.preheader225.i
  %i.alq = phi ptr [ %i.alf, %.preheader225.i ], [ %i.apg, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJjRKfEEERS0_DpOT_.exit.i ] ; 5 uses
  %indvars.iv.i = phi i64 [ 0, %.preheader225.i ], [ %indvars.iv.next.i, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJjRKfEEERS0_DpOT_.exit.i ] ; 4 uses
  br i1 %i.ajt, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.alr = load ptr, ptr %i.aka, align 8
  %i.als = getelementptr inbounds nuw [4 x i8], ptr %i.alr, i64 %.078289.i
  %i.alt = getelementptr inbounds nuw i8, ptr %i.als, i64 %indvars.iv.i
  %i.alu = load i8, ptr %i.alt, align 1
  %i.alv = zext i8 %i.alu to i64
  br label %bb.gu

bb.gt:                                            ; preds = %bb.gr
  %i.alw = load ptr, ptr %i.akb, align 8
  %i.alx = getelementptr inbounds nuw [8 x i8], ptr %i.alw, i64 %.078289.i
  %i.aly = getelementptr inbounds nuw [2 x i8], ptr %i.alx, i64 %indvars.iv.i
  %i.alz = load i16, ptr %i.aly, align 2
  %i.ama = zext i16 %i.alz to i64
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %bb.gs
  %i.amb = phi i64 [ %i.alv, %bb.gs ], [ %i.ama, %bb.gt ] ; 4 uses
end_hunk_5
begin_hunk_6_@_ZN5glTF28Accessor11ExtractDataIA16_fEEmRPT_PKSt6vectorIjSaIjEE:bb.a
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = sub i64 %i.dw, %i.dx
  %i.dz = ashr exact i64 %i.dy, 3
  %i.ea = icmp ugt i64 %i.dz, %i.ds
  br i1 %i.ea, label %bb.ah, label %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.thread.i

bb.ah:                                            ; preds = %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.i86
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.ds
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 288
  %i.ee = load i64, ptr %i.ed, align 8
  br label %_ZN5glTF28Accessor14GetMaxByteSizeEv.exit

_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.thread.i: ; preds = %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.i86, %bb.ag
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.eg = load ptr, ptr %i.ef, align 8            ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 72
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = load ptr, ptr %i.eh, align 8
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = sub i64 %i.el, %i.em
  br label %_ZN5glTF28Accessor14GetMaxByteSizeEv.exit

_ZN5glTF28Accessor14GetMaxByteSizeEv.exit:        ; preds = %bb.af, %bb.ah, %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.thread.i
  %.0.i = phi i64 [ %i.dn, %bb.af ], [ %i.ee, %bb.ah ], [ %i.en, %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.thread.i ] ; 3 uses
  store i64 %.0.i, ptr %i.c, align 8
  %i.eo = icmp ugt i64 %i.cd, 288230376151711743
  %i.ep = shl i64 %i.cd, 6
  %i.eq = select i1 %i.eo, i64 -1, i64 %i.ep
  %i.er = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.eq) #37 ; 2 uses
  store ptr %i.er, ptr %1, align 8
  br i1 %.not70, label %bb.ap, label %bb.ai

bb.ai:                                            ; preds = %_ZN5glTF28Accessor14GetMaxByteSizeEv.exit
  %.not111 = icmp eq i64 %i.cd, 0
  br i1 %.not111, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ai
  %i.es = udiv i64 %.0.i, %i.cz
  %i.et = and i64 %i.es, 4294967295
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph, %bb.ao
  %.051108 = phi i64 [ 0, %.lr.ph ], [ %i.fm, %bb.ao ] ; 3 uses
  %i.eu = load ptr, ptr %2, align 8
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %.051108
  %i.ew = load i32, ptr %i.ev, align 4
  %i.ex = zext i32 %i.ew to i64                   ; 2 uses
  %.not73 = icmp samesign ugt i64 %i.et, %i.ex
  %i.ey = mul i64 %i.cz, %i.ex                    ; 2 uses
  br i1 %.not73, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ez = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  store i64 %i.ey, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZN5glTF226getContextForErrorMessagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %i.fa, ptr noundef nonnull align 8 dereferenceable(32) %i.fb)
          to label %bb.al unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.thread

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN17DeadlyImportErrorC2IJRA20_KcmRA12_S1_RKmRA5_S1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ez, ptr noundef nonnull align 1 dereferenceable(20) @.str.315, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 1 dereferenceable(12) @.str.316, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(5) @.str.314, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %bb.al
  invoke void @__cxa_throw(ptr nonnull %i.ez, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.ay unwind label %bb.an

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.thread: ; preds = %bb.ak
  %i.fc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  br label %.sink.split

bb.an:                                            ; preds = %bb.am, %bb.al
  %.047 = phi i1 [ false, %bb.am ], [ true, %bb.al ] ; 2 uses
  %i.fd = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fe = load ptr, ptr %6, align 8               ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.fg = icmp eq ptr %i.fe, %i.ff
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %bb.an
  %i.fh = load i64, ptr %i.ff, align 8
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fi) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  br i1 %.047, label %.sink.split, label %bb.aw

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  br i1 %.047, label %.sink.split, label %bb.aw

bb.ao:                                            ; preds = %bb.aj
  %i.fj = load ptr, ptr %1, align 8
  %i.fk = getelementptr inbounds nuw [64 x i8], ptr %i.fj, i64 %.051108
  %i.fl = getelementptr inbounds nuw i8, ptr %.3.i, i64 %i.ey
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.fk, ptr nonnull align 1 %i.fl, i64 %i.cx, i1 false)
  %i.fm = add nuw i64 %.051108, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.fm, %i.cd
  br i1 %exitcond.not, label %.loopexit, label %bb.aj, !llvm.loop !170

bb.ap:                                            ; preds = %_ZN5glTF28Accessor14GetMaxByteSizeEv.exit
  %i.fn = mul i64 %i.cz, %i.cd                    ; 2 uses
  %i.fo = icmp ugt i64 %i.fn, %.0.i
  br i1 %i.fo, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %bb.ap
  %i.fp = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  store i64 %i.fn, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZN5glTF226getContextForErrorMessagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %i.fq, ptr noundef nonnull align 8 dereferenceable(32) %i.fr)
          to label %bb.ar unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN17DeadlyImportErrorC2IJRA20_KcmRA12_S1_RKmRA5_S1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.fp, ptr noundef nonnull align 1 dereferenceable(20) @.str.317, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 1 dereferenceable(12) @.str.316, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(5) @.str.314, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %bb.ar
  invoke void @__cxa_throw(ptr nonnull %i.fp, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.ay unwind label %bb.at

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread: ; preds = %bb.aq
  %i.fs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  br label %.sink.split

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.046 = phi i1 [ false, %bb.as ], [ true, %bb.ar ] ; 2 uses
  %i.ft = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fu = load ptr, ptr %7, align 8               ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.fw = icmp eq ptr %i.fu, %i.fv
  br i1 %i.fw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90: ; preds = %bb.at
  %i.fx = load i64, ptr %i.fv, align 8
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fy) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  br i1 %.046, label %.sink.split, label %bb.aw

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92: ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  br i1 %.046, label %.sink.split, label %bb.aw

bb.au:                                            ; preds = %bb.ap
  %i.fz = icmp eq i32 %i.cw, 64
  %i.ga = icmp eq i64 %i.cz, 64
  %or.cond = and i1 %i.ga, %i.fz
  br i1 %or.cond, label %bb.av, label %.preheader

.preheader:                                       ; preds = %bb.au
  %.not112 = icmp eq i64 %i.cd, 0
  br i1 %.not112, label %.loopexit, label %.lr.ph110.preheader

.lr.ph110.preheader:                              ; preds = %.preheader
  %xtraiter = and i64 %i.cd, 1
  %i.gb = icmp eq i64 %i.cd, 1
  br i1 %i.gb, label %.lr.ph110.epil.preheader, label %.lr.ph110.preheader.new

.lr.ph110.preheader.new:                          ; preds = %.lr.ph110.preheader
  %unroll_iter = and i64 %i.cd, -2
  br label %.lr.ph110

bb.av:                                            ; preds = %bb.au
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.er, ptr nonnull align 1 %.3.i, i64 %i.cy, i1 false)
  br label %.loopexit

.lr.ph110:                                        ; preds = %.lr.ph110, %.lr.ph110.preheader.new
  %.0109 = phi i64 [ 0, %.lr.ph110.preheader.new ], [ %i.gl, %.lr.ph110 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph110.preheader.new ], [ %niter.next.1, %.lr.ph110 ]
  %i.gc = load ptr, ptr %1, align 8
  %i.gd = getelementptr inbounds nuw [64 x i8], ptr %i.gc, i64 %.0109
  %i.ge = mul i64 %.0109, %i.cz
  %i.gf = getelementptr inbounds nuw i8, ptr %.3.i, i64 %i.ge
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.gd, ptr nonnull align 1 %i.gf, i64 %i.cx, i1 false)
  %i.gg = or disjoint i64 %.0109, 1               ; 2 uses
  %i.gh = load ptr, ptr %1, align 8
  %i.gi = getelementptr inbounds nuw [64 x i8], ptr %i.gh, i64 %i.gg
  %i.gj = mul i64 %i.gg, %i.cz
  %i.gk = getelementptr inbounds nuw i8, ptr %.3.i, i64 %i.gj
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.gi, ptr nonnull align 1 %i.gk, i64 %i.cx, i1 false)
  %i.gl = add nuw i64 %.0109, 2                   ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph110, !llvm.loop !171

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph110
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph110.epil.preheader

.lr.ph110.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph110.preheader
  %.0109.epil.init = phi i64 [ 0, %.lr.ph110.preheader ], [ %i.gl, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod153 = trunc i64 %i.cd to i1
  tail call void @llvm.assume(i1 %lcmp.mod153)
  %i.gm = load ptr, ptr %1, align 8
  %i.gn = getelementptr inbounds nuw [64 x i8], ptr %i.gm, i64 %.0109.epil.init
  %i.go = mul i64 %.0109.epil.init, %i.cz
  %i.gp = getelementptr inbounds nuw i8, ptr %.3.i, i64 %i.go
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.gn, ptr nonnull align 1 %i.gp, i64 %i.cx, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ao, %.lr.ph110.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.ai, %.preheader, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  ret i64 %i.cd

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87
  %.sink = phi ptr [ %i.ez, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89 ], [ %i.ez, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87 ], [ %i.ez, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.thread ], [ %i.fp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90 ], [ %i.fp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread ], [ %i.fp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92 ]
  %.pn74.pn.ph = phi { ptr, i32 } [ %i.fd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89 ], [ %i.fd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87 ], [ %i.fc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.thread ], [ %i.ft, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90 ], [ %i.fs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread ], [ %i.ft, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92 ]
  call void @__cxa_free_exception(ptr %.sink) #34
  br label %bb.aw

bb.aw:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92
  %.pn74.pn = phi { ptr, i32 } [ %i.ft, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92 ], [ %i.fd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87 ], [ %i.ft, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90 ], [ %i.fd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89 ], [ %.pn74.pn.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  br label %bb.ax

bb.ax:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, %bb.ad, %bb.aw
  %.pn77.pn = phi { ptr, i32 } [ %.pn77100, %bb.ad ], [ %i.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83 ], [ %.pn74.pn, %bb.aw ], [ %i.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %common.resume

bb.ay:                                            ; preds = %bb.as, %bb.am, %bb.ab, %bb.m
  unreachable
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.264) #36
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #34 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 %i.d, ptr %i.a, align 8
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8
  %i.g = load i64, ptr %i.a, align 8
  store i64 %i.g, ptr %i.b, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1
  store i8 %i.i, ptr %i.h, align 1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8
  %i.l = load ptr, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8          ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #35
  br label %_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !167

_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8
  br label %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorI14aiVertexWeightSaIS1_EESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #35
  br label %_ZNSt12_Vector_baseISt6vectorI14aiVertexWeightSaIS1_EESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorI14aiVertexWeightSaIS1_EESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN10aiMetadata3AddIfEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 5 uses
  %i.b = add i32 %i.a, 1                          ; 2 uses
  %i.c = zext i32 %i.b to i64                     ; 3 uses
  %i.d = mul nuw nsw i64 %i.c, 1028               ; 2 uses
  %i.e = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.d) #37 ; 5 uses
  %i.f = icmp eq i32 %i.b, 0
  br i1 %i.f, label %.loopexit.thread, label %bb.b

.loopexit.thread:                                 ; preds = %bb.a
  %i.g = tail call noalias noundef nonnull ptr @_Znam(i64 noundef 0) #37
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i64 %i.d, -1028                  ; 2 uses
  %i.i = urem i64 %i.h, 1028
  %i.j = sub nuw nsw i64 %i.h, %i.i
  %i.k = add nsw i64 %i.j, 1028
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.e, i8 0, i64 %i.k, i1 false)
  %i.l = shl nuw nsw i64 %i.c, 4                  ; 2 uses
  %i.m = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.l) #37 ; 5 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.c
  %i.o = add nsw i64 %i.l, -16                    ; 2 uses
  %i.p = lshr exact i64 %i.o, 4
  %i.q = add nuw nsw i64 %i.p, 1
  %xtraiter = and i64 %i.q, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.b, %.prol.preheader
  %i.r = phi ptr [ %i.t, %.prol.preheader ], [ %i.m, %bb.b ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.b ]
  store i32 10, ptr %i.r, align 8
end_hunk_6
begin_hunk_7_@_Z14CreateNodeAnimRN5glTF25AssetERNS_4NodeER17AnimationSamplers:bb.a
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.q, i64 %i.s, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.y = load i64, ptr %i.a, align 8, !noalias !176 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.y, ptr %i.z, align 8, !alias.scope !176
  %i.aa = load ptr, ptr %3, align 8, !alias.scope !176
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34, !noalias !176
  %i.ac = load i64, ptr %i.z, align 8             ; 5 uses
  %i.ad = icmp ugt i64 %i.ac, 1023
  %.pre = load ptr, ptr %3, align 8               ; 3 uses
  br i1 %i.ad, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = trunc nuw nsw i64 %i.ac to i32
  store i32 %i.ae, ptr %i.h, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.af, ptr align 1 %.pre, i64 %i.ac, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ac
  store i8 0, ptr %i.ag, align 1
  br label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.e, %bb.d
  %i.ah = icmp eq ptr %.pre, %i.p
  br i1 %i.ah, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ai = icmp ult i64 %i.ac, 16
  call void @llvm.assume(i1 %i.ai)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.aj = load i64, ptr %i.p, align 8
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ak) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.al = load ptr, ptr %2, align 8               ; 6 uses
  %.not = icmp eq ptr %i.al, null
  br i1 %.not, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.am = load ptr, ptr %i.al, align 8            ; 3 uses
  %.not.i = icmp eq ptr %i.am, null
  br i1 %.not.i, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit.thread, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit

_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit: ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ao = load i32, ptr %i.an, align 8
  %i.ap = zext i32 %i.ao to i64                   ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = load ptr, ptr %i.am, align 8
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 3
  %i.ax = icmp ugt i64 %i.aw, %i.ap
  br i1 %i.ax, label %bb.g, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit.thread

bb.g:                                             ; preds = %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.az = load ptr, ptr %i.ay, align 8            ; 3 uses
  %.not.i153 = icmp eq ptr %i.az, null
  br i1 %.not.i153, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit.thread, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit154

_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit154: ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.bb = load i32, ptr %i.ba, align 8
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = load ptr, ptr %i.az, align 8
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = ashr exact i64 %i.bi, 3
  %i.bk = icmp ugt i64 %i.bj, %i.bc
  br i1 %i.bk, label %bb.h, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit.thread

bb.h:                                             ; preds = %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  store ptr null, ptr %i.b, align 8
  %i.bl = load ptr, ptr %i.al, align 8
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.ap
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = invoke noundef i64 @_ZN5glTF28Accessor11ExtractDataIfEEmRPT_PKSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(376) %i.bo, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef null)
          to label %bb.i unwind label %bb.n       ; 0 uses

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  store ptr null, ptr %i.c, align 8
  %i.bq = load ptr, ptr %2, align 8               ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bu = load i32, ptr %i.bt, align 8
  %i.bv = zext i32 %i.bu to i64
  %i.bw = load ptr, ptr %i.bs, align 8
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bv
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = invoke noundef i64 @_ZN5glTF28Accessor11ExtractDataI5vec4fEEmRPT_PKSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(376) %i.by, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef null)
          to label %bb.j unwind label %bb.o       ; 6 uses

bb.j:                                             ; preds = %bb.i
  %i.ca = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.bz, i64 12) ; 2 uses
  %i.cb = extractvalue { i64, i1 } %i.ca, 1
  %i.cc = extractvalue { i64, i1 } %i.ca, 0       ; 2 uses
  %i.cd = select i1 %i.cb, i64 -1, i64 %i.cc
  %i.ce = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cd) #37
          to label %bb.k unwind label %bb.p       ; 6 uses

bb.k:                                             ; preds = %bb.j
  %i.cf = icmp eq i64 %i.bz, 0
  br i1 %i.cf, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.cg = add i64 %i.cc, -12                      ; 2 uses
  %i.ch = urem i64 %i.cg, 12
  %i.ci = sub nuw i64 %i.cg, %i.ch
  %i.cj = add i64 %i.ci, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ce, i8 0, i64 %i.cj, i1 false)
  %.pre198 = load ptr, ptr %i.c, align 8          ; 5 uses
  %xtraiter = and i64 %i.bz, 1
  %i.ck = icmp eq i64 %i.bz, 1
  br i1 %i.ck, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.bz, -2
  br label %bb.q

._crit_edge:                                      ; preds = %bb.k
  %.pre198224 = load ptr, ptr %i.c, align 8       ; 2 uses
  %i.cl = icmp eq ptr %.pre198224, null
  br i1 %i.cl, label %bb.r, label %._crit_edge.thread

bb.l:                                             ; preds = %.noexc.i.i
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %bb.bg

bb.m:                                             ; preds = %bb.bh, %bb.ap, %bb.z
  %i.cn = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bg

bb.n:                                             ; preds = %bb.h
  %i.co = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.y

bb.o:                                             ; preds = %bb.i
  %i.cp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.x

bb.p:                                             ; preds = %bb.r, %bb.j
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.x

bb.q:                                             ; preds = %bb.q, %.lr.ph.new
  %.0133171 = phi i64 [ 0, %.lr.ph.new ], [ %i.dk, %bb.q ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.q ]
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %.pre198, i64 %.0133171 ; 3 uses
  %i.cs = load float, ptr %i.cr, align 4
  %i.ct = getelementptr inbounds nuw [12 x i8], ptr %i.ce, i64 %.0133171 ; 3 uses
  store float %i.cs, ptr %i.ct, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %i.cv = load float, ptr %i.cu, align 4
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  store float %i.cv, ptr %i.cw, align 4
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cy = load float, ptr %i.cx, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store float %i.cy, ptr %i.cz, align 4
  %i.da = or disjoint i64 %.0133171, 1            ; 2 uses
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %.pre198, i64 %i.da ; 3 uses
  %i.dc = load float, ptr %i.db, align 4
  %i.dd = getelementptr inbounds nuw [12 x i8], ptr %i.ce, i64 %i.da ; 3 uses
  store float %i.dc, ptr %i.dd, align 4
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %i.df = load float, ptr %i.de, align 4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  store float %i.df, ptr %i.dg, align 4
  %i.dh = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.di = load float, ptr %i.dh, align 4
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store float %i.di, ptr %i.dj, align 4
  %i.dk = add nuw i64 %.0133171, 2                ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.thread.loopexit.unr-lcssa, label %bb.q, !llvm.loop !179

._crit_edge.thread.loopexit.unr-lcssa:            ; preds = %bb.q
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.thread, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.thread.loopexit.unr-lcssa, %.lr.ph
  %.0133171.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.dk, %._crit_edge.thread.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod228 = trunc i64 %i.bz to i1
  call void @llvm.assume(i1 %lcmp.mod228)
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %.pre198, i64 %.0133171.epil.init ; 3 uses
  %i.dm = load float, ptr %i.dl, align 4
  %i.dn = getelementptr inbounds nuw [12 x i8], ptr %i.ce, i64 %.0133171.epil.init ; 3 uses
  store float %i.dm, ptr %i.dn, align 4
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %i.dp = load float, ptr %i.do, align 4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  store float %i.dp, ptr %i.dq, align 4
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.ds = load float, ptr %i.dr, align 4
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store float %i.ds, ptr %i.dt, align 4
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.epil.preheader, %._crit_edge.thread.loopexit.unr-lcssa, %._crit_edge
  %.pre198225227 = phi ptr [ %.pre198224, %._crit_edge ], [ %.pre198, %._crit_edge.thread.loopexit.unr-lcssa ], [ %.pre198, %.epil.preheader ]
  call void @_ZdaPv(ptr noundef nonnull %.pre198225227) #35
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.du = load ptr, ptr %2, align 8               ; 3 uses
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dx = load i32, ptr %i.dw, align 8
  %i.dy = zext i32 %i.dx to i64
  %i.dz = load ptr, ptr %i.dv, align 8
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.dy
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 296
  %i.ed = load i64, ptr %i.ec, align 8            ; 3 uses
  %i.ee = trunc i64 %i.ed to i32                  ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.h, i64 1028
  store i32 %i.ee, ptr %i.ef, align 4
  %i.eg = and i64 %i.ed, 4294967295               ; 3 uses
  %i.eh = mul nuw nsw i64 %i.eg, 24
  %i.ei = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.eh) #37
          to label %bb.s unwind label %bb.p       ; 4 uses

bb.s:                                             ; preds = %bb.r
  %i.ej = icmp eq i64 %i.eg, 0
  br i1 %i.ej, label %.loopexit169, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ek = getelementptr inbounds nuw [24 x i8], ptr %i.ei, i64 %i.eg
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %bb.t
  %i.el = phi ptr [ %i.ei, %bb.t ], [ %i.en, %bb.u ] ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.el, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.em, align 4
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 24 ; 2 uses
  %i.eo = icmp eq ptr %i.en, %i.ek
  br i1 %i.eo, label %.loopexit169, label %bb.u

.loopexit169:                                     ; preds = %bb.u, %bb.s
  %i.ep = getelementptr inbounds nuw i8, ptr %i.h, i64 1032
  store ptr %i.ei, ptr %i.ep, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.du, i64 32 ; 2 uses
  %.not188 = icmp eq i32 %i.ee, 0
  br i1 %.not188, label %._crit_edge176, label %.lr.ph175.preheader

.lr.ph175.preheader:                              ; preds = %.loopexit169
  %i.er = load i32, ptr %i.eq, align 8
  %i.es = icmp eq i32 %i.er, 2
  %i.et = zext i1 %i.es to i32
  %i.eu = load ptr, ptr %i.b, align 8
  %i.ev = and i64 %i.ed, 4294967295
  br label %.lr.ph175

._crit_edge176:                                   ; preds = %.lr.ph175, %.loopexit169
  %i.ew = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %bb.w, label %bb.v

.lr.ph175:                                        ; preds = %.lr.ph175.preheader, %.lr.ph175
  %indvars.iv = phi i64 [ 0, %.lr.ph175.preheader ], [ %indvars.iv.next, %.lr.ph175 ] ; 3 uses
  %.0132172 = phi i32 [ %i.et, %.lr.ph175.preheader ], [ %i.fj, %.lr.ph175 ] ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %indvars.iv
  %i.ez = load float, ptr %i.ey, align 4
  %i.fa = fmul float %i.ez, 1.000000e+03
  %i.fb = fpext float %i.fa to double
  %i.fc = getelementptr inbounds nuw [24 x i8], ptr %i.ei, i64 %indvars.iv ; 2 uses
  store double %i.fb, ptr %i.fc, align 8
  %i.fd = zext i32 %.0132172 to i64
  %i.fe = getelementptr inbounds nuw [12 x i8], ptr %i.ce, i64 %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ff, ptr noundef nonnull align 4 dereferenceable(12) %i.fe, i64 12, i1 false)
  %i.fg = load i32, ptr %i.eq, align 8
  %i.fh = icmp eq i32 %i.fg, 2
  %i.fi = select i1 %i.fh, i32 3, i32 1
  %i.fj = add i32 %i.fi, %.0132172
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fk = icmp samesign ult i64 %indvars.iv.next, %i.ev
  br i1 %i.fk, label %.lr.ph175, label %._crit_edge176, !llvm.loop !180

bb.v:                                             ; preds = %._crit_edge176
  call void @_ZdaPv(ptr noundef nonnull %i.ew) #35
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge176, %bb.v
  call void @_ZdaPv(ptr noundef nonnull %i.ce) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  br label %bb.aa

bb.x:                                             ; preds = %bb.p, %bb.o
  %.pn148 = phi { ptr, i32 } [ %i.cq, %bb.p ], [ %i.cp, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.n
  %.pn148.pn = phi { ptr, i32 } [ %.pn148, %bb.x ], [ %i.co, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  br label %bb.bg

_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit.thread: ; preds = %bb.g, %bb.f, %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit154, %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 380
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.fn = load i8, ptr %i.fm, align 8, !range !19, !noundef !20
  %i.fo = trunc nuw i8 %i.fn to i1
  br i1 %i.fo, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit.thread
  %i.fp = getelementptr inbounds nuw i8, ptr %i.h, i64 1028
  store i32 1, ptr %i.fp, align 4
  %i.fq = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znam(i64 noundef 24) #37
          to label %.preheader168.preheader unwind label %bb.m ; 5 uses

.preheader168.preheader:                          ; preds = %bb.z
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 20
  store i32 1, ptr %i.fr, align 4
  %i.fs = getelementptr inbounds nuw i8, ptr %i.h, i64 1032
  store ptr %i.fq, ptr %i.fs, align 8
  store double 0.000000e+00, ptr %i.fq, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fu = load <2 x float>, ptr %i.fl, align 4
  store <2 x float> %i.fu, ptr %i.ft, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 388
  %i.fw = load float, ptr %i.fv, align 4
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  store float %i.fw, ptr %i.fx, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit.thread, %.preheader168.preheader, %bb.w
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.fz = load ptr, ptr %i.fy, align 8            ; 6 uses
  %.not149 = icmp eq ptr %i.fz, null
  br i1 %.not149, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit159.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ga = load ptr, ptr %i.fz, align 8            ; 3 uses
  %.not.i158 = icmp eq ptr %i.ga, null
  br i1 %.not.i158, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit159.thread, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit159

_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit159: ; preds = %bb.ab
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gc = load i32, ptr %i.gb, align 8
  %i.gd = zext i32 %i.gc to i64                   ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8
  %i.gg = load ptr, ptr %i.ga, align 8
  %i.gh = ptrtoint ptr %i.gf to i64
  %i.gi = ptrtoint ptr %i.gg to i64
  %i.gj = sub i64 %i.gh, %i.gi
  %i.gk = ashr exact i64 %i.gj, 3
  %i.gl = icmp ugt i64 %i.gk, %i.gd
  br i1 %i.gl, label %bb.ac, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit159.thread

bb.ac:                                            ; preds = %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit159
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.gn = load ptr, ptr %i.gm, align 8            ; 3 uses
  %.not.i160 = icmp eq ptr %i.gn, null
  br i1 %.not.i160, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit159.thread, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit161

_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit161: ; preds = %bb.ac
  %i.go = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  %i.gp = load i32, ptr %i.go, align 8
  %i.gq = zext i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8
  %i.gt = load ptr, ptr %i.gn, align 8
  %i.gu = ptrtoint ptr %i.gs to i64
  %i.gv = ptrtoint ptr %i.gt to i64
  %i.gw = sub i64 %i.gu, %i.gv
  %i.gx = ashr exact i64 %i.gw, 3
  %i.gy = icmp ugt i64 %i.gx, %i.gq
  br i1 %i.gy, label %bb.ad, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit159.thread

end_hunk_7
begin_hunk_8_@_ZN5glTF28Accessor11ExtractDataIfEEmRPT_PKSt6vectorIjSaIjEE:bb.a
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = sub i64 %i.dw, %i.dx
  %i.dz = ashr exact i64 %i.dy, 3
  %i.ea = icmp ugt i64 %i.dz, %i.ds
  br i1 %i.ea, label %bb.ah, label %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.thread.i

bb.ah:                                            ; preds = %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.i86
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.ds
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 288
  %i.ee = load i64, ptr %i.ed, align 8
  br label %_ZN5glTF28Accessor14GetMaxByteSizeEv.exit

_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.thread.i: ; preds = %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.i86, %bb.ag
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.eg = load ptr, ptr %i.ef, align 8            ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 72
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = load ptr, ptr %i.eh, align 8
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = sub i64 %i.el, %i.em
  br label %_ZN5glTF28Accessor14GetMaxByteSizeEv.exit

_ZN5glTF28Accessor14GetMaxByteSizeEv.exit:        ; preds = %bb.af, %bb.ah, %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.thread.i
  %.0.i = phi i64 [ %i.dn, %bb.af ], [ %i.ee, %bb.ah ], [ %i.en, %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.thread.i ] ; 3 uses
  store i64 %.0.i, ptr %i.c, align 8
  %i.eo = icmp ugt i64 %i.cd, 4611686018427387903
  %i.ep = shl i64 %i.cd, 2
  %i.eq = select i1 %i.eo, i64 -1, i64 %i.ep
  %i.er = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.eq) #37 ; 2 uses
  store ptr %i.er, ptr %1, align 8
  br i1 %.not70, label %bb.ap, label %bb.ai

bb.ai:                                            ; preds = %_ZN5glTF28Accessor14GetMaxByteSizeEv.exit
  %.not111 = icmp eq i64 %i.cd, 0
  br i1 %.not111, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ai
  %i.es = udiv i64 %.0.i, %i.cz
  %i.et = and i64 %i.es, 4294967295
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph, %bb.ao
  %.051108 = phi i64 [ 0, %.lr.ph ], [ %i.fm, %bb.ao ] ; 3 uses
  %i.eu = load ptr, ptr %2, align 8
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %.051108
  %i.ew = load i32, ptr %i.ev, align 4
  %i.ex = zext i32 %i.ew to i64                   ; 2 uses
  %.not73 = icmp samesign ugt i64 %i.et, %i.ex
  %i.ey = mul i64 %i.cz, %i.ex                    ; 2 uses
  br i1 %.not73, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ez = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  store i64 %i.ey, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZN5glTF226getContextForErrorMessagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %i.fa, ptr noundef nonnull align 8 dereferenceable(32) %i.fb)
          to label %bb.al unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.thread

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN17DeadlyImportErrorC2IJRA20_KcmRA12_S1_RKmRA5_S1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ez, ptr noundef nonnull align 1 dereferenceable(20) @.str.315, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 1 dereferenceable(12) @.str.316, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(5) @.str.314, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %bb.al
  invoke void @__cxa_throw(ptr nonnull %i.ez, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.ay unwind label %bb.an

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.thread: ; preds = %bb.ak
  %i.fc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  br label %.sink.split

bb.an:                                            ; preds = %bb.am, %bb.al
  %.047 = phi i1 [ false, %bb.am ], [ true, %bb.al ] ; 2 uses
  %i.fd = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fe = load ptr, ptr %6, align 8               ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.fg = icmp eq ptr %i.fe, %i.ff
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %bb.an
  %i.fh = load i64, ptr %i.ff, align 8
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fi) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  br i1 %.047, label %.sink.split, label %bb.aw

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  br i1 %.047, label %.sink.split, label %bb.aw

bb.ao:                                            ; preds = %bb.aj
  %i.fj = load ptr, ptr %1, align 8
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %.051108
  %i.fl = getelementptr inbounds nuw i8, ptr %.3.i, i64 %i.ey
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.fk, ptr nonnull align 1 %i.fl, i64 %i.cx, i1 false)
  %i.fm = add nuw i64 %.051108, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.fm, %i.cd
  br i1 %exitcond.not, label %.loopexit, label %bb.aj, !llvm.loop !184

bb.ap:                                            ; preds = %_ZN5glTF28Accessor14GetMaxByteSizeEv.exit
  %i.fn = mul i64 %i.cz, %i.cd                    ; 2 uses
  %i.fo = icmp ugt i64 %i.fn, %.0.i
  br i1 %i.fo, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %bb.ap
  %i.fp = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  store i64 %i.fn, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZN5glTF226getContextForErrorMessagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %i.fq, ptr noundef nonnull align 8 dereferenceable(32) %i.fr)
          to label %bb.ar unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN17DeadlyImportErrorC2IJRA20_KcmRA12_S1_RKmRA5_S1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.fp, ptr noundef nonnull align 1 dereferenceable(20) @.str.317, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 1 dereferenceable(12) @.str.316, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(5) @.str.314, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %bb.ar
  invoke void @__cxa_throw(ptr nonnull %i.fp, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.ay unwind label %bb.at

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread: ; preds = %bb.aq
  %i.fs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  br label %.sink.split

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.046 = phi i1 [ false, %bb.as ], [ true, %bb.ar ] ; 2 uses
  %i.ft = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fu = load ptr, ptr %7, align 8               ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.fw = icmp eq ptr %i.fu, %i.fv
  br i1 %i.fw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90: ; preds = %bb.at
  %i.fx = load i64, ptr %i.fv, align 8
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fy) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  br i1 %.046, label %.sink.split, label %bb.aw

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92: ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  br i1 %.046, label %.sink.split, label %bb.aw

bb.au:                                            ; preds = %bb.ap
  %i.fz = icmp eq i32 %i.cw, 4
  %i.ga = icmp eq i64 %i.cz, 4
  %or.cond = and i1 %i.ga, %i.fz
  br i1 %or.cond, label %bb.av, label %.preheader

.preheader:                                       ; preds = %bb.au
  %.not112 = icmp eq i64 %i.cd, 0
  br i1 %.not112, label %.loopexit, label %.lr.ph110.preheader

.lr.ph110.preheader:                              ; preds = %.preheader
  %xtraiter = and i64 %i.cd, 1
  %i.gb = icmp eq i64 %i.cd, 1
  br i1 %i.gb, label %.lr.ph110.epil.preheader, label %.lr.ph110.preheader.new

.lr.ph110.preheader.new:                          ; preds = %.lr.ph110.preheader
  %unroll_iter = and i64 %i.cd, -2
  br label %.lr.ph110

bb.av:                                            ; preds = %bb.au
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.er, ptr nonnull align 1 %.3.i, i64 %i.cy, i1 false)
  br label %.loopexit

.lr.ph110:                                        ; preds = %.lr.ph110, %.lr.ph110.preheader.new
  %.0109 = phi i64 [ 0, %.lr.ph110.preheader.new ], [ %i.gl, %.lr.ph110 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph110.preheader.new ], [ %niter.next.1, %.lr.ph110 ]
  %i.gc = load ptr, ptr %1, align 8
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %.0109
  %i.ge = mul i64 %.0109, %i.cz
  %i.gf = getelementptr inbounds nuw i8, ptr %.3.i, i64 %i.ge
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.gd, ptr nonnull align 1 %i.gf, i64 %i.cx, i1 false)
  %i.gg = or disjoint i64 %.0109, 1               ; 2 uses
  %i.gh = load ptr, ptr %1, align 8
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %i.gg
  %i.gj = mul i64 %i.gg, %i.cz
  %i.gk = getelementptr inbounds nuw i8, ptr %.3.i, i64 %i.gj
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.gi, ptr nonnull align 1 %i.gk, i64 %i.cx, i1 false)
  %i.gl = add nuw i64 %.0109, 2                   ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph110, !llvm.loop !185

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph110
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph110.epil.preheader

.lr.ph110.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph110.preheader
  %.0109.epil.init = phi i64 [ 0, %.lr.ph110.preheader ], [ %i.gl, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod153 = trunc i64 %i.cd to i1
  tail call void @llvm.assume(i1 %lcmp.mod153)
  %i.gm = load ptr, ptr %1, align 8
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %.0109.epil.init
  %i.go = mul i64 %.0109.epil.init, %i.cz
  %i.gp = getelementptr inbounds nuw i8, ptr %.3.i, i64 %i.go
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.gn, ptr nonnull align 1 %i.gp, i64 %i.cx, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ao, %.lr.ph110.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.ai, %.preheader, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  ret i64 %i.cd

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87
  %.sink = phi ptr [ %i.ez, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89 ], [ %i.ez, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87 ], [ %i.ez, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.thread ], [ %i.fp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90 ], [ %i.fp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread ], [ %i.fp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92 ]
  %.pn74.pn.ph = phi { ptr, i32 } [ %i.fd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89 ], [ %i.fd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87 ], [ %i.fc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.thread ], [ %i.ft, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90 ], [ %i.fs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread ], [ %i.ft, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92 ]
  call void @__cxa_free_exception(ptr %.sink) #34
  br label %bb.aw

bb.aw:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92
  %.pn74.pn = phi { ptr, i32 } [ %i.ft, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92 ], [ %i.fd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87 ], [ %i.ft, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90 ], [ %i.fd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89 ], [ %.pn74.pn.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  br label %bb.ax

bb.ax:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, %bb.ad, %bb.aw
  %.pn77.pn = phi { ptr, i32 } [ %.pn77100, %bb.ad ], [ %i.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83 ], [ %.pn74.pn, %bb.aw ], [ %i.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %common.resume

bb.ay:                                            ; preds = %bb.as, %bb.am, %bb.ab, %bb.m
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5glTF28Accessor11ExtractDataI5vec4fEEmRPT_PKSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not21.i = icmp eq ptr %i.g, null
  br i1 %.not21.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 296
  %i.i = load ptr, ptr %i.h, align 8
  br label %_ZN5glTF28Accessor10GetPointerEv.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not22.i = icmp eq ptr %i.k, null
  br i1 %.not22.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load ptr, ptr %i.l, align 8
  br label %_ZN5glTF28Accessor10GetPointerEv.exit

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZN5glTF28Accessor10GetPointerEv.exit.thread, label %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.i

_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.i: ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.q = load i32, ptr %i.p, align 8
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3
  %i.z = icmp ugt i64 %i.y, %i.r
  br i1 %i.z, label %bb.f, label %_ZN5glTF28Accessor10GetPointerEv.exit.thread

bb.f:                                             ; preds = %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.i
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.r
  %i.ab = load ptr, ptr %i.aa, align 8            ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 264
  %i.ad = load ptr, ptr %i.ac, align 8            ; 3 uses
  %.not.i18.i = icmp eq ptr %i.ad, null
  br i1 %.not.i18.i, label %_ZN5glTF28Accessor10GetPointerEv.exit.thread, label %_ZNK10glTFCommon3RefIN5glTF26BufferEEcvbEv.exit.i

_ZNK10glTFCommon3RefIN5glTF26BufferEEcvbEv.exit.i: ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 272
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 3
  %i.ao = icmp ugt i64 %i.an, %i.ag
  br i1 %i.ao, label %bb.g, label %_ZN5glTF28Accessor10GetPointerEv.exit.thread

bb.g:                                             ; preds = %_ZNK10glTFCommon3RefIN5glTF26BufferEEcvbEv.exit.i
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ag
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 296
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %_ZN5glTF28Accessor10GetPointerEv.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ab, i64 280
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = add i64 %i.aw, %i.au                    ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 288
  %i.az = load ptr, ptr %i.ay, align 8            ; 4 uses
  %.not16.i = icmp eq ptr %i.az, null
  br i1 %.not16.i, label %.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = load i64, ptr %i.az, align 8            ; 3 uses
  %.not17.i = icmp ult i64 %i.ax, %i.ba
  br i1 %.not17.i, label %.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = add i64 %i.bc, %i.ba
  %i.be = icmp ult i64 %i.ax, %i.bd
  br i1 %i.be, label %bb.k, label %.thread.i

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = sub i64 %i.ax, %i.ba
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bh
  br label %_ZN5glTF28Accessor10GetPointerEv.exit

.thread.i:                                        ; preds = %bb.j, %bb.i, %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ax
  br label %_ZN5glTF28Accessor10GetPointerEv.exit

_ZN5glTF28Accessor10GetPointerEv.exit:            ; preds = %bb.b, %bb.d, %bb.k, %.thread.i
  %.3.i = phi ptr [ %i.i, %bb.b ], [ %i.m, %bb.d ], [ %i.bi, %bb.k ], [ %i.bj, %.thread.i ] ; 6 uses
  %.not = icmp eq ptr %.3.i, null
  br i1 %.not, label %_ZN5glTF28Accessor10GetPointerEv.exit.thread, label %bb.p

_ZN5glTF28Accessor10GetPointerEv.exit.thread:     ; preds = %bb.f, %bb.e, %bb.g, %_ZNK10glTFCommon3RefIN5glTF26BufferEEcvbEv.exit.i, %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.i, %_ZN5glTF28Accessor10GetPointerEv.exit
  %i.bk = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZN5glTF226getContextForErrorMessagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %i.bm)
          to label %bb.l unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.l:                                             ; preds = %_ZN5glTF28Accessor10GetPointerEv.exit.thread
  invoke void @_ZN17DeadlyImportErrorC2IJRA47_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, ptr noundef nonnull align 1 dereferenceable(47) @.str.311, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @__cxa_throw(ptr nonnull %i.bk, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.ay unwind label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZN5glTF28Accessor10GetPointerEv.exit.thread
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  %.061 = phi i1 [ false, %bb.m ], [ true, %bb.l ] ; 2 uses
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bp = load ptr, ptr %4, align 8               ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
end_hunk_8
begin_hunk_9_@_ZN5glTF28Accessor11ExtractDataI5vec4fEEmRPT_PKSt6vectorIjSaIjEE:bb.a
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = sub i64 %i.dw, %i.dx
  %i.dz = ashr exact i64 %i.dy, 3
  %i.ea = icmp ugt i64 %i.dz, %i.ds
  br i1 %i.ea, label %bb.ah, label %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.thread.i

bb.ah:                                            ; preds = %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.i86
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.ds
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 288
  %i.ee = load i64, ptr %i.ed, align 8
  br label %_ZN5glTF28Accessor14GetMaxByteSizeEv.exit

_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.thread.i: ; preds = %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.i86, %bb.ag
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.eg = load ptr, ptr %i.ef, align 8            ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 72
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = load ptr, ptr %i.eh, align 8
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = sub i64 %i.el, %i.em
  br label %_ZN5glTF28Accessor14GetMaxByteSizeEv.exit

_ZN5glTF28Accessor14GetMaxByteSizeEv.exit:        ; preds = %bb.af, %bb.ah, %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.thread.i
  %.0.i = phi i64 [ %i.dn, %bb.af ], [ %i.ee, %bb.ah ], [ %i.en, %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.thread.i ] ; 3 uses
  store i64 %.0.i, ptr %i.c, align 8
  %i.eo = icmp ugt i64 %i.cd, 1152921504606846975
  %i.ep = shl i64 %i.cd, 4
  %i.eq = select i1 %i.eo, i64 -1, i64 %i.ep
  %i.er = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.eq) #37 ; 2 uses
  store ptr %i.er, ptr %1, align 8
  br i1 %.not70, label %bb.ap, label %bb.ai

bb.ai:                                            ; preds = %_ZN5glTF28Accessor14GetMaxByteSizeEv.exit
  %.not111 = icmp eq i64 %i.cd, 0
  br i1 %.not111, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ai
  %i.es = udiv i64 %.0.i, %i.cz
  %i.et = and i64 %i.es, 4294967295
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph, %bb.ao
  %.051108 = phi i64 [ 0, %.lr.ph ], [ %i.fm, %bb.ao ] ; 3 uses
  %i.eu = load ptr, ptr %2, align 8
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %.051108
  %i.ew = load i32, ptr %i.ev, align 4
  %i.ex = zext i32 %i.ew to i64                   ; 2 uses
  %.not73 = icmp samesign ugt i64 %i.et, %i.ex
  %i.ey = mul i64 %i.cz, %i.ex                    ; 2 uses
  br i1 %.not73, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ez = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  store i64 %i.ey, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZN5glTF226getContextForErrorMessagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %i.fa, ptr noundef nonnull align 8 dereferenceable(32) %i.fb)
          to label %bb.al unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.thread

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN17DeadlyImportErrorC2IJRA20_KcmRA12_S1_RKmRA5_S1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ez, ptr noundef nonnull align 1 dereferenceable(20) @.str.315, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 1 dereferenceable(12) @.str.316, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(5) @.str.314, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %bb.al
  invoke void @__cxa_throw(ptr nonnull %i.ez, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.ay unwind label %bb.an

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.thread: ; preds = %bb.ak
  %i.fc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  br label %.sink.split

bb.an:                                            ; preds = %bb.am, %bb.al
  %.047 = phi i1 [ false, %bb.am ], [ true, %bb.al ] ; 2 uses
  %i.fd = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fe = load ptr, ptr %6, align 8               ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.fg = icmp eq ptr %i.fe, %i.ff
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %bb.an
  %i.fh = load i64, ptr %i.ff, align 8
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fi) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  br i1 %.047, label %.sink.split, label %bb.aw

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  br i1 %.047, label %.sink.split, label %bb.aw

bb.ao:                                            ; preds = %bb.aj
  %i.fj = load ptr, ptr %1, align 8
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %i.fj, i64 %.051108
  %i.fl = getelementptr inbounds nuw i8, ptr %.3.i, i64 %i.ey
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.fk, ptr nonnull align 1 %i.fl, i64 %i.cx, i1 false)
  %i.fm = add nuw i64 %.051108, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.fm, %i.cd
  br i1 %exitcond.not, label %.loopexit, label %bb.aj, !llvm.loop !186

bb.ap:                                            ; preds = %_ZN5glTF28Accessor14GetMaxByteSizeEv.exit
  %i.fn = mul i64 %i.cz, %i.cd                    ; 2 uses
  %i.fo = icmp ugt i64 %i.fn, %.0.i
  br i1 %i.fo, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %bb.ap
  %i.fp = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  store i64 %i.fn, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZN5glTF226getContextForErrorMessagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %i.fq, ptr noundef nonnull align 8 dereferenceable(32) %i.fr)
          to label %bb.ar unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN17DeadlyImportErrorC2IJRA20_KcmRA12_S1_RKmRA5_S1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.fp, ptr noundef nonnull align 1 dereferenceable(20) @.str.317, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 1 dereferenceable(12) @.str.316, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(5) @.str.314, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %bb.ar
  invoke void @__cxa_throw(ptr nonnull %i.fp, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.ay unwind label %bb.at

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread: ; preds = %bb.aq
  %i.fs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  br label %.sink.split

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.046 = phi i1 [ false, %bb.as ], [ true, %bb.ar ] ; 2 uses
  %i.ft = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fu = load ptr, ptr %7, align 8               ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.fw = icmp eq ptr %i.fu, %i.fv
  br i1 %i.fw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90: ; preds = %bb.at
  %i.fx = load i64, ptr %i.fv, align 8
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fy) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  br i1 %.046, label %.sink.split, label %bb.aw

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92: ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  br i1 %.046, label %.sink.split, label %bb.aw

bb.au:                                            ; preds = %bb.ap
  %i.fz = icmp eq i32 %i.cw, 16
  %i.ga = icmp eq i64 %i.cz, 16
  %or.cond = and i1 %i.ga, %i.fz
  br i1 %or.cond, label %bb.av, label %.preheader

.preheader:                                       ; preds = %bb.au
  %.not112 = icmp eq i64 %i.cd, 0
  br i1 %.not112, label %.loopexit, label %.lr.ph110.preheader

.lr.ph110.preheader:                              ; preds = %.preheader
  %xtraiter = and i64 %i.cd, 1
  %i.gb = icmp eq i64 %i.cd, 1
  br i1 %i.gb, label %.lr.ph110.epil.preheader, label %.lr.ph110.preheader.new

.lr.ph110.preheader.new:                          ; preds = %.lr.ph110.preheader
  %unroll_iter = and i64 %i.cd, -2
  br label %.lr.ph110

bb.av:                                            ; preds = %bb.au
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.er, ptr nonnull align 1 %.3.i, i64 %i.cy, i1 false)
  br label %.loopexit

.lr.ph110:                                        ; preds = %.lr.ph110, %.lr.ph110.preheader.new
  %.0109 = phi i64 [ 0, %.lr.ph110.preheader.new ], [ %i.gl, %.lr.ph110 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph110.preheader.new ], [ %niter.next.1, %.lr.ph110 ]
  %i.gc = load ptr, ptr %1, align 8
  %i.gd = getelementptr inbounds nuw [16 x i8], ptr %i.gc, i64 %.0109
  %i.ge = mul i64 %.0109, %i.cz
  %i.gf = getelementptr inbounds nuw i8, ptr %.3.i, i64 %i.ge
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.gd, ptr nonnull align 1 %i.gf, i64 %i.cx, i1 false)
  %i.gg = or disjoint i64 %.0109, 1               ; 2 uses
  %i.gh = load ptr, ptr %1, align 8
  %i.gi = getelementptr inbounds nuw [16 x i8], ptr %i.gh, i64 %i.gg
  %i.gj = mul i64 %i.gg, %i.cz
  %i.gk = getelementptr inbounds nuw i8, ptr %.3.i, i64 %i.gj
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.gi, ptr nonnull align 1 %i.gk, i64 %i.cx, i1 false)
  %i.gl = add nuw i64 %.0109, 2                   ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph110, !llvm.loop !187

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph110
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph110.epil.preheader

.lr.ph110.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph110.preheader
  %.0109.epil.init = phi i64 [ 0, %.lr.ph110.preheader ], [ %i.gl, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod153 = trunc i64 %i.cd to i1
  tail call void @llvm.assume(i1 %lcmp.mod153)
  %i.gm = load ptr, ptr %1, align 8
  %i.gn = getelementptr inbounds nuw [16 x i8], ptr %i.gm, i64 %.0109.epil.init
  %i.go = mul i64 %.0109.epil.init, %i.cz
  %i.gp = getelementptr inbounds nuw i8, ptr %.3.i, i64 %i.go
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.gn, ptr nonnull align 1 %i.gp, i64 %i.cx, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ao, %.lr.ph110.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.ai, %.preheader, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  ret i64 %i.cd

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87
  %.sink = phi ptr [ %i.ez, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89 ], [ %i.ez, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87 ], [ %i.ez, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.thread ], [ %i.fp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90 ], [ %i.fp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread ], [ %i.fp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92 ]
  %.pn74.pn.ph = phi { ptr, i32 } [ %i.fd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89 ], [ %i.fd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87 ], [ %i.fc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.thread ], [ %i.ft, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90 ], [ %i.fs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread ], [ %i.ft, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92 ]
  call void @__cxa_free_exception(ptr %.sink) #34
  br label %bb.aw

bb.aw:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92
  %.pn74.pn = phi { ptr, i32 } [ %i.ft, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92 ], [ %i.fd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87 ], [ %i.ft, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90 ], [ %i.fd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89 ], [ %.pn74.pn.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  br label %bb.ax

bb.ax:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, %bb.ad, %bb.aw
  %.pn77.pn = phi { ptr, i32 } [ %.pn77100, %bb.ad ], [ %i.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83 ], [ %.pn74.pn, %bb.aw ], [ %i.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %common.resume

bb.ay:                                            ; preds = %bb.as, %bb.am, %bb.ab, %bb.m
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5glTF28Accessor11ExtractDataI13aiQuaterniontIfEEEmRPT_PKSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not21.i = icmp eq ptr %i.g, null
  br i1 %.not21.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 296
  %i.i = load ptr, ptr %i.h, align 8
  br label %_ZN5glTF28Accessor10GetPointerEv.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not22.i = icmp eq ptr %i.k, null
  br i1 %.not22.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load ptr, ptr %i.l, align 8
  br label %_ZN5glTF28Accessor10GetPointerEv.exit

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZN5glTF28Accessor10GetPointerEv.exit.thread, label %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.i

_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.i: ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.q = load i32, ptr %i.p, align 8
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3
  %i.z = icmp ugt i64 %i.y, %i.r
  br i1 %i.z, label %bb.f, label %_ZN5glTF28Accessor10GetPointerEv.exit.thread

bb.f:                                             ; preds = %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.i
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.r
  %i.ab = load ptr, ptr %i.aa, align 8            ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 264
  %i.ad = load ptr, ptr %i.ac, align 8            ; 3 uses
  %.not.i18.i = icmp eq ptr %i.ad, null
  br i1 %.not.i18.i, label %_ZN5glTF28Accessor10GetPointerEv.exit.thread, label %_ZNK10glTFCommon3RefIN5glTF26BufferEEcvbEv.exit.i

_ZNK10glTFCommon3RefIN5glTF26BufferEEcvbEv.exit.i: ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 272
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 3
  %i.ao = icmp ugt i64 %i.an, %i.ag
  br i1 %i.ao, label %bb.g, label %_ZN5glTF28Accessor10GetPointerEv.exit.thread

bb.g:                                             ; preds = %_ZNK10glTFCommon3RefIN5glTF26BufferEEcvbEv.exit.i
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ag
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 296
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %_ZN5glTF28Accessor10GetPointerEv.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ab, i64 280
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = add i64 %i.aw, %i.au                    ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 288
  %i.az = load ptr, ptr %i.ay, align 8            ; 4 uses
  %.not16.i = icmp eq ptr %i.az, null
  br i1 %.not16.i, label %.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = load i64, ptr %i.az, align 8            ; 3 uses
  %.not17.i = icmp ult i64 %i.ax, %i.ba
  br i1 %.not17.i, label %.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = add i64 %i.bc, %i.ba
  %i.be = icmp ult i64 %i.ax, %i.bd
  br i1 %i.be, label %bb.k, label %.thread.i

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = sub i64 %i.ax, %i.ba
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bh
  br label %_ZN5glTF28Accessor10GetPointerEv.exit

.thread.i:                                        ; preds = %bb.j, %bb.i, %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ax
  br label %_ZN5glTF28Accessor10GetPointerEv.exit

_ZN5glTF28Accessor10GetPointerEv.exit:            ; preds = %bb.b, %bb.d, %bb.k, %.thread.i
  %.3.i = phi ptr [ %i.i, %bb.b ], [ %i.m, %bb.d ], [ %i.bi, %bb.k ], [ %i.bj, %.thread.i ] ; 6 uses
  %.not = icmp eq ptr %.3.i, null
  br i1 %.not, label %_ZN5glTF28Accessor10GetPointerEv.exit.thread, label %bb.p

_ZN5glTF28Accessor10GetPointerEv.exit.thread:     ; preds = %bb.f, %bb.e, %bb.g, %_ZNK10glTFCommon3RefIN5glTF26BufferEEcvbEv.exit.i, %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.i, %_ZN5glTF28Accessor10GetPointerEv.exit
  %i.bk = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZN5glTF226getContextForErrorMessagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %i.bm)
          to label %bb.l unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.l:                                             ; preds = %_ZN5glTF28Accessor10GetPointerEv.exit.thread
  invoke void @_ZN17DeadlyImportErrorC2IJRA47_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, ptr noundef nonnull align 1 dereferenceable(47) @.str.311, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @__cxa_throw(ptr nonnull %i.bk, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.ay unwind label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZN5glTF28Accessor10GetPointerEv.exit.thread
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  %.061 = phi i1 [ false, %bb.m ], [ true, %bb.l ] ; 2 uses
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bp = load ptr, ptr %4, align 8               ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
end_hunk_9
begin_hunk_10_@_ZN5glTF28Accessor11ExtractDataI13aiQuaterniontIfEEEmRPT_PKSt6vectorIjSaIjEE:bb.a
  %n.vec = and i64 %i.ew, 2305843009213693948     ; 3 uses
  %i.ex = shl i64 %n.vec, 4
  %i.ey = getelementptr i8, ptr %i.er, i64 %i.ex
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ez = shl i64 %index, 4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.er, i64 %i.ez
  %i.fa = getelementptr i8, ptr %i.er, i64 %i.ez
  %next.gep152 = getelementptr i8, ptr %i.fa, i64 32
  store <8 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %next.gep, align 4
  store <8 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %next.gep152, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fb = icmp eq i64 %index.next, %n.vec
  br i1 %i.fb, label %middle.block, label %vector.body, !llvm.loop !188

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ew, %n.vec
  br i1 %cmp.n, label %.loopexit109.thread, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.ai, %middle.block
  %.ph = phi ptr [ %i.er, %bb.ai ], [ %i.ey, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.fc = phi ptr [ %i.fd, %scalar.ph ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.fc, align 4
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16 ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.et
  br i1 %i.fe, label %.loopexit109.thread, label %scalar.ph, !llvm.loop !189

.loopexit109:                                     ; preds = %_ZN5glTF28Accessor14GetMaxByteSizeEv.exit
  store ptr %i.er, ptr %1, align 8
  br i1 %.not71, label %bb.ap, label %.loopexit

.loopexit109.thread:                              ; preds = %scalar.ph, %middle.block
  store ptr %i.er, ptr %1, align 8
  br i1 %.not71, label %bb.ap, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit109.thread
  %i.ff = udiv i64 %.0.i, %i.cz
  %i.fg = and i64 %i.ff, 4294967295
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph, %bb.ao
  %.051110 = phi i64 [ 0, %.lr.ph ], [ %i.fz, %bb.ao ] ; 3 uses
  %i.fh = load ptr, ptr %2, align 8
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %.051110
  %i.fj = load i32, ptr %i.fi, align 4
  %i.fk = zext i32 %i.fj to i64                   ; 2 uses
  %.not74 = icmp samesign ugt i64 %i.fg, %i.fk
  %i.fl = mul i64 %i.cz, %i.fk                    ; 2 uses
  br i1 %.not74, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fm = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  store i64 %i.fl, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZN5glTF226getContextForErrorMessagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %i.fn, ptr noundef nonnull align 8 dereferenceable(32) %i.fo)
          to label %bb.al unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.thread

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN17DeadlyImportErrorC2IJRA20_KcmRA12_S1_RKmRA5_S1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.fm, ptr noundef nonnull align 1 dereferenceable(20) @.str.315, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 1 dereferenceable(12) @.str.316, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(5) @.str.314, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %bb.al
  invoke void @__cxa_throw(ptr nonnull %i.fm, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.ay unwind label %bb.an

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.thread: ; preds = %bb.ak
  %i.fp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  br label %.sink.split

bb.an:                                            ; preds = %bb.am, %bb.al
  %.047 = phi i1 [ false, %bb.am ], [ true, %bb.al ] ; 2 uses
  %i.fq = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fr = load ptr, ptr %6, align 8               ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ft = icmp eq ptr %i.fr, %i.fs
  br i1 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %bb.an
  %i.fu = load i64, ptr %i.fs, align 8
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fv) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  br i1 %.047, label %.sink.split, label %bb.aw

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  br i1 %.047, label %.sink.split, label %bb.aw

bb.ao:                                            ; preds = %bb.aj
  %i.fw = load ptr, ptr %1, align 8
  %i.fx = getelementptr inbounds nuw [16 x i8], ptr %i.fw, i64 %.051110
  %i.fy = getelementptr inbounds nuw i8, ptr %.3.i, i64 %i.fl
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.fx, ptr nonnull align 1 %i.fy, i64 %i.cx, i1 false)
  %i.fz = add nuw i64 %.051110, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.fz, %i.cd
  br i1 %exitcond.not, label %.loopexit, label %bb.aj, !llvm.loop !190

bb.ap:                                            ; preds = %.loopexit109.thread, %.loopexit109
  %i.ga = mul i64 %i.cz, %i.cd                    ; 2 uses
  %i.gb = icmp ugt i64 %i.ga, %.0.i
  br i1 %i.gb, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %bb.ap
  %i.gc = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  store i64 %i.ga, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZN5glTF226getContextForErrorMessagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %i.gd, ptr noundef nonnull align 8 dereferenceable(32) %i.ge)
          to label %bb.ar unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.thread

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN17DeadlyImportErrorC2IJRA20_KcmRA12_S1_RKmRA5_S1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.gc, ptr noundef nonnull align 1 dereferenceable(20) @.str.317, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 1 dereferenceable(12) @.str.316, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(5) @.str.314, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %bb.ar
  invoke void @__cxa_throw(ptr nonnull %i.gc, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.ay unwind label %bb.at

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.thread: ; preds = %bb.aq
  %i.gf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  br label %.sink.split

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.046 = phi i1 [ false, %bb.as ], [ true, %bb.ar ] ; 2 uses
  %i.gg = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.gh = load ptr, ptr %7, align 8               ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.gj = icmp eq ptr %i.gh, %i.gi
  br i1 %i.gj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %bb.at
  %i.gk = load i64, ptr %i.gi, align 8
  %i.gl = add i64 %i.gk, 1
  call void @_ZdlPvm(ptr noundef %i.gh, i64 noundef %i.gl) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  br i1 %.046, label %.sink.split, label %bb.aw

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  br i1 %.046, label %.sink.split, label %bb.aw

bb.au:                                            ; preds = %bb.ap
  %i.gm = icmp eq i32 %i.cw, 16
  %i.gn = icmp eq i64 %i.cz, 16
  %or.cond = and i1 %i.gn, %i.gm
  br i1 %or.cond, label %bb.av, label %.preheader

.preheader:                                       ; preds = %bb.au
  br i1 %i.es, label %.loopexit, label %.lr.ph112.preheader

.lr.ph112.preheader:                              ; preds = %.preheader
  %xtraiter = and i64 %i.cd, 1
  %i.go = icmp eq i64 %i.cd, 1
  br i1 %i.go, label %.lr.ph112.epil.preheader, label %.lr.ph112.preheader.new

.lr.ph112.preheader.new:                          ; preds = %.lr.ph112.preheader
  %unroll_iter = and i64 %i.cd, -2
  br label %.lr.ph112

bb.av:                                            ; preds = %bb.au
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.er, ptr nonnull align 1 %.3.i, i64 %i.cy, i1 false)
  br label %.loopexit

.lr.ph112:                                        ; preds = %.lr.ph112, %.lr.ph112.preheader.new
  %.0111 = phi i64 [ 0, %.lr.ph112.preheader.new ], [ %i.gy, %.lr.ph112 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph112.preheader.new ], [ %niter.next.1, %.lr.ph112 ]
  %i.gp = load ptr, ptr %1, align 8
  %i.gq = getelementptr inbounds nuw [16 x i8], ptr %i.gp, i64 %.0111
  %i.gr = mul i64 %.0111, %i.cz
  %i.gs = getelementptr inbounds nuw i8, ptr %.3.i, i64 %i.gr
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.gq, ptr nonnull align 1 %i.gs, i64 %i.cx, i1 false)
  %i.gt = or disjoint i64 %.0111, 1               ; 2 uses
  %i.gu = load ptr, ptr %1, align 8
  %i.gv = getelementptr inbounds nuw [16 x i8], ptr %i.gu, i64 %i.gt
  %i.gw = mul i64 %i.gt, %i.cz
  %i.gx = getelementptr inbounds nuw i8, ptr %.3.i, i64 %i.gw
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.gv, ptr nonnull align 1 %i.gx, i64 %i.cx, i1 false)
  %i.gy = add nuw i64 %.0111, 2                   ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph112, !llvm.loop !191

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph112
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph112.epil.preheader

.lr.ph112.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph112.preheader
  %.0111.epil.init = phi i64 [ 0, %.lr.ph112.preheader ], [ %i.gy, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod156 = trunc i64 %i.cd to i1
  tail call void @llvm.assume(i1 %lcmp.mod156)
  %i.gz = load ptr, ptr %1, align 8
  %i.ha = getelementptr inbounds nuw [16 x i8], ptr %i.gz, i64 %.0111.epil.init
  %i.hb = mul i64 %.0111.epil.init, %i.cz
  %i.hc = getelementptr inbounds nuw i8, ptr %.3.i, i64 %i.hb
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ha, ptr nonnull align 1 %i.hc, i64 %i.cx, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ao, %.lr.ph112.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.loopexit109, %.preheader, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  ret i64 %i.cd

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88
  %.sink = phi ptr [ %i.fm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ], [ %i.fm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88 ], [ %i.fm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.thread ], [ %i.gc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %i.gc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.thread ], [ %i.gc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ]
  %.pn75.pn.ph = phi { ptr, i32 } [ %i.fq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ], [ %i.fq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88 ], [ %i.fp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.thread ], [ %i.gg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %i.gf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.thread ], [ %i.gg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ]
  call void @__cxa_free_exception(ptr %.sink) #34
  br label %bb.aw

bb.aw:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93
  %.pn75.pn = phi { ptr, i32 } [ %i.gg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ], [ %i.fq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88 ], [ %i.gg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %i.fq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ], [ %.pn75.pn.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  br label %bb.ax

bb.ax:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %bb.ad, %bb.aw
  %.pn78.pn = phi { ptr, i32 } [ %.pn78101, %bb.ad ], [ %i.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ], [ %.pn75.pn, %bb.aw ], [ %i.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %common.resume

bb.ay:                                            ; preds = %bb.as, %bb.am, %bb.ab, %bb.m
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN10aiNodeAnimD2Ev(ptr noundef nonnull align 8 dead_on_return(1080) dereferenceable(1080) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #35
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #35
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #35
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull ptr @_Z19CreateMeshMorphAnimRN5glTF25AssetERNS_4NodeER17AnimationSamplers(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(552) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = tail call noalias noundef nonnull dereferenceable(1040) ptr @_Znwm(i64 noundef 1040) #37 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.d, i8 0, i64 1040, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = load i64, ptr %i.e, align 8, !noalias !192
  %i.g = icmp eq i64 %i.f, 0
  %.v.i = select i1 %i.g, i64 16, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %.v.i ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.i, ptr %3, align 8, !alias.scope !192
  %i.j = load ptr, ptr %i.h, align 8, !noalias !192 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load i64, ptr %i.k, align 8, !noalias !192 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34, !noalias !192
  store i64 %i.l, ptr %i.a, align 8, !noalias !192
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.n = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.n     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.n, ptr %3, align 8, !alias.scope !192
  %i.o = load i64, ptr %i.a, align 8, !noalias !192
  store i64 %i.o, ptr %i.i, align 8, !alias.scope !192
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.a
  %i.p = phi ptr [ %i.n, %.noexc ], [ %i.i, %bb.a ] ; 2 uses
  switch i64 %i.l, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.q = load i8, ptr %i.j, align 1
  store i8 %i.q, ptr %i.p, align 1
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.j, i64 %i.l, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.r = load i64, ptr %i.a, align 8, !noalias !192 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.r, ptr %i.s, align 8, !alias.scope !192
  %i.t = load ptr, ptr %3, align 8, !alias.scope !192
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34, !noalias !192
  %i.v = load i64, ptr %i.s, align 8              ; 5 uses
  %i.w = icmp ugt i64 %i.v, 1023
  %.pre = load ptr, ptr %3, align 8               ; 3 uses
  br i1 %i.w, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = trunc nuw nsw i64 %i.v to i32
  store i32 %i.x, ptr %i.d, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.y, ptr align 1 %.pre, i64 %i.v, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.v
  store i8 0, ptr %i.z, align 1
  br label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.e, %bb.d
  %i.aa = icmp eq ptr %.pre, %i.i
  br i1 %i.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ab = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.ab)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ac = load i64, ptr %i.i, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ad) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8            ; 6 uses
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ag = load ptr, ptr %i.af, align 8            ; 3 uses
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit.thread, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit

_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit: ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = load ptr, ptr %i.ag, align 8
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 3
  %i.ar = icmp ugt i64 %i.aq, %i.aj
  br i1 %i.ar, label %bb.g, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit.thread

bb.g:                                             ; preds = %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.at = load ptr, ptr %i.as, align 8            ; 3 uses
  %.not.i60 = icmp eq ptr %i.at, null
end_hunk_10
begin_hunk_11_@_ZN9rapidjson4UTF8IcE8ValidateINS_19GenericStringStreamIS1_EENS_14GenericPointerINS_12GenericValueIS1_NS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES8_E19PercentEncodeStreamINS_19GenericStringBufferIS1_S8_EEEEEEbRT_RT0_:bb.a
  %i.acg = load ptr, ptr %1, align 8, !nonnull !20, !align !33 ; 3 uses
  %i.ach = zext i8 %i.abu to i32                  ; 2 uses
  %i.aci = lshr i32 %i.ach, 4
  %i.acj = zext nneg i32 %i.aci to i64
  %i.ack = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19PercentEncodeStreamINS_19GenericStringBufferIS3_S5_EEE3PutEcE9hexDigits, i64 %i.acj
  %i.acl = load i8, ptr %i.ack, align 1
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acg, i64 32
  %i.acn = load ptr, ptr %i.acm, align 8
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acg, i64 24 ; 3 uses
  %i.acp = load ptr, ptr %i.aco, align 8          ; 2 uses
  %i.acq = ptrtoint ptr %i.acn to i64
  %i.acr = ptrtoint ptr %i.acp to i64
  %i.acs = sub i64 %i.acq, %i.acr
  %i.act = icmp slt i64 %i.acs, 1
  br i1 %i.act, label %bb.bg, label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit4.i168, !prof !6

bb.bg:                                            ; preds = %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit.i167
  tail call void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.acg, i64 noundef 1)
  %.pre.i3.i170 = load ptr, ptr %i.aco, align 8
  br label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit4.i168

_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit4.i168: ; preds = %bb.bg, %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit.i167
  %i.acu = phi ptr [ %i.acp, %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit.i167 ], [ %.pre.i3.i170, %bb.bg ] ; 2 uses
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acu, i64 1
  store ptr %i.acv, ptr %i.aco, align 8
  store i8 %i.acl, ptr %i.acu, align 1
  %i.acw = load ptr, ptr %1, align 8, !nonnull !20, !align !33 ; 3 uses
  %i.acx = and i32 %i.ach, 15
  %i.acy = zext nneg i32 %i.acx to i64
  %i.acz = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19PercentEncodeStreamINS_19GenericStringBufferIS3_S5_EEE3PutEcE9hexDigits, i64 %i.acy
  %i.ada = load i8, ptr %i.acz, align 1
  %i.adb = getelementptr inbounds nuw i8, ptr %i.acw, i64 32
  %i.adc = load ptr, ptr %i.adb, align 8
  %i.add = getelementptr inbounds nuw i8, ptr %i.acw, i64 24 ; 3 uses
  %i.ade = load ptr, ptr %i.add, align 8          ; 2 uses
  %i.adf = ptrtoint ptr %i.adc to i64
  %i.adg = ptrtoint ptr %i.ade to i64
  %i.adh = sub i64 %i.adf, %i.adg
  %i.adi = icmp slt i64 %i.adh, 1
  br i1 %i.adi, label %bb.bh, label %_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19PercentEncodeStreamINS_19GenericStringBufferIS3_S5_EEE3PutEc.exit172, !prof !6

bb.bh:                                            ; preds = %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit4.i168
  tail call void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.acw, i64 noundef 1)
  %.pre.i5.i169 = load ptr, ptr %i.add, align 8
  br label %_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19PercentEncodeStreamINS_19GenericStringBufferIS3_S5_EEE3PutEc.exit172

_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19PercentEncodeStreamINS_19GenericStringBufferIS3_S5_EEE3PutEc.exit172: ; preds = %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit4.i168, %bb.bh
  %i.adj = phi ptr [ %i.ade, %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit4.i168 ], [ %.pre.i5.i169, %bb.bh ] ; 2 uses
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adj, i64 1
  store ptr %i.adk, ptr %i.add, align 8
  store i8 %i.ada, ptr %i.adj, align 1
  %i.adl = icmp slt i8 %i.abu, -64
  %i.adm = and i1 %i.abr, %i.adl
  br label %bb.bi

bb.bi:                                            ; preds = %_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19PercentEncodeStreamINS_19GenericStringBufferIS3_S5_EEE3PutEc.exit82, %_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19PercentEncodeStreamINS_19GenericStringBufferIS3_S5_EEE3PutEc.exit94, %_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19PercentEncodeStreamINS_19GenericStringBufferIS3_S5_EEE3PutEc.exit106, %_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19PercentEncodeStreamINS_19GenericStringBufferIS3_S5_EEE3PutEc.exit124, %_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19PercentEncodeStreamINS_19GenericStringBufferIS3_S5_EEE3PutEc.exit142, %_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19PercentEncodeStreamINS_19GenericStringBufferIS3_S5_EEE3PutEc.exit154, %_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19PercentEncodeStreamINS_19GenericStringBufferIS3_S5_EEE3PutEc.exit172, %bb.e, %_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19PercentEncodeStreamINS_19GenericStringBufferIS3_S5_EEE3PutEc.exit
  %.1 = phi i1 [ true, %_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19PercentEncodeStreamINS_19GenericStringBufferIS3_S5_EEE3PutEc.exit ], [ %i.adm, %_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19PercentEncodeStreamINS_19GenericStringBufferIS3_S5_EEE3PutEc.exit172 ], [ %i.cp, %_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19PercentEncodeStreamINS_19GenericStringBufferIS3_S5_EEE3PutEc.exit82 ], [ %i.ge, %_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19PercentEncodeStreamINS_19GenericStringBufferIS3_S5_EEE3PutEc.exit94 ], [ %i.jt, %_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19PercentEncodeStreamINS_19GenericStringBufferIS3_S5_EEE3PutEc.exit106 ], [ %i.pc, %_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19PercentEncodeStreamINS_19GenericStringBufferIS3_S5_EEE3PutEc.exit124 ], [ %i.um, %_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19PercentEncodeStreamINS_19GenericStringBufferIS3_S5_EEE3PutEc.exit142 ], [ %i.yb, %_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19PercentEncodeStreamINS_19GenericStringBufferIS3_S5_EEE3PutEc.exit154 ], [ false, %bb.e ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E5ParseEPKcm(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %3 = alloca %"class.rapidjson::GenericPointer<rapidjson::GenericValue<rapidjson::UTF8<>>>::PercentDecodeStream", align 8 ; 10 uses
  %4 = alloca %"struct.rapidjson::GenericInsituStringStream", align 8 ; 8 uses
  %i.a = load ptr, ptr %0, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #37 ; 2 uses
  store ptr %i.b, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  store i64 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %.not127179 = icmp samesign eq i64 %2, 0
  br i1 %.not127179, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %xtraiter = and i64 %2, 3                       ; 3 uses
  %i.f = icmp ult i64 %2, 4
  br i1 %i.f, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %2, -4
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ao, %._crit_edge.loopexit.unr-lcssa ]
  %.0180.epil.init = phi ptr [ %1, %.lr.ph.preheader ], [ %i.ap, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod287 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod287)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %bb.e, %.lr.ph.epil.preheader
  %i.g = phi i64 [ %i.k, %bb.e ], [ %.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.0180.epil = phi ptr [ %i.l, %bb.e ], [ %.0180.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bb.e ], [ 0, %.lr.ph.epil.preheader ]
  %i.h = load i8, ptr %.0180.epil, align 1
  %i.i = icmp eq i8 %i.h, 47
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.epil
  %i.j = add i64 %i.g, 1                          ; 2 uses
  store i64 %i.j, ptr %i.d, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.epil
  %i.k = phi i64 [ %i.g, %.lr.ph.epil ], [ %i.j, %bb.d ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0180.epil, i64 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !731

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.e, %bb.c
  %i.m = phi i64 [ 0, %bb.c ], [ %i.ao, %._crit_edge.loopexit.unr-lcssa ], [ %i.k, %bb.e ] ; 2 uses
  %i.n = shl i64 %i.m, 4
  %i.o = add i64 %i.n, %2                         ; 2 uses
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %_ZN9rapidjson12CrtAllocator6MallocEm.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.o) #40
  br label %_ZN9rapidjson12CrtAllocator6MallocEm.exit

_ZN9rapidjson12CrtAllocator6MallocEm.exit:        ; preds = %._crit_edge, %bb.f
  %.0.i = phi ptr [ %i.p, %bb.f ], [ null, %._crit_edge ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %.0.i, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %.0.i, i64 %i.m ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.r, ptr %i.s, align 8
  %i.t = load i8, ptr %1, align 1
  %.fr219 = freeze i8 %i.t
  %i.u = icmp eq i8 %.fr219, 35                   ; 2 uses
  %spec.select = zext i1 %i.u to i64              ; 4 uses
  %.not128 = icmp eq i64 %2, %spec.select
  br i1 %.not128, label %bb.n, label %bb.l

.lr.ph:                                           ; preds = %bb.k, %.lr.ph.preheader.new
  %i.v = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ao, %bb.k ] ; 2 uses
  %.0180 = phi ptr [ %1, %.lr.ph.preheader.new ], [ %i.ap, %bb.k ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %bb.k ]
  %i.w = load i8, ptr %.0180, align 1
  %i.x = icmp eq i8 %i.w, 47
  br i1 %i.x, label %bb.g, label %.lr.ph.1

bb.g:                                             ; preds = %.lr.ph
  %i.y = add i64 %i.v, 1                          ; 2 uses
  store i64 %i.y, ptr %i.d, align 8
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.g
  %i.z = phi i64 [ %i.v, %.lr.ph ], [ %i.y, %bb.g ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0180, i64 1
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = icmp eq i8 %i.ab, 47
  br i1 %i.ac, label %bb.h, label %.lr.ph.2

bb.h:                                             ; preds = %.lr.ph.1
  %i.ad = add i64 %i.z, 1                         ; 2 uses
  store i64 %i.ad, ptr %i.d, align 8
  br label %.lr.ph.2

.lr.ph.2:                                         ; preds = %bb.h, %.lr.ph.1
  %i.ae = phi i64 [ %i.z, %.lr.ph.1 ], [ %i.ad, %bb.h ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0180, i64 2
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = icmp eq i8 %i.ag, 47
  br i1 %i.ah, label %bb.i, label %.lr.ph.3

bb.i:                                             ; preds = %.lr.ph.2
  %i.ai = add i64 %i.ae, 1                        ; 2 uses
  store i64 %i.ai, ptr %i.d, align 8
  br label %.lr.ph.3

.lr.ph.3:                                         ; preds = %bb.i, %.lr.ph.2
  %i.aj = phi i64 [ %i.ae, %.lr.ph.2 ], [ %i.ai, %bb.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0180, i64 3
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = icmp eq i8 %i.al, 47
  br i1 %i.am, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.3
  %i.an = add i64 %i.aj, 1                        ; 2 uses
  store i64 %i.an, ptr %i.d, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.3
  %i.ao = phi i64 [ %i.aj, %.lr.ph.3 ], [ %i.an, %bb.j ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0180, i64 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !732

bb.l:                                             ; preds = %_ZN9rapidjson12CrtAllocator6MallocEm.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select
  %i.ar = load i8, ptr %i.aq, align 1
  %.not129 = icmp eq i8 %i.ar, 47
  br i1 %.not129, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 1, ptr %i.as, align 8
  br label %.thread156

bb.n:                                             ; preds = %bb.l, %_ZN9rapidjson12CrtAllocator6MallocEm.exit
  %i.at = icmp ugt i64 %2, %spec.select
  br i1 %i.at, label %.lr.ph213, label %._crit_edge214

.lr.ph213:                                        ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 16
  br i1 %i.u, label %.lr.ph213.split.us, label %.lr.ph213.split

.lr.ph213.split.us:                               ; preds = %.lr.ph213, %.thread154.us
  %.089211.us = phi ptr [ %i.bx, %.thread154.us ], [ %.0.i, %.lr.ph213 ] ; 7 uses
  %.091210.us = phi ptr [ %i.bi, %.thread154.us ], [ %i.r, %.lr.ph213 ] ; 4 uses
  %.1110209.us = phi i64 [ %.2111.lcssa.us, %.thread154.us ], [ 1, %.lr.ph213 ]
  %i.az = add nuw i64 %.1110209.us, 1             ; 3 uses
  store ptr %.091210.us, ptr %.089211.us, align 8
  %i.ba = icmp ult i64 %i.az, %2
  br i1 %i.ba, label %.lr.ph185.us, label %.critedge.us

.critedge.us.loopexit:                            ; preds = %.lr.ph185.us, %bb.aa
  %.2111.lcssa.us.ph = phi i64 [ %.7116.us.us, %bb.aa ], [ %.2111181.us.us, %.lr.ph185.us ]
  %.0101.lcssa.us.ph = phi i1 [ %.5106.us.us, %bb.aa ], [ %.0101182.us.us, %.lr.ph185.us ]
  %.192.lcssa.us.ph = phi ptr [ %.5.us.us, %bb.aa ], [ %.192183.us.us, %.lr.ph185.us ]
  %.pre235 = load ptr, ptr %.089211.us, align 8
  br label %.critedge.us

.critedge.us:                                     ; preds = %.critedge.us.loopexit, %.lr.ph213.split.us
  %i.bb = phi ptr [ %.091210.us, %.lr.ph213.split.us ], [ %.pre235, %.critedge.us.loopexit ]
  %.2111.lcssa.us = phi i64 [ %i.az, %.lr.ph213.split.us ], [ %.2111.lcssa.us.ph, %.critedge.us.loopexit ] ; 2 uses
  %.0101.lcssa.us = phi i1 [ true, %.lr.ph213.split.us ], [ %.0101.lcssa.us.ph, %.critedge.us.loopexit ]
  %.192.lcssa.us = phi ptr [ %.091210.us, %.lr.ph213.split.us ], [ %.192.lcssa.us.ph, %.critedge.us.loopexit ] ; 3 uses
  %i.bc = ptrtoint ptr %.192.lcssa.us to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = trunc i64 %i.be to i32                  ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.089211.us, i64 8 ; 2 uses
  store i32 %i.bf, ptr %i.bg, align 8
  %i.bh = icmp ne i32 %i.bf, 0
  %i.bi = getelementptr inbounds nuw i8, ptr %.192.lcssa.us, i64 1
  store i8 0, ptr %.192.lcssa.us, align 1
  %i.bj = select i1 %i.bh, i1 %.0101.lcssa.us, i1 false
  br i1 %i.bj, label %bb.o, label %.thread154.us

bb.o:                                             ; preds = %.critedge.us
  %i.bk = load i32, ptr %i.bg, align 8            ; 3 uses
  %i.bl = icmp ugt i32 %i.bk, 1
  br i1 %i.bl, label %bb.p, label %.critedge164.preheader.us

bb.p:                                             ; preds = %bb.o
  %i.bm = load ptr, ptr %.089211.us, align 8
  %i.bn = load i8, ptr %i.bm, align 1
  %.not222 = icmp eq i8 %i.bn, 48
  br i1 %.not222, label %.thread154.us, label %.critedge164.preheader.us.thread

.critedge164.preheader.us.thread:                 ; preds = %bb.p
  %i.bo = zext i32 %i.bk to i64
  br label %.lr.ph206.us

.critedge164.us:                                  ; preds = %bb.q
  %i.bp = add nuw nsw i64 %.083205.us, 1          ; 2 uses
  %exitcond234.not = icmp eq i64 %i.bp, %i.de
  br i1 %exitcond234.not, label %.thread154.us, label %bb.q, !llvm.loop !733

bb.q:                                             ; preds = %.lr.ph206.us, %.critedge164.us
  %.083205.us = phi i64 [ 0, %.lr.ph206.us ], [ %i.bp, %.critedge164.us ] ; 2 uses
  %.084204.us = phi i32 [ 0, %.lr.ph206.us ], [ %i.bv, %.critedge164.us ] ; 2 uses
  %i.bq = mul i32 %.084204.us, 10
  %i.br = getelementptr inbounds nuw i8, ptr %i.df, i64 %.083205.us
  %i.bs = load i8, ptr %i.br, align 1
  %i.bt = sext i8 %i.bs to i32
  %i.bu = add i32 %i.bq, -48
  %i.bv = add i32 %i.bu, %i.bt                    ; 3 uses
  %.not131.us = icmp ult i32 %i.bv, %.084204.us
  br i1 %.not131.us, label %.thread154.us, label %.critedge164.us

.thread154.us:                                    ; preds = %.critedge164.us, %bb.q, %.critedge164.preheader.us, %bb.p, %.critedge.us
  %.11.us = phi i32 [ -1, %bb.p ], [ -1, %.critedge.us ], [ 0, %.critedge164.preheader.us ], [ -1, %bb.q ], [ %i.bv, %.critedge164.us ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.089211.us, i64 12
  store i32 %.11.us, ptr %i.bw, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %.089211.us, i64 16
  %i.by = icmp ult i64 %.2111.lcssa.us, %2
  br i1 %i.by, label %.lr.ph213.split.us, label %._crit_edge214

.critedge164.preheader.us:                        ; preds = %bb.o
  %.not223 = icmp eq i32 %i.bk, 0
  br i1 %.not223, label %.thread154.us, label %.lr.ph206.us

.lr.ph185.us:                                     ; preds = %.lr.ph213.split.us, %bb.aa
  %.192183.us.us = phi ptr [ %.5.us.us, %bb.aa ], [ %.091210.us, %.lr.ph213.split.us ] ; 9 uses
  %.0101182.us.us = phi i1 [ %.5106.us.us, %bb.aa ], [ true, %.lr.ph213.split.us ] ; 2 uses
  %.2111181.us.us = phi i64 [ %.7116.us.us, %bb.aa ], [ %i.az, %.lr.ph213.split.us ] ; 11 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %.2111181.us.us ; 3 uses
  %i.ca = load i8, ptr %i.bz, align 1             ; 9 uses
  switch i8 %i.ca, label %bb.r [
    i8 47, label %.critedge.us.loopexit
    i8 37, label %bb.s
  ]

bb.r:                                             ; preds = %.lr.ph185.us
  %i.cb = add i8 %i.ca, -48
  %or.cond.i.us.us = icmp ult i8 %i.cb, 10
  %i.cc = and i8 %i.ca, -33
  %i.cd = add i8 %i.cc, -65
  %i.ce = icmp ult i8 %i.cd, 26
  %or.cond28.i.us.us = or i1 %or.cond.i.us.us, %i.ce
  br i1 %or.cond28.i.us.us, label %_ZNK9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E17NeedPercentEncodeEc.exit.thread.us.us, label %switch.early.test.i.us.us

switch.early.test.i.us.us:                        ; preds = %bb.r
  switch i8 %i.ca, label %_ZNK9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E17NeedPercentEncodeEc.exit [
    i8 95, label %_ZNK9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E17NeedPercentEncodeEc.exit.thread.us.us
    i8 46, label %_ZNK9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E17NeedPercentEncodeEc.exit.thread.us.us
    i8 45, label %_ZNK9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E17NeedPercentEncodeEc.exit.thread.us.us
    i8 126, label %_ZNK9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E17NeedPercentEncodeEc.exit.thread.us.us
  ]

bb.s:                                             ; preds = %.lr.ph185.us
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  store ptr %i.bz, ptr %3, align 8
  store ptr %i.bz, ptr %i.au, align 8
  store ptr %i.e, ptr %i.av, align 8
  store i8 1, ptr %i.aw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  store ptr %.192183.us.us, ptr %4, align 8
  store ptr %.192183.us.us, ptr %i.ay, align 8
  store ptr %.192183.us.us, ptr %i.ax, align 8
  %i.cf = call noundef zeroext i1 @_ZN9rapidjson4UTF8IcE8ValidateINS_14GenericPointerINS_12GenericValueIS1_NS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_E19PercentDecodeStreamENS_25GenericInsituStringStreamIS1_EEEEbRT_RT0_(ptr noundef nonnull align 8 dereferenceable(25) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.cg = load i8, ptr %i.aw, align 8, !range !19
  %i.ch = trunc nuw i8 %i.cg to i1
  %or.cond162.us.us = select i1 %i.cf, i1 %i.ch, i1 false
  br i1 %or.cond162.us.us, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.ci = load ptr, ptr %i.ax, align 8
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %.192183.us.us to i64
  %i.cl = sub i64 %i.cj, %i.ck                    ; 2 uses
  %i.cm = load ptr, ptr %3, align 8
  %i.cn = load ptr, ptr %i.au, align 8
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp                    ; 2 uses
  %i.cr = icmp eq i64 %i.cl, 1
  br i1 %i.cr, label %.thread141.us.us, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cs = getelementptr inbounds nuw i8, ptr %.192183.us.us, i64 %i.cl
  %.3112.us.us = add i64 %i.cq, %.2111181.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %bb.aa

.thread141.us.us:                                 ; preds = %bb.t
  %i.ct = load i8, ptr %.192183.us.us, align 1
  %i.cu = add i64 %.2111181.us.us, -1
  %.3112147.us.us = add i64 %i.cu, %i.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %_ZNK9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E17NeedPercentEncodeEc.exit.thread.us.us

_ZNK9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E17NeedPercentEncodeEc.exit.thread.us.us: ; preds = %.thread141.us.us, %switch.early.test.i.us.us, %switch.early.test.i.us.us, %switch.early.test.i.us.us, %switch.early.test.i.us.us, %bb.r
  %.5114.us.us = phi i64 [ %.3112147.us.us, %.thread141.us.us ], [ %.2111181.us.us, %bb.r ], [ %.2111181.us.us, %switch.early.test.i.us.us ], [ %.2111181.us.us, %switch.early.test.i.us.us ], [ %.2111181.us.us, %switch.early.test.i.us.us ], [ %.2111181.us.us, %switch.early.test.i.us.us ] ; 2 uses
  %.298.us.us = phi i8 [ %i.ct, %.thread141.us.us ], [ %i.ca, %bb.r ], [ %i.ca, %switch.early.test.i.us.us ], [ %i.ca, %switch.early.test.i.us.us ], [ %i.ca, %switch.early.test.i.us.us ], [ %i.ca, %switch.early.test.i.us.us ] ; 2 uses
  %i.cv = add i64 %.5114.us.us, 1                 ; 5 uses
  %i.cw = icmp eq i8 %.298.us.us, 126
  br i1 %i.cw, label %bb.v, label %bb.z

bb.v:                                             ; preds = %_ZNK9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E17NeedPercentEncodeEc.exit.thread.us.us
  %i.cx = icmp ult i64 %i.cv, %2
  br i1 %i.cx, label %bb.w, label %.split.us

bb.w:                                             ; preds = %bb.v
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 %i.cv
  %i.cz = load i8, ptr %i.cy, align 1
  switch i8 %i.cz, label %.split199.us [
    i8 48, label %bb.y
    i8 49, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.399.us.us = phi i8 [ 47, %bb.x ], [ 126, %bb.w ]
  %i.da = add i64 %.5114.us.us, 2
end_hunk_11
begin_hunk_12_@_ZN5glTF28Accessor11ExtractDataI9aiColor4tIhEEEmRPT_PKSt6vectorIjSaIjEE:bb.a
  br i1 %i.ea, label %bb.ah, label %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.thread.i

bb.ah:                                            ; preds = %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.i87
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.ds
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 288
  %i.ee = load i64, ptr %i.ed, align 8
  br label %_ZN5glTF28Accessor14GetMaxByteSizeEv.exit

_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.thread.i: ; preds = %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.i87, %bb.ag
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.eg = load ptr, ptr %i.ef, align 8            ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 72
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = load ptr, ptr %i.eh, align 8
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = sub i64 %i.el, %i.em
  br label %_ZN5glTF28Accessor14GetMaxByteSizeEv.exit

_ZN5glTF28Accessor14GetMaxByteSizeEv.exit:        ; preds = %bb.af, %bb.ah, %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.thread.i
  %.0.i = phi i64 [ %i.dn, %bb.af ], [ %i.ee, %bb.ah ], [ %i.en, %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.thread.i ] ; 3 uses
  store i64 %.0.i, ptr %i.c, align 8
  %i.eo = icmp ugt i64 %i.cd, 4611686018427387903
  %i.ep = shl i64 %i.cd, 2                        ; 2 uses
  %i.eq = select i1 %i.eo, i64 -1, i64 %i.ep
  %i.er = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.eq) #37 ; 4 uses
  %i.es = icmp eq i64 %i.cd, 0                    ; 2 uses
  br i1 %i.es, label %.loopexit109, label %.loopexit109.thread

.loopexit109:                                     ; preds = %_ZN5glTF28Accessor14GetMaxByteSizeEv.exit
  store ptr %i.er, ptr %1, align 8
  br i1 %.not71, label %bb.ao, label %.loopexit

.loopexit109.thread:                              ; preds = %_ZN5glTF28Accessor14GetMaxByteSizeEv.exit
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.er, i8 0, i64 %i.ep, i1 false)
  store ptr %i.er, ptr %1, align 8
  br i1 %.not71, label %bb.ao, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit109.thread
  %i.et = udiv i64 %.0.i, %i.cz
  %i.eu = and i64 %i.et, 4294967295
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph, %bb.an
  %.051110 = phi i64 [ 0, %.lr.ph ], [ %i.fn, %bb.an ] ; 3 uses
  %i.ev = load ptr, ptr %2, align 8
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %.051110
  %i.ex = load i32, ptr %i.ew, align 4
  %i.ey = zext i32 %i.ex to i64                   ; 2 uses
  %.not74 = icmp samesign ugt i64 %i.eu, %i.ey
  %i.ez = mul i64 %i.cz, %i.ey                    ; 2 uses
  br i1 %.not74, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fa = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  store i64 %i.ez, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZN5glTF226getContextForErrorMessagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %i.fb, ptr noundef nonnull align 8 dereferenceable(32) %i.fc)
          to label %bb.ak unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.thread

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN17DeadlyImportErrorC2IJRA20_KcmRA12_S1_RKmRA5_S1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.fa, ptr noundef nonnull align 1 dereferenceable(20) @.str.315, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 1 dereferenceable(12) @.str.316, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(5) @.str.314, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.al unwind label %bb.am

bb.al:                                            ; preds = %bb.ak
  invoke void @__cxa_throw(ptr nonnull %i.fa, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.ax unwind label %bb.am

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.thread: ; preds = %bb.aj
  %i.fd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  br label %.sink.split

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.047 = phi i1 [ false, %bb.al ], [ true, %bb.ak ] ; 2 uses
  %i.fe = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ff = load ptr, ptr %6, align 8               ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.fh = icmp eq ptr %i.ff, %i.fg
  br i1 %i.fh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %bb.am
  %i.fi = load i64, ptr %i.fg, align 8
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fj) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  br i1 %.047, label %.sink.split, label %bb.av

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  br i1 %.047, label %.sink.split, label %bb.av

bb.an:                                            ; preds = %bb.ai
  %i.fk = load ptr, ptr %1, align 8
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %.051110
  %i.fm = getelementptr inbounds nuw i8, ptr %.3.i, i64 %i.ez
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fl, ptr nonnull align 1 %i.fm, i64 %i.cx, i1 false)
  %i.fn = add nuw i64 %.051110, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.fn, %i.cd
  br i1 %exitcond.not, label %.loopexit, label %bb.ai, !llvm.loop !1100

bb.ao:                                            ; preds = %.loopexit109.thread, %.loopexit109
  %i.fo = mul i64 %i.cz, %i.cd                    ; 2 uses
  %i.fp = icmp ugt i64 %i.fo, %.0.i
  br i1 %i.fp, label %bb.ap, label %bb.at

bb.ap:                                            ; preds = %bb.ao
  %i.fq = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  store i64 %i.fo, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZN5glTF226getContextForErrorMessagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %i.fr, ptr noundef nonnull align 8 dereferenceable(32) %i.fs)
          to label %bb.aq unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.thread

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN17DeadlyImportErrorC2IJRA20_KcmRA12_S1_RKmRA5_S1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.fq, ptr noundef nonnull align 1 dereferenceable(20) @.str.317, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 1 dereferenceable(12) @.str.316, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(5) @.str.314, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.ar unwind label %bb.as

bb.ar:                                            ; preds = %bb.aq
  invoke void @__cxa_throw(ptr nonnull %i.fq, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.ax unwind label %bb.as

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.thread: ; preds = %bb.ap
  %i.ft = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  br label %.sink.split

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.046 = phi i1 [ false, %bb.ar ], [ true, %bb.aq ] ; 2 uses
  %i.fu = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fv = load ptr, ptr %7, align 8               ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.fx = icmp eq ptr %i.fv, %i.fw
  br i1 %i.fx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %bb.as
  %i.fy = load i64, ptr %i.fw, align 8
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fz) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  br i1 %.046, label %.sink.split, label %bb.av

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  br i1 %.046, label %.sink.split, label %bb.av

bb.at:                                            ; preds = %bb.ao
  %i.ga = icmp eq i32 %i.cw, 4
  %i.gb = icmp eq i64 %i.cz, 4
  %or.cond = and i1 %i.gb, %i.ga
  br i1 %or.cond, label %bb.au, label %.preheader

.preheader:                                       ; preds = %bb.at
  br i1 %i.es, label %.loopexit, label %.lr.ph112.preheader

.lr.ph112.preheader:                              ; preds = %.preheader
  %xtraiter = and i64 %i.cd, 1
  %i.gc = icmp eq i64 %i.cd, 1
  br i1 %i.gc, label %.lr.ph112.epil.preheader, label %.lr.ph112.preheader.new

.lr.ph112.preheader.new:                          ; preds = %.lr.ph112.preheader
  %unroll_iter = and i64 %i.cd, -2
  br label %.lr.ph112

bb.au:                                            ; preds = %bb.at
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.er, ptr nonnull align 1 %.3.i, i64 %i.cy, i1 false)
  br label %.loopexit

.lr.ph112:                                        ; preds = %.lr.ph112, %.lr.ph112.preheader.new
  %.0111 = phi i64 [ 0, %.lr.ph112.preheader.new ], [ %i.gm, %.lr.ph112 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph112.preheader.new ], [ %niter.next.1, %.lr.ph112 ]
  %i.gd = load ptr, ptr %1, align 8
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %.0111
  %i.gf = mul i64 %.0111, %i.cz
  %i.gg = getelementptr inbounds nuw i8, ptr %.3.i, i64 %i.gf
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ge, ptr nonnull align 1 %i.gg, i64 %i.cx, i1 false)
  %i.gh = or disjoint i64 %.0111, 1               ; 2 uses
  %i.gi = load ptr, ptr %1, align 8
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %i.gh
  %i.gk = mul i64 %i.gh, %i.cz
  %i.gl = getelementptr inbounds nuw i8, ptr %.3.i, i64 %i.gk
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gj, ptr nonnull align 1 %i.gl, i64 %i.cx, i1 false)
  %i.gm = add nuw i64 %.0111, 2                   ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph112, !llvm.loop !1101

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph112
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph112.epil.preheader

.lr.ph112.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph112.preheader
  %.0111.epil.init = phi i64 [ 0, %.lr.ph112.preheader ], [ %i.gm, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod155 = trunc i64 %i.cd to i1
  tail call void @llvm.assume(i1 %lcmp.mod155)
  %i.gn = load ptr, ptr %1, align 8
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %.0111.epil.init
  %i.gp = mul i64 %.0111.epil.init, %i.cz
  %i.gq = getelementptr inbounds nuw i8, ptr %.3.i, i64 %i.gp
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.go, ptr nonnull align 1 %i.gq, i64 %i.cx, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.an, %.lr.ph112.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.loopexit109, %.preheader, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  ret i64 %i.cd

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88
  %.sink = phi ptr [ %i.fa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ], [ %i.fa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88 ], [ %i.fa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.thread ], [ %i.fq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %i.fq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.thread ], [ %i.fq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ]
  %.pn75.pn.ph = phi { ptr, i32 } [ %i.fe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ], [ %i.fe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88 ], [ %i.fd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.thread ], [ %i.fu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %i.ft, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.thread ], [ %i.fu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ]
  call void @__cxa_free_exception(ptr %.sink) #34
  br label %bb.av

bb.av:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93
  %.pn75.pn = phi { ptr, i32 } [ %i.fu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ], [ %i.fe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88 ], [ %i.fu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %i.fe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ], [ %.pn75.pn.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  br label %bb.aw

bb.aw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %bb.ad, %bb.av
  %.pn78.pn = phi { ptr, i32 } [ %.pn78101, %bb.ad ], [ %i.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ], [ %.pn75.pn, %bb.av ], [ %i.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %common.resume

bb.ax:                                            ; preds = %bb.ar, %bb.al, %bb.ab, %bb.m
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5glTF28Accessor11ExtractDataI9aiColor4tItEEEmRPT_PKSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not21.i = icmp eq ptr %i.g, null
  br i1 %.not21.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 296
  %i.i = load ptr, ptr %i.h, align 8
  br label %_ZN5glTF28Accessor10GetPointerEv.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not22.i = icmp eq ptr %i.k, null
  br i1 %.not22.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load ptr, ptr %i.l, align 8
  br label %_ZN5glTF28Accessor10GetPointerEv.exit

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZN5glTF28Accessor10GetPointerEv.exit.thread, label %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.i

_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.i: ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.q = load i32, ptr %i.p, align 8
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3
  %i.z = icmp ugt i64 %i.y, %i.r
  br i1 %i.z, label %bb.f, label %_ZN5glTF28Accessor10GetPointerEv.exit.thread

bb.f:                                             ; preds = %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.i
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.r
  %i.ab = load ptr, ptr %i.aa, align 8            ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 264
  %i.ad = load ptr, ptr %i.ac, align 8            ; 3 uses
  %.not.i18.i = icmp eq ptr %i.ad, null
  br i1 %.not.i18.i, label %_ZN5glTF28Accessor10GetPointerEv.exit.thread, label %_ZNK10glTFCommon3RefIN5glTF26BufferEEcvbEv.exit.i

_ZNK10glTFCommon3RefIN5glTF26BufferEEcvbEv.exit.i: ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 272
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 3
  %i.ao = icmp ugt i64 %i.an, %i.ag
  br i1 %i.ao, label %bb.g, label %_ZN5glTF28Accessor10GetPointerEv.exit.thread

bb.g:                                             ; preds = %_ZNK10glTFCommon3RefIN5glTF26BufferEEcvbEv.exit.i
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ag
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 296
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %_ZN5glTF28Accessor10GetPointerEv.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ab, i64 280
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = add i64 %i.aw, %i.au                    ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 288
  %i.az = load ptr, ptr %i.ay, align 8            ; 4 uses
  %.not16.i = icmp eq ptr %i.az, null
  br i1 %.not16.i, label %.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = load i64, ptr %i.az, align 8            ; 3 uses
  %.not17.i = icmp ult i64 %i.ax, %i.ba
  br i1 %.not17.i, label %.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = add i64 %i.bc, %i.ba
  %i.be = icmp ult i64 %i.ax, %i.bd
  br i1 %i.be, label %bb.k, label %.thread.i

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = sub i64 %i.ax, %i.ba
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bh
  br label %_ZN5glTF28Accessor10GetPointerEv.exit

.thread.i:                                        ; preds = %bb.j, %bb.i, %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ax
  br label %_ZN5glTF28Accessor10GetPointerEv.exit

_ZN5glTF28Accessor10GetPointerEv.exit:            ; preds = %bb.b, %bb.d, %bb.k, %.thread.i
  %.3.i = phi ptr [ %i.i, %bb.b ], [ %i.m, %bb.d ], [ %i.bi, %bb.k ], [ %i.bj, %.thread.i ] ; 6 uses
  %.not = icmp eq ptr %.3.i, null
  br i1 %.not, label %_ZN5glTF28Accessor10GetPointerEv.exit.thread, label %bb.p

_ZN5glTF28Accessor10GetPointerEv.exit.thread:     ; preds = %bb.f, %bb.e, %bb.g, %_ZNK10glTFCommon3RefIN5glTF26BufferEEcvbEv.exit.i, %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.i, %_ZN5glTF28Accessor10GetPointerEv.exit
  %i.bk = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZN5glTF226getContextForErrorMessagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %i.bm)
          to label %bb.l unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.l:                                             ; preds = %_ZN5glTF28Accessor10GetPointerEv.exit.thread
  invoke void @_ZN17DeadlyImportErrorC2IJRA47_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, ptr noundef nonnull align 1 dereferenceable(47) @.str.311, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @__cxa_throw(ptr nonnull %i.bk, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.ax unwind label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZN5glTF28Accessor10GetPointerEv.exit.thread
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  %.061 = phi i1 [ false, %bb.m ], [ true, %bb.l ] ; 2 uses
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bp = load ptr, ptr %4, align 8               ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
end_hunk_12
begin_hunk_13_@_ZN5glTF28Accessor11ExtractDataI9aiColor4tItEEEmRPT_PKSt6vectorIjSaIjEE:bb.a
  br i1 %i.ea, label %bb.ah, label %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.thread.i

bb.ah:                                            ; preds = %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.i87
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.ds
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 288
  %i.ee = load i64, ptr %i.ed, align 8
  br label %_ZN5glTF28Accessor14GetMaxByteSizeEv.exit

_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.thread.i: ; preds = %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.i87, %bb.ag
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.eg = load ptr, ptr %i.ef, align 8            ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 72
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = load ptr, ptr %i.eh, align 8
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = sub i64 %i.el, %i.em
  br label %_ZN5glTF28Accessor14GetMaxByteSizeEv.exit

_ZN5glTF28Accessor14GetMaxByteSizeEv.exit:        ; preds = %bb.af, %bb.ah, %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.thread.i
  %.0.i = phi i64 [ %i.dn, %bb.af ], [ %i.ee, %bb.ah ], [ %i.en, %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.thread.i ] ; 3 uses
  store i64 %.0.i, ptr %i.c, align 8
  %i.eo = icmp ugt i64 %i.cd, 2305843009213693951
  %i.ep = shl i64 %i.cd, 3                        ; 2 uses
  %i.eq = select i1 %i.eo, i64 -1, i64 %i.ep
  %i.er = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.eq) #37 ; 4 uses
  %i.es = icmp eq i64 %i.cd, 0                    ; 2 uses
  br i1 %i.es, label %.loopexit109, label %.loopexit109.thread

.loopexit109:                                     ; preds = %_ZN5glTF28Accessor14GetMaxByteSizeEv.exit
  store ptr %i.er, ptr %1, align 8
  br i1 %.not71, label %bb.ao, label %.loopexit

.loopexit109.thread:                              ; preds = %_ZN5glTF28Accessor14GetMaxByteSizeEv.exit
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.er, i8 0, i64 %i.ep, i1 false)
  store ptr %i.er, ptr %1, align 8
  br i1 %.not71, label %bb.ao, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit109.thread
  %i.et = udiv i64 %.0.i, %i.cz
  %i.eu = and i64 %i.et, 4294967295
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph, %bb.an
  %.051110 = phi i64 [ 0, %.lr.ph ], [ %i.fn, %bb.an ] ; 3 uses
  %i.ev = load ptr, ptr %2, align 8
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %.051110
  %i.ex = load i32, ptr %i.ew, align 4
  %i.ey = zext i32 %i.ex to i64                   ; 2 uses
  %.not74 = icmp samesign ugt i64 %i.eu, %i.ey
  %i.ez = mul i64 %i.cz, %i.ey                    ; 2 uses
  br i1 %.not74, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fa = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  store i64 %i.ez, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZN5glTF226getContextForErrorMessagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %i.fb, ptr noundef nonnull align 8 dereferenceable(32) %i.fc)
          to label %bb.ak unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.thread

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN17DeadlyImportErrorC2IJRA20_KcmRA12_S1_RKmRA5_S1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.fa, ptr noundef nonnull align 1 dereferenceable(20) @.str.315, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 1 dereferenceable(12) @.str.316, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(5) @.str.314, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.al unwind label %bb.am

bb.al:                                            ; preds = %bb.ak
  invoke void @__cxa_throw(ptr nonnull %i.fa, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.ax unwind label %bb.am

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.thread: ; preds = %bb.aj
  %i.fd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  br label %.sink.split

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.047 = phi i1 [ false, %bb.al ], [ true, %bb.ak ] ; 2 uses
  %i.fe = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ff = load ptr, ptr %6, align 8               ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.fh = icmp eq ptr %i.ff, %i.fg
  br i1 %i.fh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %bb.am
  %i.fi = load i64, ptr %i.fg, align 8
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fj) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  br i1 %.047, label %.sink.split, label %bb.av

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  br i1 %.047, label %.sink.split, label %bb.av

bb.an:                                            ; preds = %bb.ai
  %i.fk = load ptr, ptr %1, align 8
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %.051110
  %i.fm = getelementptr inbounds nuw i8, ptr %.3.i, i64 %i.ez
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.fl, ptr nonnull align 1 %i.fm, i64 %i.cx, i1 false)
  %i.fn = add nuw i64 %.051110, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.fn, %i.cd
  br i1 %exitcond.not, label %.loopexit, label %bb.ai, !llvm.loop !1102

bb.ao:                                            ; preds = %.loopexit109.thread, %.loopexit109
  %i.fo = mul i64 %i.cz, %i.cd                    ; 2 uses
  %i.fp = icmp ugt i64 %i.fo, %.0.i
  br i1 %i.fp, label %bb.ap, label %bb.at

bb.ap:                                            ; preds = %bb.ao
  %i.fq = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  store i64 %i.fo, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZN5glTF226getContextForErrorMessagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %i.fr, ptr noundef nonnull align 8 dereferenceable(32) %i.fs)
          to label %bb.aq unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.thread

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN17DeadlyImportErrorC2IJRA20_KcmRA12_S1_RKmRA5_S1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.fq, ptr noundef nonnull align 1 dereferenceable(20) @.str.317, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 1 dereferenceable(12) @.str.316, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(5) @.str.314, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.ar unwind label %bb.as

bb.ar:                                            ; preds = %bb.aq
  invoke void @__cxa_throw(ptr nonnull %i.fq, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.ax unwind label %bb.as

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.thread: ; preds = %bb.ap
  %i.ft = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  br label %.sink.split

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.046 = phi i1 [ false, %bb.ar ], [ true, %bb.aq ] ; 2 uses
  %i.fu = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fv = load ptr, ptr %7, align 8               ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.fx = icmp eq ptr %i.fv, %i.fw
  br i1 %i.fx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %bb.as
  %i.fy = load i64, ptr %i.fw, align 8
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fz) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  br i1 %.046, label %.sink.split, label %bb.av

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  br i1 %.046, label %.sink.split, label %bb.av

bb.at:                                            ; preds = %bb.ao
  %i.ga = icmp eq i32 %i.cw, 8
  %i.gb = icmp eq i64 %i.cz, 8
  %or.cond = and i1 %i.gb, %i.ga
  br i1 %or.cond, label %bb.au, label %.preheader

.preheader:                                       ; preds = %bb.at
  br i1 %i.es, label %.loopexit, label %.lr.ph112.preheader

.lr.ph112.preheader:                              ; preds = %.preheader
  %xtraiter = and i64 %i.cd, 1
  %i.gc = icmp eq i64 %i.cd, 1
  br i1 %i.gc, label %.lr.ph112.epil.preheader, label %.lr.ph112.preheader.new

.lr.ph112.preheader.new:                          ; preds = %.lr.ph112.preheader
  %unroll_iter = and i64 %i.cd, -2
  br label %.lr.ph112

bb.au:                                            ; preds = %bb.at
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.er, ptr nonnull align 1 %.3.i, i64 %i.cy, i1 false)
  br label %.loopexit

.lr.ph112:                                        ; preds = %.lr.ph112, %.lr.ph112.preheader.new
  %.0111 = phi i64 [ 0, %.lr.ph112.preheader.new ], [ %i.gm, %.lr.ph112 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph112.preheader.new ], [ %niter.next.1, %.lr.ph112 ]
  %i.gd = load ptr, ptr %1, align 8
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %.0111
  %i.gf = mul i64 %.0111, %i.cz
  %i.gg = getelementptr inbounds nuw i8, ptr %.3.i, i64 %i.gf
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.ge, ptr nonnull align 1 %i.gg, i64 %i.cx, i1 false)
  %i.gh = or disjoint i64 %.0111, 1               ; 2 uses
  %i.gi = load ptr, ptr %1, align 8
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %i.gh
  %i.gk = mul i64 %i.gh, %i.cz
  %i.gl = getelementptr inbounds nuw i8, ptr %.3.i, i64 %i.gk
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.gj, ptr nonnull align 1 %i.gl, i64 %i.cx, i1 false)
  %i.gm = add nuw i64 %.0111, 2                   ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph112, !llvm.loop !1103

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph112
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph112.epil.preheader

.lr.ph112.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph112.preheader
  %.0111.epil.init = phi i64 [ 0, %.lr.ph112.preheader ], [ %i.gm, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod155 = trunc i64 %i.cd to i1
  tail call void @llvm.assume(i1 %lcmp.mod155)
  %i.gn = load ptr, ptr %1, align 8
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %.0111.epil.init
  %i.gp = mul i64 %.0111.epil.init, %i.cz
  %i.gq = getelementptr inbounds nuw i8, ptr %.3.i, i64 %i.gp
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.go, ptr nonnull align 1 %i.gq, i64 %i.cx, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.an, %.lr.ph112.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.loopexit109, %.preheader, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  ret i64 %i.cd

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88
  %.sink = phi ptr [ %i.fa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ], [ %i.fa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88 ], [ %i.fa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.thread ], [ %i.fq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %i.fq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.thread ], [ %i.fq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ]
  %.pn75.pn.ph = phi { ptr, i32 } [ %i.fe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ], [ %i.fe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88 ], [ %i.fd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.thread ], [ %i.fu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %i.ft, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.thread ], [ %i.fu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ]
  call void @__cxa_free_exception(ptr %.sink) #34
  br label %bb.av

bb.av:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93
  %.pn75.pn = phi { ptr, i32 } [ %i.fu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ], [ %i.fe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88 ], [ %i.fu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %i.fe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ], [ %.pn75.pn.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  br label %bb.aw

bb.aw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %bb.ad, %bb.av
  %.pn78.pn = phi { ptr, i32 } [ %.pn78101, %bb.ad ], [ %i.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ], [ %.pn75.pn, %bb.av ], [ %i.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %common.resume

bb.ax:                                            ; preds = %bb.ar, %bb.al, %bb.ab, %bb.m
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJRA11_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA34_S2_ERmEESA_NS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(11) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(34) %6) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load i64, ptr %3, align 8
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(376) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %7, ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN6Assimp6Logger13formatMessageIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA34_KcERA11_S9_EES7_NS_9Formatter15basic_formatterIcS5_S6_EEOT0_DpOT_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull %7, ptr noundef nonnull align 1 dereferenceable(11) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(34) %6)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %7, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %7, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #35
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #34
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #34
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %7) #34
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA34_KcERA11_S9_EES7_NS_9Formatter15basic_formatterIcS5_S6_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(11) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(34) %5) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(11) %3) #34
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull align 1 dereferenceable(11) %3, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %6, ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN6Assimp6Logger13formatMessageIJRA34_KcERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_NS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(34) %5)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %6, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %6, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #35
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #34
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #34
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %6) #34
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJRA11_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA50_S2_ERmEESA_NS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(11) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(50) %6) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load i64, ptr %3, align 8
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(376) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %7, ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN6Assimp6Logger13formatMessageIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA50_KcERA11_S9_EES7_NS_9Formatter15basic_formatterIcS5_S6_EEOT0_DpOT_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull %7, ptr noundef nonnull align 1 dereferenceable(11) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(50) %6)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %7, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %7, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #35
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #34
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #34
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %7) #34
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA50_KcERA11_S9_EES7_NS_9Formatter15basic_formatterIcS5_S6_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(11) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(50) %5) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(11) %3) #34
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull align 1 dereferenceable(11) %3, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %6, ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN6Assimp6Logger13formatMessageIJRA50_KcERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_NS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(50) %5)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %6, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
end_hunk_13
