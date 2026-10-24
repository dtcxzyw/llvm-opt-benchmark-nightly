Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/guiFormSpecMenu?download=true
inline.NumInlined: 8823
inline.NumDeleted: 2297
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN15GUIFormSpecMenu8drawMenuEv:bb.a
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.0194.0279, i64 8
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !251
  call void @_Z12utf8_to_wideB5cxx11St17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i64 %i.eq, ptr %i.eo)
  invoke void @_ZN15GUIFormSpecMenu11showTooltipERKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEERKN5video6SColorESB_(ptr noundef nonnull align 8 dereferenceable(2236) %0, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.ef, ptr noundef nonnull align 4 dereferenceable(4) %i.eg)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.er = load ptr, ptr %4, align 8, !tbaa !326   ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.eh
  br i1 %i.es, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %bb.t
  %i.et = load i64, ptr %i.eh, align 8, !tbaa !252
  %i.eu = shl i64 %i.et, 2
  %i.ev = add i64 %i.eu, 4
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.ev) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0194.0279, i64 32 ; 2 uses
  %.not258.a = icmp eq ptr %i.ew, %i.ee
  br i1 %.not258.a, label %._crit_edge282, label %bb.s

bb.u:                                             ; preds = %bb.s
  %i.ex = landingpad { ptr, i32 }
          cleanup
  %i.ey = load ptr, ptr %4, align 8, !tbaa !326   ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.eh
  br i1 %i.ez, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit169, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i167

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i167: ; preds = %bb.u
  %i.fa = load i64, ptr %i.eh, align 8, !tbaa !252
  %i.fb = shl i64 %i.fa, 2
  %i.fc = add i64 %i.fb, 4
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fc) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit169

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit169: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i167
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.aw

._crit_edge282.thread:                            ; preds = %._crit_edge277, %._crit_edge282
  %i.fd = load ptr, ptr %i.ae, align 8, !tbaa !292
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.fe = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.fe, i8 0, i64 280, i1 false)
  %i.ff = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.ff, ptr %5, align 8, !tbaa !250
  %i.fg = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.fg, align 8, !tbaa !251
  %i.fh = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i16 0, ptr %i.fh, align 8, !tbaa !266
  %i.fi = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  %i.fj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTT17ItemStackMetadata, i64 8), align 8 ; 2 uses
  store ptr %i.fj, ptr %i.fi, align 8, !tbaa !72
  %i.fk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTT17ItemStackMetadata, i64 16), align 8
  %i.fl = getelementptr i8, ptr %i.fj, i64 -80
  %i.fm = load i64, ptr %i.fl, align 8
  %i.fn = getelementptr inbounds i8, ptr %i.fi, i64 %i.fm
  store ptr %i.fk, ptr %i.fn, align 8, !tbaa !72
  %i.fo = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i8 0, ptr %i.fo, align 8, !tbaa !268
  %i.fp = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.fq = getelementptr inbounds nuw i8, ptr %5, i64 104
  store ptr %i.fq, ptr %i.fp, align 8, !tbaa !269
  %i.fr = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 1, ptr %i.fr, align 8, !tbaa !270
  %i.fs = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.ft = getelementptr inbounds nuw i8, ptr %5, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fs, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ft, align 8, !tbaa !243
  %i.fu = getelementptr inbounds nuw i8, ptr %5, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fu, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-80, 72) (i8, ptr @_ZTV17ItemStackMetadata, i64 80), ptr %i.fi, align 8, !tbaa !72
  %i.fv = getelementptr inbounds nuw i8, ptr %5, i64 224
  store i8 0, ptr %i.fv, align 8, !tbaa !271
  %i.fw = getelementptr inbounds nuw i8, ptr %5, i64 288
  store i8 0, ptr %i.fw, align 8, !tbaa !272
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 728
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !249
  invoke void @_Z13drawItemStackPN5video12IVideoDriverEPN3gui8IGUIFontERK9ItemStackRKN4core4rectIiEEPSB_P6Client16ItemRotationKind(ptr noundef nonnull %i.ax, ptr noundef %i.fd, ptr noundef nonnull align 8 dereferenceable(296) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef null, ptr noundef %i.fy, i32 noundef 1)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %._crit_edge282.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @_ZN17ItemStackMetadataD2Ev(ptr noundef nonnull align 8 dereferenceable(256) %i.fi, ptr noundef nonnull @_ZTT17ItemStackMetadata) #32
  %i.fz = load ptr, ptr %5, align 8, !tbaa !253   ; 2 uses
  %i.ga = icmp eq ptr %i.fz, %i.ff
  br i1 %i.ga, label %_ZN9ItemStackD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.v
  %i.gb = load i64, ptr %i.ff, align 8, !tbaa !252
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gc) #33
  br label %_ZN9ItemStackD2Ev.exit

_ZN9ItemStackD2Ev.exit:                           ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %bb.x

bb.w:                                             ; preds = %._crit_edge282.thread
  %i.gd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @_ZN9ItemStackD2Ev(ptr noundef nonnull align 8 dead_on_return(296) dereferenceable(296) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %bb.aw

bb.x:                                             ; preds = %_ZN9ItemStackD2Ev.exit, %._crit_edge282
  %i.ge = load ptr, ptr %i.u, align 8, !tbaa !380 ; 2 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !72
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 176
  %i.gh = load ptr, ptr %i.gg, align 8
  %i.gi = call noundef ptr %i.gh(ptr noundef nonnull align 8 dereferenceable(8) %i.ge) ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.gk = load ptr, ptr %i.gi, align 8, !tbaa !72
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 32
  %i.gm = load ptr, ptr %i.gl, align 8
  %i.gn = call noundef ptr %i.gm(ptr noundef nonnull align 8 dereferenceable(308) %i.gi, ptr noundef nonnull align 4 dereferenceable(8) %i.gj) ; 3 uses
  %i.go = load ptr, ptr @_ZN15RenderingEngine11s_singletonE, align 8, !tbaa !569 ; 2 uses
  %.not.i170 = icmp eq ptr %i.go, null
  br i1 %.not.i170, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !580 ; 3 uses
  %.not2.i = icmp eq ptr %i.gq, null
  br i1 %.not2.i, label %bb.z, label %_ZN15RenderingEngine14get_raw_deviceEv.exit

bb.z:                                             ; preds = %bb.y, %bb.x
  call void @_Z15sanity_check_fnPKcS0_jS0_(ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.228, i32 noundef 117, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN15RenderingEngine14get_raw_deviceEv) #36
  unreachable

_ZN15RenderingEngine14get_raw_deviceEv.exit:      ; preds = %bb.y
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !72
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 56
  %i.gt = load ptr, ptr %i.gs, align 8
  %i.gu = call noundef ptr %i.gt(ptr noundef nonnull align 8 dereferenceable(8) %i.gq) ; 5 uses
  %i.gv = icmp ne ptr %i.gu, null                 ; 4 uses
  br i1 %i.gv, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN15RenderingEngine14get_raw_deviceEv.exit
  %i.gw = load ptr, ptr %i.gu, align 8, !tbaa !72
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 88
  %i.gy = load ptr, ptr %i.gx, align 8
  %i.gz = call noundef i32 %i.gy(ptr noundef nonnull align 8 dereferenceable(8) %i.gu)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZN15RenderingEngine14get_raw_deviceEv.exit
  %.0132 = phi i32 [ %i.gz, %bb.aa ], [ 0, %_ZN15RenderingEngine14get_raw_deviceEv.exit ] ; 3 uses
  %.not146 = icmp eq ptr %i.gn, null
  br i1 %.not146, label %.critedge157, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 2136
  %i.hb = load i8, ptr %i.ha, align 8, !tbaa !289, !range !309, !noundef !310
  %i.hc = trunc nuw i8 %i.hb to i1
  br i1 %i.hc, label %bb.ad, label %.preheader

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gn, i64 80
  %i.he = load <2 x i64>, ptr %i.hd, align 8, !tbaa !387
  store <2 x i64> %i.he, ptr %7, align 16
  %i.hf = load ptr, ptr %i.ax, align 8, !tbaa !72
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 424
  %i.hh = load ptr, ptr %i.hg, align 8
  call void %i.hh(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, i32 587202304, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %.preheader

.preheader:                                       ; preds = %bb.ad, %bb.ac
  br label %bb.ae

bb.ae:                                            ; preds = %.preheader, %bb.af
  %.0126283 = phi ptr [ %i.hn, %bb.af ], [ %i.gn, %.preheader ] ; 3 uses
  %i.hi = load ptr, ptr %.0126283, align 8, !tbaa !72
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 192
  %i.hk = load ptr, ptr %i.hj, align 8
  %i.hl = call noundef i32 %i.hk(ptr noundef nonnull align 8 dereferenceable(308) %.0126283) ; 4 uses
  %.not148 = icmp eq i32 %i.hl, -1
  br i1 %.not148, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.hm = getelementptr inbounds nuw i8, ptr %.0126283, i64 32
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !468 ; 2 uses
  %.not147 = icmp eq ptr %i.hn, null
  br i1 %.not147, label %bb.aj, label %bb.ae, !llvm.loop !1007

bb.ag:                                            ; preds = %bb.ae
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 1992 ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !278
  %i.hq = icmp eq i32 %i.hl, %i.hp
  br i1 %i.hq, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 1984
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !277
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.ht = call i32 @clock_gettime(i32 noundef 4, ptr noundef nonnull %2) #32 ; 0 uses
  %i.hu = load i64, ptr %2, align 8, !tbaa !1009
  %i.hv = mul i64 %i.hu, 1000
  %i.hw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !1010
  %i.hy = udiv i64 %i.hx, 1000000
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  %i.hz = sub i64 %i.hv, %i.hs
  %12 = add i64 %i.hz, %i.hy
  %.0.i = call noundef i64 @llvm.abs.i64(i64 %12, i1 true)
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  %i.ia = call i32 @clock_gettime(i32 noundef 4, ptr noundef nonnull %1) #32 ; 0 uses
  %i.ib = load i64, ptr %1, align 8, !tbaa !1009
  %i.ic = mul i64 %i.ib, 1000
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !1010
  %i.if = udiv i64 %i.ie, 1000000
  %i.ig = add i64 %i.if, %i.ic
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 1984
  store i64 %i.ig, ptr %i.ih, align 8, !tbaa !277
  store i32 %i.hl, ptr %i.ho, align 8, !tbaa !278
  br label %bb.ak

bb.aj:                                            ; preds = %bb.af
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 1992
  store i32 -1, ptr %i.ii, align 8, !tbaa !278
  br label %.critedge157

bb.ak:                                            ; preds = %bb.ah, %bb.ai
  %.0125.ph = phi i64 [ 0, %bb.ai ], [ %.0.i, %bb.ah ]
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !567 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !567 ; 2 uses
  %.not259284 = icmp eq ptr %i.ik, %i.im
  br i1 %.not259284, label %._crit_edge288, label %.lr.ph287

.lr.ph287:                                        ; preds = %bb.ak, %bb.ar
  %.sroa.0186.0285 = phi ptr [ %i.je, %bb.ar ], [ %i.ik, %bb.ak ] ; 7 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.0186.0285, i64 128
  %i.io = load i32, ptr %i.in, align 8, !tbaa !460
  %.not150.not = icmp eq i32 %i.io, %i.hl
  br i1 %.not150.not, label %bb.al, label %bb.ar

bb.al:                                            ; preds = %.lr.ph287
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 1968
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !299
  %.not151 = icmp ult i64 %.0125.ph, %i.iq
  br i1 %.not151, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 3 uses
  %i.is = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN15GUIFormSpecMenu11TooltipSpecESt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_(ptr noundef nonnull align 8 dereferenceable(48) %i.ir, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0186.0285) ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !457
  %i.iv = icmp eq i64 %i.iu, 0
  br i1 %i.iv, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.iw = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN15GUIFormSpecMenu11TooltipSpecESt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_(ptr noundef nonnull align 8 dereferenceable(48) %i.ir, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0186.0285)
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 36
  %i.iy = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN15GUIFormSpecMenu11TooltipSpecESt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_(ptr noundef nonnull align 8 dereferenceable(48) %i.ir, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0186.0285)
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 32
  call void @_ZN15GUIFormSpecMenu11showTooltipERKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEERKN5video6SColorESB_(ptr noundef nonnull align 8 dereferenceable(2236) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.is, ptr noundef nonnull align 4 dereferenceable(4) %i.ix, ptr noundef nonnull align 4 dereferenceable(4) %i.iz)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an, %bb.al
  br i1 %i.gv, label %bb.ap, label %.thread245

bb.ap:                                            ; preds = %bb.ao
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.0186.0285, i64 136
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !472
  %.not152 = icmp eq i32 %i.jb, 8
  br i1 %.not152, label %.thread245, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.0186.0285, i64 148
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !475 ; 2 uses
  %.not153 = icmp eq i32 %.0132, %i.jd
  br i1 %.not153, label %.thread245, label %.thread245.sink.split

bb.ar:                                            ; preds = %.lr.ph287
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.0186.0285, i64 192 ; 2 uses
  %.not259 = icmp eq ptr %i.je, %i.im
  br i1 %.not259, label %._crit_edge288, label %.lr.ph287

._crit_edge288:                                   ; preds = %bb.ar, %bb.ak
  %i.jf = icmp ne i32 %.0132, 0
  %or.cond = and i1 %i.gv, %i.jf
  br i1 %or.cond, label %.thread245.sink.split, label %.thread245

.critedge157:                                     ; preds = %bb.aj, %bb.ab
  %.old = icmp ne i32 %.0132, 0
  %or.cond.old = and i1 %i.gv, %.old
  br i1 %or.cond.old, label %.thread245.sink.split, label %.thread245

.thread245.sink.split:                            ; preds = %.critedge157, %._crit_edge288, %bb.aq
  %.sink = phi i32 [ %i.jd, %bb.aq ], [ 0, %._crit_edge288 ], [ 0, %.critedge157 ]
  %i.jg = load ptr, ptr %i.gu, align 8, !tbaa !72
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 80
  %i.ji = load ptr, ptr %i.jh, align 8
  call void %i.ji(ptr noundef nonnull align 8 dereferenceable(8) %i.gu, i32 noundef %.sink)
  br label %.thread245

.thread245:                                       ; preds = %.thread245.sink.split, %bb.ao, %bb.ap, %bb.aq, %.critedge157, %._crit_edge288
  %i.jj = load ptr, ptr %i.u, align 8, !tbaa !380 ; 2 uses
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !72
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  %i.jm = load ptr, ptr %i.jl, align 8
  %i.jn = call noundef ptr %i.jm(ptr noundef nonnull align 8 dereferenceable(8) %i.jj) ; 4 uses
  %.not154 = icmp eq ptr %i.jn, null
  br i1 %.not154, label %bb.av, label %bb.as

bb.as:                                            ; preds = %.thread245
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 2137
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !290, !range !309, !noundef !310
  %i.jq = trunc nuw i8 %i.jp to i1
  br i1 %i.jq, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jn, i64 268
  %i.js = load i8, ptr %i.jr, align 4, !tbaa !467, !range !309, !noundef !310
  %i.jt = trunc nuw i8 %i.js to i1
  br i1 %i.jt, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jn, i64 80
  %.sroa.0.0.copyload.i177 = load i64, ptr %i.ju, align 8, !tbaa !387 ; 4 uses
  %.sroa.2.0..sroa_idx.i178 = getelementptr inbounds nuw i8, ptr %i.jn, i64 88
  %.sroa.2.0.copyload.i179 = load i64, ptr %.sroa.2.0..sroa_idx.i178, align 8, !tbaa !387 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  %.sroa.08.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i177 to i32 ; 2 uses
  %.sroa.08.4.extract.shift = lshr i64 %.sroa.0.0.copyload.i177, 32
  %.sroa.08.4.extract.trunc = trunc nuw i64 %.sroa.08.4.extract.shift to i32 ; 2 uses
  %.sroa.11.8.extract.trunc = trunc i64 %.sroa.2.0.copyload.i179 to i32 ; 2 uses
  %i.jv = add nsw i32 %.sroa.08.4.extract.trunc, 2
  store i64 %.sroa.0.0.copyload.i177, ptr %8, align 8
  %i.jw = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.sroa.11.8.extract.trunc, ptr %i.jw, align 8, !tbaa !458
  %i.jx = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 %i.jv, ptr %i.jx, align 4, !tbaa !459
  %i.jy = load ptr, ptr %i.ax, align 8, !tbaa !72
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 424
  %i.ka = load ptr, ptr %i.jz, align 8
  call void %i.ka(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, i32 -1, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  %.sroa.11.12.extract.shift = lshr i64 %.sroa.2.0.copyload.i179, 32
  %.sroa.11.12.extract.trunc = trunc nuw i64 %.sroa.11.12.extract.shift to i32 ; 2 uses
  %i.kb = add nsw i32 %.sroa.11.12.extract.trunc, -2
  store i32 %.sroa.08.0.extract.trunc, ptr %9, align 4, !tbaa !458
  %i.kc = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 %i.kb, ptr %i.kc, align 4, !tbaa !459
  %i.kd = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %.sroa.2.0.copyload.i179, ptr %i.kd, align 4
  %i.ke = load ptr, ptr %i.ax, align 8, !tbaa !72
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 424
  %i.kg = load ptr, ptr %i.kf, align 8
  call void %i.kg(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, i32 -1, ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  %i.kh = add nsw i32 %.sroa.08.0.extract.trunc, 2
  store i64 %.sroa.0.0.copyload.i177, ptr %10, align 8
  %i.ki = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %i.kh, ptr %i.ki, align 8, !tbaa !458
  %i.kj = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 %.sroa.11.12.extract.trunc, ptr %i.kj, align 4, !tbaa !459
  %i.kk = load ptr, ptr %i.ax, align 8, !tbaa !72
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 424
  %i.km = load ptr, ptr %i.kl, align 8
  call void %i.km(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, i32 -1, ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  %i.kn = add nsw i32 %.sroa.11.8.extract.trunc, -2
  store i32 %i.kn, ptr %11, align 4, !tbaa !458
  %i.ko = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i32 %.sroa.08.4.extract.trunc, ptr %i.ko, align 4, !tbaa !459
  %i.kp = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %.sroa.2.0.copyload.i179, ptr %i.kp, align 4
  %i.kq = load ptr, ptr %i.ax, align 8, !tbaa !72
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 424
  %i.ks = load ptr, ptr %i.kr, align 8
  call void %i.ks(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, i32 -1, ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.as, %.thread245
  %i.kt = load ptr, ptr %i.bv, align 8, !tbaa !276 ; 2 uses
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !72
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 80
  %i.kw = load ptr, ptr %i.kv, align 8
  call void %i.kw(ptr noundef nonnull align 8 dereferenceable(308) %i.kt)
  call void @_ZN15GUIFormSpecMenu16drawSelectedItemEv(ptr noundef nonnull align 8 dereferenceable(2236) %0)
  %i.kx = load ptr, ptr %i.z, align 8, !tbaa !72
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 72
  %i.kz = load ptr, ptr %i.ky, align 8
  call void %i.kz(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef %i.ad, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void

bb.aw:                                            ; preds = %bb.w, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit169
  %.pn = phi { ptr, i32 } [ %i.ex, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit169 ], [ %i.gd, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  resume { ptr, i32 } %.pn
}

end_hunk_0
begin_hunk_1_@_GLOBAL__sub_I_guiFormSpecMenu.cpp:bb.a
_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS7_10parserDataERKS5_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairISB_SE_EEEC2ESt16initializer_listISK_EmRKSG_RKSI_RKSL_.exit.i: ; preds = %.noexc637.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev.exit.i, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS7_10parserDataERKS5_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairISB_SE_EEEC2ESt16initializer_listISK_EmRKSG_RKSI_RKSL_.exit.i
  %i.mq = phi ptr [ %i.mp, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS7_10parserDataERKS5_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairISB_SE_EEEC2ESt16initializer_listISK_EmRKSG_RKSI_RKSL_.exit.i ], [ %i.mr, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev.exit.i ] ; 4 uses
  %i.mr = getelementptr inbounds i8, ptr %i.mq, i64 -64 ; 3 uses
  %i.ms = getelementptr inbounds i8, ptr %i.mq, i64 -16
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !560 ; 2 uses
  %.not.i.i667.i = icmp eq ptr %i.mt, null
  br i1 %.not.i.i667.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.mu = getelementptr inbounds i8, ptr %i.mq, i64 -32 ; 2 uses
  %i.mv = invoke noundef zeroext i1 %i.mt(ptr noundef nonnull align 8 dereferenceable(32) %i.mu, ptr noundef nonnull align 8 dereferenceable(32) %i.mu, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.mw = landingpad { ptr, i32 }
          catch ptr null
  %i.mx = extractvalue { ptr, i32 } %i.mw, 0
  call void @__clang_call_terminate(ptr %i.mx) #34
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i:               ; preds = %bb.c, %bb.b
  %i.my = load ptr, ptr %i.mr, align 8, !tbaa !253 ; 2 uses
  %i.mz = getelementptr inbounds i8, ptr %i.mq, i64 -48 ; 2 uses
  %i.na = icmp eq ptr %i.my, %i.mz
  br i1 %i.na, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i
  %i.nb = load i64, ptr %i.mz, align 8, !tbaa !252
  %i.nc = add i64 %i.nb, 1
  call void @_ZdlPvm(ptr noundef %i.my, i64 noundef %i.nc) #33
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev.exit.i

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev.exit.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.nd = icmp eq ptr %i.mr, %0
  br i1 %i.nd, label %__cxx_global_var_init.exit, label %bb.b

bb.e:                                             ; preds = %bb.a
  %i.ne = landingpad { ptr, i32 }
          cleanup
  br label %.preheader.preheader.i

bb.f:                                             ; preds = %.noexc445.i
  %i.nf = landingpad { ptr, i32 }
          cleanup
  br label %.preheader.preheader.i

bb.g:                                             ; preds = %.noexc453.i
  %i.ng = landingpad { ptr, i32 }
          cleanup
  br label %.preheader.preheader.i

bb.h:                                             ; preds = %.noexc515.i
  %i.nh = landingpad { ptr, i32 }
          cleanup
  br label %.preheader.preheader.i

bb.i:                                             ; preds = %.noexc532.i
  %i.ni = landingpad { ptr, i32 }
          cleanup
  br label %.preheader.preheader.i

bb.j:                                             ; preds = %.noexc593.i
  %i.nj = landingpad { ptr, i32 }
          cleanup
  br label %.preheader.preheader.i

bb.k:                                             ; preds = %.noexc619.i
  %i.nk = landingpad { ptr, i32 }
          cleanup
  br label %.preheader.preheader.i

bb.l:                                             ; preds = %.noexc628.i
  %i.nl = landingpad { ptr, i32 }
          cleanup
  br label %.preheader.preheader.i

.thread.loopexit.i:                               ; preds = %.noexc637.i
  %i.nm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.mi) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.mb) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.lu) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.lk) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.la) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.kq) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.kj) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.kc) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.js) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.jl) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.je) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.ix) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.iq) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.ij) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.ic) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.hs) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.hl) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.hb) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.gu) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.gn) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.gg) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.fz) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.fs) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.fl) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.fb) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.er) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.ek) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.ed) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.dw) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.dp) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.di) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.db) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.cu) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.cn) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.cg) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.bz) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.bs) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.bl) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.be) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.ax) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.aq) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.aj) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.ac) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.v) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.o) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) #32
  br label %.thread.i

.preheader.preheader.i:                           ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %.44230.i = phi ptr [ %i.js, %bb.i ], [ %i.hb, %bb.g ], [ %i.er, %bb.e ], [ %i.lk, %bb.l ], [ %i.la, %bb.k ], [ %i.kq, %bb.j ], [ %i.hs, %bb.h ], [ %i.fb, %bb.f ]
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.ni, %bb.i ], [ %i.ng, %bb.g ], [ %i.ne, %bb.e ], [ %i.nl, %bb.l ], [ %i.nk, %bb.k ], [ %i.nj, %bb.j ], [ %i.nh, %bb.h ], [ %i.nf, %bb.f ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i
  %i.nn = phi ptr [ %i.no, %.preheader.i ], [ %.44230.i, %.preheader.preheader.i ]
  %i.no = getelementptr inbounds i8, ptr %i.nn, i64 -64 ; 3 uses
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.no) #32
  %i.np = icmp eq ptr %i.no, %0
  br i1 %i.np, label %.thread.i, label %.preheader.i

.thread.i:                                        ; preds = %.preheader.i, %.thread.loopexit.i
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn762.i = phi { ptr, i32 } [ %i.nm, %.thread.loopexit.i ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %.preheader.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #32
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn762.i

__cxx_global_var_init.exit:                       ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS8_10parserDataERS6_EEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #32
  %i.nq = call i32 @__cxa_atexit(ptr nonnull @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvP15GUIFormSpecMenuPNS7_10parserDataERKS5_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairISB_SE_EEED2Ev, ptr nonnull @_ZN15GUIFormSpecMenu15element_parsersB5cxx11E, ptr nonnull @__dso_handle) #32 ; 0 uses
  ret void
}

declare extern_weak void @_ZTH11errorstream() #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #28

declare extern_weak void @_ZTH13warningstream() #1

declare extern_weak void @_ZTH10infostream() #1

declare extern_weak void @_ZTH13verbosestream() #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.usub.sat.i16(i16, i16) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nounwind willreturn uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nofree norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind }
attributes #21 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nocallback nofree nounwind willreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nobuiltin nounwind allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #32 = { nounwind }
attributes #33 = { builtin nounwind }
attributes #34 = { noreturn nounwind }
attributes #35 = { builtin allocsize(0) }
attributes #36 = { noreturn }
attributes #37 = { nounwind willreturn memory(read) }
attributes #38 = { nounwind allocsize(0) }

!llvm.module.flags = !{!62, !63, !64}
!llvm.ident = !{!65}
!llvm.errno.tbaa = !{!70}

!0 = distinct !{!0, !307}
!1 = distinct !{!1, !307}
!2 = distinct !{!2, !307}
!3 = distinct !{!3, !307}
!4 = distinct !{!4, !307}
!5 = distinct !{!5, !307}
!6 = distinct !{!6, !307}
!7 = distinct !{!7, !307}
!8 = distinct !{!8, !307}
!9 = distinct !{null}
!10 = distinct !{null}
!11 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null, null, null, null}
!12 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null}
!13 = distinct !{null}
!14 = distinct !{null}
!15 = distinct !{null}
!16 = distinct !{null}
!17 = distinct !{null}
!18 = distinct !{!18, !307}
!19 = distinct !{null}
!20 = distinct !{null}
!21 = distinct !{null}
!22 = distinct !{null}
!23 = distinct !{null}
!24 = distinct !{null}
!25 = distinct !{!25, !307}
!26 = distinct !{!26, !307}
!27 = distinct !{!27, !307}
!28 = distinct !{null}
!29 = distinct !{null}
!30 = distinct !{null}
!31 = distinct !{!31, !307}
!32 = distinct !{!32, !307}
!33 = distinct !{null}
!34 = distinct !{null, null}
!35 = distinct !{null}
!36 = distinct !{null}
!37 = distinct !{null}
!38 = distinct !{null}
!39 = distinct !{null}
!40 = distinct !{!40, !307}
!41 = distinct !{!41, !307}
!42 = distinct !{null}
!43 = distinct !{!43, !307}
!44 = distinct !{!44, !307}
!45 = distinct !{!45, !307}
!46 = distinct !{!46, !307}
!47 = distinct !{!47, !307}
!48 = distinct !{!48, !307}
!49 = distinct !{!49, !307}
!50 = distinct !{!50, !307}
!51 = distinct !{!51, !307}
!52 = distinct !{!52, !307}
!53 = distinct !{!53, !307}
!54 = distinct !{!54, !307}
!55 = distinct !{!55, !307}
!56 = distinct !{null, null}
!57 = distinct !{null, null, null}
!58 = distinct !{!58, !307}
!59 = distinct !{null, null, null}
!60 = distinct !{!60, !307}
!61 = distinct !{!61, !307}
!62 = !{i32 8, !"PIC Level", i32 2}
!63 = !{i32 7, !"PIE Level", i32 2}
!64 = !{i32 7, !"uwtable", i32 2}
!65 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!66 = !{!"Simple C++ TBAA"}
!67 = !{!"omnipotent char", !66, i64 0}
!68 = !{!"int", !67, i64 0}
!69 = !{!"__libc_errno", !68, i64 0}
!70 = !{!69, !68, i64 0}
!71 = !{!"vtable pointer", !66, i64 0}
!72 = !{!71, !71, i64 0}
!73 = !{!"_ZTS14IEventReceiver"}
!74 = !{!"any pointer", !67, i64 0}
!75 = !{!"p1 _ZTSNSt8__detail15_List_node_baseE", !74, i64 0}
!76 = !{!"_ZTSNSt8__detail15_List_node_baseE", !75, i64 0, !75, i64 8}
!77 = !{!"long", !67, i64 0}
!78 = !{!"_ZTSNSt8__detail17_List_node_headerE", !76, i64 0, !77, i64 16}
!79 = !{!"_ZTSNSt7__cxx1110_List_baseIPN3gui11IGUIElementESaIS3_EE10_List_implE", !78, i64 0}
!80 = !{!"_ZTSNSt7__cxx1110_List_baseIPN3gui11IGUIElementESaIS3_EEE", !79, i64 0}
!81 = !{!"_ZTSNSt7__cxx114listIPN3gui11IGUIElementESaIS3_EEE", !80, i64 0}
!82 = !{!"p1 _ZTSN3gui11IGUIElementE", !74, i64 0}
!83 = !{!"_ZTSSt14_List_iteratorIPN3gui11IGUIElementEE", !75, i64 0}
!84 = !{!"_ZTSN4core8vector2dIiEE", !68, i64 0, !68, i64 4}
!85 = !{!"_ZTSN4core4rectIiEE", !84, i64 0, !84, i64 8}
!86 = !{!"float", !67, i64 0}
!87 = !{!"_ZTSN4core8vector2dIfEE", !86, i64 0, !86, i64 4}
!88 = !{!"_ZTSN4core4rectIfEE", !87, i64 0, !87, i64 8}
!89 = !{!"_ZTSN4core11dimension2dIjEE", !68, i64 0, !68, i64 4}
!90 = !{!"bool", !67, i64 0}
!91 = !{!"p1 wchar_t", !74, i64 0}
!92 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE12_Alloc_hiderE", !91, i64 0}
!93 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE", !92, i64 0, !77, i64 8, !67, i64 16}
!94 = !{!"_ZTSN4core6stringIwEE", !93, i64 0}
!95 = !{!"p1 omnipotent char", !74, i64 0}
!96 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !95, i64 0}
!97 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !96, i64 0, !77, i64 8, !67, i64 16}
!98 = !{!"_ZTSN4core6stringIcEE", !97, i64 0}
!99 = !{!"_ZTSN3gui14EGUI_ALIGNMENTE", !67, i64 0}
!100 = !{!"p1 _ZTSN3gui15IGUIEnvironmentE", !74, i64 0}
!101 = !{!"_ZTSN3gui17EGUI_ELEMENT_TYPEE", !67, i64 0}
!102 = !{!"_ZTSN3gui11IGUIElementE", !73, i64 0, !81, i64 8, !82, i64 32, !83, i64 40, !85, i64 48, !85, i64 64, !85, i64 80, !85, i64 96, !85, i64 112, !88, i64 128, !89, i64 144, !89, i64 152, !90, i64 160, !90, i64 161, !90, i64 162, !90, i64 163, !94, i64 168, !94, i64 200, !98, i64 232, !68, i64 264, !90, i64 268, !68, i64 272, !90, i64 276, !99, i64 280, !99, i64 284, !99, i64 288, !99, i64 292, !100, i64 296, !101, i64 304}
!103 = !{!"_ZTSN4core8vector2dIjEE", !68, i64 0, !68, i64 4}
!104 = !{!"p1 _ZTS12IMenuManager", !74, i64 0}
!105 = !{!"_ZTS13PointerAction", !84, i64 0, !77, i64 8}
!106 = !{!"_ZTS7irr_ptrIN3gui11IGUIElementEE", !82, i64 0}
!107 = !{!"_ZTS12GUIModalMenu", !102, i64 0, !84, i64 308, !84, i64 316, !103, i64 324, !86, i64 332, !90, i64 336, !104, i64 344, !90, i64 352, !105, i64 360, !90, i64 376, !106, i64 384, !105, i64 392}
!108 = !{!"any p2 pointer", !74, i64 0}
!109 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !108, i64 0}
!110 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !74, i64 0}
!111 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !110, i64 0}
!112 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !86, i64 0, !77, i64 8}
!113 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorI9StyleSpecSaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE", !109, i64 0, !77, i64 8, !111, i64 16, !77, i64 24, !112, i64 32, !110, i64 48}
!114 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorI9StyleSpecSaIS7_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE", !113, i64 0}
!115 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE", !109, i64 0, !77, i64 8, !111, i64 16, !77, i64 24, !112, i64 32, !110, i64 48}
!116 = !{!"_ZTSSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EE", !115, i64 0}
!117 = !{!"p2 _ZTSN4core8vector2dIfEE", !108, i64 0}
!118 = !{!"p1 _ZTSN4core8vector2dIfEE", !74, i64 0}
!119 = !{!"_ZTSSt15_Deque_iteratorIN4core8vector2dIfEERS2_PS2_E", !118, i64 0, !118, i64 8, !118, i64 16, !117, i64 24}
!120 = !{!"_ZTSNSt11_Deque_baseIN4core8vector2dIfEESaIS2_EE16_Deque_impl_dataE", !117, i64 0, !77, i64 8, !119, i64 16, !119, i64 48}
!121 = !{!"_ZTSNSt11_Deque_baseIN4core8vector2dIfEESaIS2_EE11_Deque_implE", !120, i64 0}
!122 = !{!"_ZTSSt11_Deque_baseIN4core8vector2dIfEESaIS2_EE", !121, i64 0}
!123 = !{!"_ZTSSt5dequeIN4core8vector2dIfEESaIS2_EE", !122, i64 0}
!124 = !{!"_ZTSSt5stackIN4core8vector2dIfEESt5dequeIS2_SaIS2_EEE", !123, i64 0}
!125 = !{!"p1 _ZTS16InventoryManager", !74, i64 0}
!126 = !{!"p1 _ZTS20ISimpleTextureSource", !74, i64 0}
!127 = !{!"p1 _ZTS13ISoundManager", !74, i64 0}
!128 = !{!"p1 _ZTS6Client", !74, i64 0}
!129 = !{!"_ZTSN17InventoryLocation4TypeE", !67, i64 0}
!130 = !{!"short", !67, i64 0}
!131 = !{!"_ZTSN4core8vector3dIsEE", !130, i64 0, !130, i64 2, !130, i64 4}
end_hunk_1
