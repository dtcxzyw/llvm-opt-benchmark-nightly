inline.NumInlined: 282
inline.NumDeleted: 144
begin_hunk_0_@_ZN5arrow8internal7CpuInfo4ImplC2Ev:._crit_edge.i.i

bb.r:                                             ; preds = %_ZNSirsERm.exit.i.2.i
  %i.bq = load i8, ptr %i.b, align 1, !tbaa !15
  switch i8 %i.bq, label %_ZN5arrow8internal12_GLOBAL__N_117LinuxGetCacheSizeEi.exit.thread11.2.i [
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
  %i.fr = call ptr @memchr(ptr noundef %.pre223.i, i32 noundef 58, i64 noundef %i.fq) #25
  %.fr.i = freeze ptr %i.fr                       ; 2 uses
  %.not.i21.i = icmp eq ptr %.fr.i, null
  %i.fs = ptrtoint ptr %.fr.i to i64
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
  %or.cond128.i = and i1 %i.hb, %.not.i38.i
  br i1 %or.cond128.i, label %bb.an, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit.thread.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %.sroa.speculated.i40.i = call i64 @llvm.umin.i64(i64 %i.gz, i64 8)
  %bcmp123.i = call i32 @bcmp(ptr %i.ha, ptr nonnull @.str.11, i64 %.sroa.speculated.i40.i)
  %.not.i42.i = icmp eq i32 %bcmp123.i, 0
  %i.hc = icmp eq i64 %i.gz, 8
  %or.cond129.i = and i1 %i.hc, %.not.i42.i
  br i1 %or.cond129.i, label %bb.an, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit48.thread.i

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit.thread.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %.val.i = load ptr, ptr %6, align 8             ; 3 uses
  %.val17.i = load i64, ptr %i.cn, align 8        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  store ptr %i.co, ptr %1, align 16, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %i.co, ptr noundef nonnull align 1 dereferenceable(5) @.str.19, i64 5, i1 false)
  store i64 5, ptr %i.cp, align 8, !tbaa !24
  store i8 0, ptr %i.cq, align 1, !tbaa !15
  store i64 1, ptr %i.cr, align 16, !tbaa !59
end_hunk_0
begin_hunk_1_@_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev:bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !10   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !15
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #22
  %.pr.pre = load ptr, ptr %0, align 8, !tbaa !66 ; 2 uses
  %.not.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread, !prof !82

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit
  %i.i = phi ptr [ %.pr.pre, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !83, !range !91, !noundef !92
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #25
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread, %bb.c
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #13

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #14

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256), ptr noundef, i32 noundef) unnamed_addr #1 align 2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256)) unnamed_addr #0 align 2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractImEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #12

declare void @_ZN5arrow8internal10TrimStringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #12

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext) local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #13

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24   ; 9 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !10     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = icmp eq ptr %i.c, %i.d                   ; 2 uses
  %i.f = load i64, ptr %i.d, align 8              ; 2 uses
  %i.g = select i1 %i.e, i64 15, i64 %i.f         ; 2 uses
  %i.h = icmp ugt i64 %i.b, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.i = icmp slt i64 %i.b, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #26
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = shl nuw i64 %i.g, 1                      ; 2 uses
  %i.k = icmp ult i64 %i.b, %i.j
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 9223372036854775807)
  %.0 = select i1 %i.k, i64 %spec.store.select.i, i64 %i.b ; 2 uses
  %i.l = add nuw i64 %.0, 1                       ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !55

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.d
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #23 ; 2 uses
  br i1 %i.e, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.o = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.o) #22
  br label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.n, ptr %0, align 8, !tbaa !10
  store i64 %.0, ptr %i.d, align 8, !tbaa !15
  br label %.split12

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %.not16 = icmp eq i64 %i.b, 0
  br i1 %.not16, label %.split, label %.split12

.split:                                           ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !24
  store i8 0, ptr %i.c, align 1, !tbaa !15
  br label %bb.i

.split12:                                         ; preds = %.thread, %bb.f
  %i.q = phi ptr [ %i.n, %.thread ], [ %i.c, %bb.f ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !10     ; 2 uses
  %cond = icmp eq i64 %i.b, 1
  br i1 %cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split12
  %i.s = load i8, ptr %i.r, align 1, !tbaa !15
  store i8 %i.s, ptr %i.q, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.h:                                             ; preds = %.split12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.r, i64 %i.b, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.g, %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.t, align 8, !tbaa !24
  %i.u = load ptr, ptr %0, align 8, !tbaa !10
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.b
  store i8 0, ptr %i.v, align 1, !tbaa !15
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, %.split, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @toupper(i32 noundef) local_unnamed_addr #16

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !66     ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !95   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !96
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !98
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #25, !inline_history !99
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #25, !inline_history !99
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !15
  %.not.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !55

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #25
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.d, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !10   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZN5arrow6Status5StateD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !15
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #22
  br label %_ZN5arrow6Status5StateD2Ev.exit

_ZN5arrow6Status5StateD2Ev.exit:                  ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #22
  br label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6Status5StateD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #25, !inline_history !100
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !15
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #25, !inline_history !100
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #12 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { builtin nounwind }
attributes #23 = { builtin allocsize(0) }
attributes #24 = { nounwind willreturn memory(none) }
attributes #25 = { nounwind }
attributes #26 = { noreturn }
attributes #27 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"p1 _ZTSN5arrow8internal7CpuInfo4ImplE", !9, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!11, !13, i64 0}
!11 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0, !14, i64 8, !5, i64 16}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !13, i64 0}
!13 = !{!"p1 omnipotent char", !9, i64 0}
!14 = !{!"long", !5, i64 0}
!15 = !{!5, !5, i64 0}
!16 = !{!17, !14, i64 0}
!17 = !{!"_ZTSN5arrow8internal7CpuInfo4ImplE", !14, i64 0, !4, i64 8, !14, i64 16, !18, i64 24, !11, i64 32, !19, i64 64}
!18 = !{!"_ZTSN5arrow8internal7CpuInfo6VendorE", !5, i64 0}
!19 = !{!"_ZTSSt5arrayIlLm3EE", !5, i64 0}
!20 = !{!17, !4, i64 8}
!21 = !{!17, !14, i64 16}
!22 = !{!17, !18, i64 24}
!23 = !{!12, !13, i64 0}
!24 = !{!11, !14, i64 8}
!25 = !{!26, !26, i64 0}
!26 = !{!"vtable pointer", !6, i64 0}
!27 = !{!28, !30, i64 32}
!28 = !{!"_ZTSSt8ios_base", !14, i64 8, !14, i64 16, !29, i64 24, !30, i64 28, !30, i64 32, !31, i64 40, !32, i64 48, !5, i64 64, !4, i64 192, !33, i64 200, !34, i64 208}
!29 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!30 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!31 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !9, i64 0}
!32 = !{!"_ZTSNSt8ios_base6_WordsE", !9, i64 0, !14, i64 8}
!33 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !9, i64 0}
!34 = !{!"_ZTSSt6locale", !35, i64 0}
!35 = !{!"p1 _ZTSNSt6locale5_ImplE", !9, i64 0}
!36 = !{!14, !14, i64 0}
!37 = !{!38, !42, i64 240}
!38 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !28, i64 0, !39, i64 216, !5, i64 224, !40, i64 225, !41, i64 232, !42, i64 240, !43, i64 248, !44, i64 256}
!39 = !{!"p1 _ZTSSo", !9, i64 0}
!40 = !{!"bool", !5, i64 0}
!41 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !9, i64 0}
!42 = !{!"p1 _ZTSSt5ctypeIcE", !9, i64 0}
!43 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !9, i64 0}
!44 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !9, i64 0}
!45 = !{!46, !5, i64 56}
!46 = !{!"_ZTSSt5ctypeIcE", !47, i64 0, !48, i64 16, !40, i64 24, !49, i64 32, !49, i64 40, !50, i64 48, !5, i64 56, !5, i64 57, !5, i64 313, !5, i64 569}
!47 = !{!"_ZTSNSt6locale5facetE", !4, i64 8}
!48 = !{!"p1 _ZTS15__locale_struct", !9, i64 0}
!49 = !{!"p1 int", !9, i64 0}
!50 = !{!"p1 short", !9, i64 0}
!51 = distinct !{null}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!54 = distinct !{!54, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!55 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!58 = distinct !{!58, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!59 = !{!60, !14, i64 32}
!60 = !{!"_ZTSZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0", !11, i64 0, !14, i64 32}
!61 = distinct !{!61, !62}
!62 = !{!"llvm.loop.mustprogress"}
!63 = distinct !{!63, !62}
!64 = !{!18, !18, i64 0}
!65 = distinct !{!65, !62}
!66 = !{!67, !68, i64 0}
!67 = !{!"_ZTSN5arrow6StatusE", !68, i64 0}
!68 = !{!"p1 _ZTSN5arrow6Status5StateE", !9, i64 0}
!69 = !{!70}
!70 = distinct !{!70, !71, !"_ZNO5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv: argument 0"}
!71 = distinct !{!71, !"_ZNO5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv"}
!72 = !{!73}
!73 = distinct !{!73, !74, !"_ZNO5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10ValueOrDieEv: argument 0"}
!74 = distinct !{!74, !"_ZNO5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10ValueOrDieEv"}
end_hunk_1
