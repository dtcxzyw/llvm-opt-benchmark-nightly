inline.NumInlined: 282
inline.NumDeleted: 144
begin_hunk_0_@_ZN5arrow8internal7CpuInfo4ImplC2Ev:._crit_edge.i.i
    i8 75, label %bb.u
    i8 77, label %bb.t
    i8 71, label %bb.s
    i8 0, label %._crit_edge.i.2.i
  ]

._crit_edge.i.2.i:                                ; preds = %bb.r
  %.pre.i.2.i = load i64, ptr %i.a, align 8, !tbaa !36
  br label %_ZN5arrow8internal12_GLOBAL__N_117LinuxGetCacheSizeEi.exit.2.i

bb.s:                                             ; preds = %bb.r
  %i.br = load i64, ptr %i.a, align 8, !tbaa !36
  %i.bs = shl i64 %i.br, 30
  br label %_ZN5arrow8internal12_GLOBAL__N_117LinuxGetCacheSizeEi.exit.2.i

bb.t:                                             ; preds = %bb.r
  %i.bt = load i64, ptr %i.a, align 8, !tbaa !36
  %i.bu = shl i64 %i.bt, 20
  br label %_ZN5arrow8internal12_GLOBAL__N_117LinuxGetCacheSizeEi.exit.2.i

bb.u:                                             ; preds = %bb.r
  %i.bv = load i64, ptr %i.a, align 8, !tbaa !36
  %i.bw = shl i64 %i.bv, 10
  br label %_ZN5arrow8internal12_GLOBAL__N_117LinuxGetCacheSizeEi.exit.2.i

_ZN5arrow8internal12_GLOBAL__N_117LinuxGetCacheSizeEi.exit.2.i: ; preds = %bb.u, %bb.t, %bb.s, %._crit_edge.i.2.i
  %.08.i.2.i = phi i64 [ %i.bw, %bb.u ], [ %.pre.i.2.i, %._crit_edge.i.2.i ], [ %i.bu, %bb.t ], [ %i.bs, %bb.s ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.bx = icmp sgt i64 %.08.i.2.i, 0
  br i1 %i.bx, label %_ZN5arrow8internal12_GLOBAL__N_117LinuxGetCacheSizeEi.exit.thread.2.i, label %_ZN5arrow8internal12_GLOBAL__N_119OsRetrieveCacheSizeEPSt5arrayIlLm3EE.exit

_ZN5arrow8internal12_GLOBAL__N_117LinuxGetCacheSizeEi.exit.thread11.2.i: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %_ZN5arrow8internal12_GLOBAL__N_119OsRetrieveCacheSizeEPSt5arrayIlLm3EE.exit

_ZN5arrow8internal12_GLOBAL__N_117LinuxGetCacheSizeEi.exit.thread.2.i: ; preds = %_ZN5arrow8internal12_GLOBAL__N_117LinuxGetCacheSizeEi.exit.2.i, %bb.o
  %.2.i8.2.i = phi i64 [ %.08.i.2.i, %_ZN5arrow8internal12_GLOBAL__N_117LinuxGetCacheSizeEi.exit.2.i ], [ %i.bd, %bb.o ]
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.2.i8.2.i, ptr %i.by, align 8, !tbaa !36
  br label %_ZN5arrow8internal12_GLOBAL__N_119OsRetrieveCacheSizeEPSt5arrayIlLm3EE.exit

_ZN5arrow8internal12_GLOBAL__N_119OsRetrieveCacheSizeEPSt5arrayIlLm3EE.exit: ; preds = %_ZN5arrow8internal12_GLOBAL__N_117LinuxGetCacheSizeEi.exit.thread.2.i, %_ZN5arrow8internal12_GLOBAL__N_117LinuxGetCacheSizeEi.exit.thread11.2.i, %_ZN5arrow8internal12_GLOBAL__N_117LinuxGetCacheSizeEi.exit.2.i, %_ZN5arrow8internal12_GLOBAL__N_117LinuxGetCacheSizeEi.exit.thread9.2.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256) %2, ptr noundef nonnull @.str.9, i32 noundef 8)
          to label %.noexc28 unwind label %bb.bb

.noexc28:                                         ; preds = %_ZN5arrow8internal12_GLOBAL__N_119OsRetrieveCacheSizeEPSt5arrayIlLm3EE.exit
  %i.bz = load ptr, ptr %2, align 8, !tbaa !25
  %i.ca = getelementptr i8, ptr %i.bz, i64 -24    ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds i8, ptr %2, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !27
  %i.cf = and i32 %i.ce, 5
  %.not.i209.i = icmp eq i32 %i.cf, 0
  br i1 %.not.i209.i, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %.noexc28
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 21
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 62
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 102
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 142
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 179
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 220
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 263
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 456 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 460
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 496 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 500
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.fa = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109.i, %.lr.ph.i
  %i.fc = phi ptr [ %i.ca, %.lr.ph.i ], [ %i.jk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr %i.cg, ptr %3, align 8, !tbaa !23
  store i64 0, ptr %i.ch, align 8, !tbaa !24
  store i8 0, ptr %i.cg, align 8, !tbaa !15
  %i.fd = load i64, ptr %i.fc, align 8
  %i.fe = getelementptr inbounds i8, ptr %2, i64 %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 240
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !37 ; 6 uses
  %.not.i.i.i.i = icmp eq ptr %i.fg, null
  br i1 %.not.i.i.i.i, label %bb.w, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt16__throw_bad_castv() #26
          to label %.noexc.i27 unwind label %.loopexit.split-lp.i

.noexc.i27:                                       ; preds = %bb.w
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i: ; preds = %bb.v
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 56
  %i.fi = load i8, ptr %i.fh, align 8, !tbaa !45
  %.not.i1.i.i.i = icmp eq i8 %i.fi, 0
  br i1 %.not.i1.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 67
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !15
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i

bb.y:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.fg)
          to label %.noexc18.i unwind label %.loopexit.i

.noexc18.i:                                       ; preds = %bb.y
  %i.fl = load ptr, ptr %i.fg, align 8, !tbaa !25
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 48
  %i.fn = load ptr, ptr %i.fm, align 8
  %i.fo = invoke noundef signext i8 %i.fn(ptr noundef nonnull align 8 dereferenceable(570) %i.fg, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i unwind label %.loopexit.i, !inline_history !51

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i: ; preds = %.noexc18.i, %bb.x
  %.0.i.i.i.i = phi i8 [ %i.fk, %bb.x ], [ %i.fo, %.noexc18.i ]
  %i.fp = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext %.0.i.i.i.i)
          to label %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %.loopexit.i ; 0 uses

_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i
  %i.fq = load i64, ptr %i.ch, align 8, !tbaa !24 ; 3 uses
  %.not121.i = icmp eq i64 %i.fq, 0
  %.pre223.i = load ptr, ptr %3, align 8, !tbaa !10 ; 6 uses
  br i1 %.not121.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.fr = call ptr @memchr(ptr noundef %.pre223.i, i32 noundef 58, i64 noundef %i.fq) #25 ; 2 uses
  %.not.i21.i = icmp eq ptr %i.fr, null
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = ptrtoint ptr %.pre223.i to i64
  %i.fu = sub i64 %i.fs, %i.ft                    ; 4 uses
  %.not.i = icmp eq i64 %i.fu, -1
  %or.cond.i = or i1 %.not.i21.i, %.not.i
  br i1 %or.cond.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread.i, label %bb.z

bb.z:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.fv = add i64 %i.fu, -1
  store ptr %i.ci, ptr %5, align 8, !tbaa !23, !alias.scope !52
  %spec.select.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.fv, i64 %i.fq) ; 8 uses
  %i.fw = icmp ugt i64 %spec.select.i.i.i.i, 15
  br i1 %i.fw, label %bb.aa, label %._crit_edge.i.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.fx = icmp slt i64 %spec.select.i.i.i.i, 0
  br i1 %i.fx, label %.noexc10.i.i.i, label %bb.ab

.noexc10.i.i.i:                                   ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #26
          to label %.noexc22.i unwind label %.loopexit.split-lp140.i

.noexc22.i:                                       ; preds = %.noexc10.i.i.i
  unreachable

bb.ab:                                            ; preds = %bb.aa
  %i.fy = add nuw i64 %spec.select.i.i.i.i, 1     ; 2 uses
  %i.fz = icmp slt i64 %i.fy, 0
  br i1 %i.fz, label %.noexc11.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !55

.noexc11.i.i.i:                                   ; preds = %bb.ab
  invoke void @_ZSt17__throw_bad_allocv() #26
          to label %.noexc23.i unwind label %.loopexit.split-lp140.i

.noexc23.i:                                       ; preds = %.noexc11.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.ab
  %i.ga = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fy) #23
          to label %.noexc24.i unwind label %.loopexit139.i ; 2 uses

.noexc24.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.ga, ptr %5, align 8, !tbaa !10, !alias.scope !52
  store i64 %spec.select.i.i.i.i, ptr %i.ci, align 8, !tbaa !15, !alias.scope !52
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc24.i, %bb.z
  %i.gb = phi ptr [ %i.ga, %.noexc24.i ], [ %i.ci, %bb.z ] ; 3 uses
  switch i64 %spec.select.i.i.i.i, label %bb.ad [
    i64 1, label %bb.ac
    i64 0, label %bb.ae
  ]

bb.ac:                                            ; preds = %._crit_edge.i.i.i.i
  %i.gc = load i8, ptr %.pre223.i, align 1, !tbaa !15
  store i8 %i.gc, ptr %i.gb, align 1, !tbaa !15
  br label %bb.ae

bb.ad:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gb, ptr align 1 %.pre223.i, i64 %spec.select.i.i.i.i, i1 false)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %._crit_edge.i.i.i.i
  store i64 %spec.select.i.i.i.i, ptr %i.cj, align 8, !tbaa !24, !alias.scope !52
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 %spec.select.i.i.i.i
  store i8 0, ptr %i.gd, align 1, !tbaa !15
  invoke void @_ZN5arrow8internal10TrimStringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull %5)
          to label %bb.af unwind label %bb.as

bb.af:                                            ; preds = %bb.ae
  %i.ge = load ptr, ptr %5, align 8, !tbaa !10    ; 2 uses
  %i.gf = icmp eq ptr %i.ge, %i.ci
  br i1 %i.gf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.af
  %i.gg = load i64, ptr %i.ci, align 8, !tbaa !15
  %i.gh = add i64 %i.gg, 1
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gh) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.gi = add nuw i64 %i.fu, 1                    ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !56)
  %i.gj = load i64, ptr %i.ch, align 8, !tbaa !24, !noalias !56 ; 3 uses
  %.not122.i = icmp ult i64 %i.fu, %i.gj
  br i1 %.not122.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i64 noundef %i.gi, i64 noundef %i.gj) #26
          to label %.noexc30.i unwind label %.loopexit.split-lp145.i

.noexc30.i:                                       ; preds = %bb.ag
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  store ptr %i.ck, ptr %7, align 8, !tbaa !23, !alias.scope !56
  %i.gk = load ptr, ptr %3, align 8, !tbaa !10, !noalias !56
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.gi ; 2 uses
  %i.gm = sub nuw i64 %i.gj, %i.gi                ; 8 uses
  %i.gn = icmp ugt i64 %i.gm, 15
  br i1 %i.gn, label %bb.ah, label %._crit_edge.i.i.i26.i

bb.ah:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i
  %i.go = icmp slt i64 %i.gm, 0
  br i1 %i.go, label %.noexc10.i.i29.i, label %bb.ai

.noexc10.i.i29.i:                                 ; preds = %bb.ah
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #26
          to label %.noexc31.i unwind label %.loopexit.split-lp145.i

.noexc31.i:                                       ; preds = %.noexc10.i.i29.i
  unreachable

bb.ai:                                            ; preds = %bb.ah
  %i.gp = add nuw i64 %i.gm, 1                    ; 2 uses
  %i.gq = icmp slt i64 %i.gp, 0
  br i1 %i.gq, label %.noexc11.i.i28.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i27.i, !prof !55

.noexc11.i.i28.i:                                 ; preds = %bb.ai
  invoke void @_ZSt17__throw_bad_allocv() #26
          to label %.noexc32.i unwind label %.loopexit.split-lp145.i

.noexc32.i:                                       ; preds = %.noexc11.i.i28.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i27.i: ; preds = %bb.ai
  %i.gr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gp) #23
          to label %.noexc33.i unwind label %.loopexit144.i ; 2 uses

.noexc33.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i27.i
  store ptr %i.gr, ptr %7, align 8, !tbaa !10, !alias.scope !56
  store i64 %i.gm, ptr %i.ck, align 8, !tbaa !15, !alias.scope !56
  br label %._crit_edge.i.i.i26.i

._crit_edge.i.i.i26.i:                            ; preds = %.noexc33.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i
  %i.gs = phi ptr [ %i.gr, %.noexc33.i ], [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i ] ; 3 uses
  switch i64 %i.gm, label %bb.ak [
    i64 1, label %bb.aj
    i64 0, label %bb.al
  ]

bb.aj:                                            ; preds = %._crit_edge.i.i.i26.i
  %i.gt = load i8, ptr %i.gl, align 1, !tbaa !15
  store i8 %i.gt, ptr %i.gs, align 1, !tbaa !15
  br label %bb.al

bb.ak:                                            ; preds = %._crit_edge.i.i.i26.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gs, ptr nonnull align 1 %i.gl, i64 %i.gm, i1 false)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %._crit_edge.i.i.i26.i
  store i64 %i.gm, ptr %i.cl, align 8, !tbaa !24, !alias.scope !56
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.gm
  store i8 0, ptr %i.gu, align 1, !tbaa !15
  invoke void @_ZN5arrow8internal10TrimStringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull %7)
          to label %bb.am unwind label %bb.at

bb.am:                                            ; preds = %bb.al
  %i.gv = load ptr, ptr %7, align 8, !tbaa !10    ; 2 uses
  %i.gw = icmp eq ptr %i.gv, %i.ck
  br i1 %i.gw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35.i: ; preds = %bb.am
  %i.gx = load i64, ptr %i.ck, align 8, !tbaa !15
  %i.gy = add i64 %i.gx, 1
  call void @_ZdlPvm(ptr noundef %i.gv, i64 noundef %i.gy) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35.i
  %i.gz = load i64, ptr %i.cm, align 8, !tbaa !24 ; 9 uses
  %cond.i = icmp eq i64 %i.gz, 0
  br i1 %cond.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.gz, i64 5)
  %i.ha = load ptr, ptr %4, align 8, !tbaa !10    ; 4 uses
  %bcmp.i = call i32 @bcmp(ptr %i.ha, ptr nonnull @.str.10, i64 %.sroa.speculated.i.i)
  %.not.i38.i = icmp eq i32 %bcmp.i, 0
  %i.hb = icmp eq i64 %i.gz, 5
  %or.cond128.i.a = and i1 %i.hb, %.not.i38.i
  br i1 %or.cond128.i.a, label %bb.an, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit.thread.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %.sroa.speculated.i40.i = call i64 @llvm.umin.i64(i64 %i.gz, i64 8)
  %bcmp123.i.a = call i32 @bcmp(ptr %i.ha, ptr nonnull @.str.11, i64 %.sroa.speculated.i40.i)
  %.not.i42.i = icmp eq i32 %bcmp123.i.a, 0
  %i.hc = icmp eq i64 %i.gz, 8
  %or.cond129.i.a = and i1 %i.hc, %.not.i42.i
  br i1 %or.cond129.i.a, label %bb.an, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit48.thread.i

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit.thread.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %.val.i = load ptr, ptr %6, align 8             ; 3 uses
  %.val17.i = load i64, ptr %i.cn, align 8        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  store ptr %i.co, ptr %1, align 16, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %i.co, ptr noundef nonnull align 1 dereferenceable(5) @.str.19, i64 5, i1 false)
  store i64 5, ptr %i.cp, align 8, !tbaa !24
  store i8 0, ptr %i.cq, align 1, !tbaa !15
  store i64 1, ptr %i.cr, align 16, !tbaa !59
  store ptr %i.ct, ptr %i.cs, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ct, ptr noundef nonnull align 1 dereferenceable(6) @.str.20, i64 6, i1 false)
  store i64 6, ptr %i.cu, align 16, !tbaa !24
  store i8 0, ptr %i.cv, align 2, !tbaa !15
  store i64 2, ptr %i.cw, align 8, !tbaa !59
  store ptr %i.cy, ptr %i.cx, align 16, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) %i.cy, ptr noundef nonnull align 1 dereferenceable(6) @.str.21, i64 6, i1 false)
  store i64 6, ptr %i.cz, align 8, !tbaa !24
  store i8 0, ptr %i.da, align 2, !tbaa !15
  store i64 4, ptr %i.db, align 16, !tbaa !59
  store ptr %i.dd, ptr %i.dc, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.dd, ptr noundef nonnull align 1 dereferenceable(6) @.str.22, i64 6, i1 false)
  store i64 6, ptr %i.de, align 16, !tbaa !24
  store i8 0, ptr %i.df, align 2, !tbaa !15
  store i64 8, ptr %i.dg, align 8, !tbaa !59
  store ptr %i.di, ptr %i.dh, align 16, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3) %i.di, ptr noundef nonnull align 1 dereferenceable(3) @.str.23, i64 3, i1 false)
  store i64 3, ptr %i.dj, align 8, !tbaa !24
  store i8 0, ptr %i.dk, align 1, !tbaa !15
  store i64 16, ptr %i.dl, align 16, !tbaa !59
  store ptr %i.dn, ptr %i.dm, align 8, !tbaa !23
  store i32 846755425, ptr %i.dn, align 8
  store i64 4, ptr %i.do, align 16, !tbaa !24
  store i8 0, ptr %i.dp, align 4, !tbaa !15
  store i64 32, ptr %i.dq, align 8, !tbaa !59
  store ptr %i.ds, ptr %i.dr, align 16, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(7) %i.ds, ptr noundef nonnull align 1 dereferenceable(7) @.str.25, i64 7, i1 false)
  store i64 7, ptr %i.dt, align 8, !tbaa !24
  store i8 0, ptr %i.du, align 1, !tbaa !15
  store i64 64, ptr %i.dv, align 16, !tbaa !59
  store ptr %i.dx, ptr %i.dw, align 8, !tbaa !23
  store i64 7233680613419021921, ptr %i.dx, align 8
  store i64 8, ptr %i.dy, align 16, !tbaa !24
  store i8 0, ptr %i.dz, align 16, !tbaa !15
  store i64 128, ptr %i.ea, align 8, !tbaa !59
  store ptr %i.ec, ptr %i.eb, align 16, !tbaa !23
  store i64 7815489390279947873, ptr %i.ec, align 16
  store i64 8, ptr %i.ed, align 8, !tbaa !24
  store i8 0, ptr %i.ee, align 8, !tbaa !15
  store i64 256, ptr %i.ef, align 16, !tbaa !59
  store ptr %i.eh, ptr %i.eg, align 8, !tbaa !23
  store i64 8170710810888795745, ptr %i.eh, align 8
  store i64 8, ptr %i.ei, align 16, !tbaa !24
  store i8 0, ptr %i.ej, align 16, !tbaa !15
  store i64 512, ptr %i.ek, align 8, !tbaa !59
  store ptr %i.em, ptr %i.el, align 16, !tbaa !23
  store i64 8602493425162942049, ptr %i.em, align 16
  store i64 8, ptr %i.en, align 8, !tbaa !24
  store i8 0, ptr %i.eo, align 8, !tbaa !15
  store i64 1024, ptr %i.ep, align 16, !tbaa !59
  store ptr %i.er, ptr %i.eq, align 8, !tbaa !23
  store i32 828992866, ptr %i.er, align 8
  store i64 4, ptr %i.es, align 16, !tbaa !24
  store i8 0, ptr %i.et, align 4, !tbaa !15
  store i64 2048, ptr %i.eu, align 8, !tbaa !59
  store ptr %i.ew, ptr %i.ev, align 16, !tbaa !23
  store i32 845770082, ptr %i.ew, align 16
  store i64 4, ptr %i.ex, align 8, !tbaa !24
  store i8 0, ptr %i.ey, align 4, !tbaa !15
  store i64 4096, ptr %i.ez, align 16, !tbaa !59
  %i.hd = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.val17.i
  %i.he = ptrtoint ptr %i.hd to i64
  %i.hf = ptrtoint ptr %.val.i to i64
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread.i.i, %bb.an
  %indvars.iv.i.i = phi i64 [ 0, %bb.an ], [ %indvars.iv.next.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread.i.i ] ; 2 uses
  %.01221.i.i = phi i64 [ 0, %bb.an ], [ %.1.i50.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread.i.i ] ; 6 uses
  %i.hg = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %indvars.iv.i.i ; 3 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !10 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !24 ; 5 uses
  %i.hk = icmp eq i64 %i.hj, 0
  br i1 %i.hk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread18.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.not3339.i.i.i.i = icmp ult i64 %.val17.i, %i.hj
  br i1 %.not3339.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ap
  %i.hl = load i8, ptr %i.hh, align 1, !tbaa !15
  %i.hm = sext i8 %i.hl to i32
  %invariant.op = sub i64 1, %i.hj
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ar, %.lr.ph.i.i.i.i
  %.041.i.i.i.i = phi i64 [ %.val17.i, %.lr.ph.i.i.i.i ], [ %i.hs, %bb.ar ]
end_hunk_0
