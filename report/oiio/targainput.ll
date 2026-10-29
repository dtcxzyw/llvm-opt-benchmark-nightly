Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/targainput?download=true
inline.NumInlined: 3090
inline.NumDeleted: 897
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_ZN11OpenImageIO4v3_18TGAInput16read_tga2_headerEv:bb.a
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.aq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.n unwind label %bb.q       ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.ar = load ptr, ptr %10, align 8, !tbaa !99   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.au = load i64, ptr %i.as, align 8, !tbaa !55
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %bb.r

bb.o:                                             ; preds = %bb.az, %bb.ar, %bb.ap, %bb.ah, %bb.ag, %bb.z, %bb.s, %bb.k
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.p:                                             ; preds = %bb.l
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

bb.q:                                             ; preds = %bb.m
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.az = load ptr, ptr %10, align 8, !tbaa !99   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %bb.q
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !55
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86, %bb.p
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.p ], [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86 ], [ %i.ay, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %bb.cz

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN11OpenImageIO4v3_17Strutil11safe_stringB5cxx11EPKcm.exit
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 162 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 2, !tbaa !55
  %.not56 = icmp eq i8 %i.bf, 0
  br i1 %.not56, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.19)
          to label %bb.t unwind label %bb.o       ; 0 uses

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  invoke void @_ZN11OpenImageIO4v3_17Strutil11safe_stringB5cxx11EPKcm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull %i.be, i64 noundef 81)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.bh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.v unwind label %bb.x       ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.bi = load ptr, ptr %11, align 8, !tbaa !99   ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %bb.v
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !55
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %bb.y

bb.w:                                             ; preds = %bb.t
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

bb.x:                                             ; preds = %bb.u
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bp = load ptr, ptr %11, align 8, !tbaa !99   ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %bb.x
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !55
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92, %bb.w
  %.pn57 = phi { ptr, i32 } [ %i.bn, %bb.w ], [ %i.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92 ], [ %i.bo, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %bb.cz

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %bb.r
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 243 ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !55
  %.not59 = icmp eq i8 %i.bv, 0
  br i1 %.not59, label %bb.af, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.19)
          to label %bb.aa unwind label %bb.o      ; 0 uses

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  invoke void @_ZN11OpenImageIO4v3_17Strutil11safe_stringB5cxx11EPKcm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull %i.bu, i64 noundef 81)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.bx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.ac unwind label %bb.ae     ; 0 uses

bb.ac:                                            ; preds = %bb.ab
  %i.by = load ptr, ptr %12, align 8, !tbaa !99   ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %bb.ac
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !55
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %bb.af

bb.ad:                                            ; preds = %bb.aa
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

bb.ae:                                            ; preds = %bb.ab
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cf = load ptr, ptr %12, align 8, !tbaa !99   ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %bb.ae
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !55
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cj) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98, %bb.ad
  %.pn60 = phi { ptr, i32 } [ %i.cd, %bb.ad ], [ %i.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98 ], [ %i.ce, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %bb.cz

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, %bb.y
  %i.ck = load i64, ptr %i.ak, align 8, !tbaa !54 ; 2 uses
  %.not62 = icmp eq i64 %i.ck, 0
  br i1 %.not62, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @.str.20, ptr %13, align 8, !tbaa !101
  %i.cm = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 16, ptr %i.cm, align 8, !tbaa !102
  %i.cn = load ptr, ptr %9, align 8, !tbaa !99
  store ptr %i.cn, ptr %14, align 8, !tbaa !101
  %i.co = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.ck, ptr %i.co, align 8, !tbaa !102
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160) %i.cl, ptr noundef nonnull dead_on_return %13, ptr noundef nonnull dead_on_return %14)
          to label %bb.ah unwind label %bb.o

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.cp = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %8, i64 noundef 2, i64 noundef 6)
          to label %bb.ai unwind label %bb.o

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.cp, label %bb.aj, label %.critedge83

bb.aj:                                            ; preds = %bb.ai
  %i.cq = getelementptr inbounds nuw i8, ptr %8, i64 2 ; 5 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 3 uses
  %i.cs = load <4 x i16>, ptr %8, align 8
  %.fr = freeze <4 x i16> %i.cs
  %i.ct = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.cu = load i16, ptr %i.ct, align 8
  %.fr194 = freeze i16 %i.cu
  %i.cv = icmp ne i16 %.fr194, 0
  %i.cw = getelementptr inbounds nuw i8, ptr %8, i64 10 ; 2 uses
  %i.cx = load i16, ptr %i.cw, align 2
  %i.cy = icmp ne i16 %i.cx, 0
  %.fr.scalar = bitcast <4 x i16> %.fr to i64
  %i.cz = icmp ne i64 %.fr.scalar, 0
  %op.rdx = or i1 %i.cz, %i.cv
  %op.rdx192 = select i1 %op.rdx, i1 true, i1 %i.cy
  br i1 %op.rdx192, label %bb.ak, label %bb.ap

bb.ak:                                            ; preds = %bb.aj
  %i.da = getelementptr inbounds nuw i8, ptr %8, i64 6
  store ptr @.str.21, ptr %15, align 8, !tbaa !101
  %i.db = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 8, ptr %i.db, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  invoke void @_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA36_cJRtS5_S5_S5_S5_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 1 dereferenceable(36) @.str.22, ptr noundef nonnull align 2 dereferenceable(2) %i.cr, ptr noundef nonnull align 2 dereferenceable(2) %8, ptr noundef nonnull align 2 dereferenceable(2) %i.cq, ptr noundef nonnull align 2 dereferenceable(2) %i.da, ptr noundef nonnull align 2 dereferenceable(2) %i.ct, ptr noundef nonnull align 2 dereferenceable(2) %i.cw)
          to label %bb.al unwind label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dd = load ptr, ptr %17, align 8, !tbaa !99
  store ptr %i.dd, ptr %16, align 8, !tbaa !101
  %i.de = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !54
  store i64 %i.dg, ptr %i.de, align 8, !tbaa !102
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160) %i.dc, ptr noundef nonnull dead_on_return %15, ptr noundef nonnull dead_on_return %16)
          to label %bb.am unwind label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.dh = load ptr, ptr %17, align 8, !tbaa !99   ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %bb.am
  %i.dk = load i64, ptr %i.di, align 8, !tbaa !55
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dl) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  br label %bb.ap

bb.an:                                            ; preds = %bb.ak
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

bb.ao:                                            ; preds = %bb.al
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.do = load ptr, ptr %17, align 8, !tbaa !99   ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %bb.ao
  %i.dr = load i64, ptr %i.dp, align 8, !tbaa !55
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.ds) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104, %bb.an
  %.pn63 = phi { ptr, i32 } [ %i.dm, %bb.an ], [ %i.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104 ], [ %i.dn, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  br label %bb.cz

bb.ap:                                            ; preds = %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103
  store ptr @.str.23, ptr %18, align 8, !tbaa !101
  %i.dt = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 12, ptr %i.dt, align 8, !tbaa !102
  %i.du = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_18TGAInput31read_bytes_for_string_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEm(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull dead_on_return %18, i64 noundef 41)
          to label %bb.aq unwind label %bb.o

bb.aq:                                            ; preds = %bb.ap
  br i1 %i.du, label %bb.ar, label %.critedge83

bb.ar:                                            ; preds = %bb.aq
  %i.dv = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %8, i64 noundef 2, i64 noundef 3)
          to label %bb.as unwind label %bb.o

bb.as:                                            ; preds = %bb.ar
  br i1 %i.dv, label %bb.at, label %.critedge83

bb.at:                                            ; preds = %bb.as
  %i.dw = load i16, ptr %8, align 8, !tbaa !55
  %i.dx = icmp ne i16 %i.dw, 0
  %i.dy = load i16, ptr %i.cq, align 2
  %i.dz = icmp ne i16 %i.dy, 0
  %or.cond18 = select i1 %i.dx, i1 true, i1 %i.dz
  %i.ea = load i16, ptr %i.cr, align 4
  %i.eb = icmp ne i16 %i.ea, 0
  %or.cond21 = select i1 %or.cond18, i1 true, i1 %i.eb
  br i1 %or.cond21, label %bb.au, label %bb.az

bb.au:                                            ; preds = %bb.at
  store ptr @.str.24, ptr %19, align 8, !tbaa !101
  %i.ec = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 13, ptr %i.ec, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #30
  invoke void @_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA15_cJRtS5_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr noundef nonnull align 1 dereferenceable(15) @.str.25, ptr noundef nonnull align 2 dereferenceable(2) %8, ptr noundef nonnull align 2 dereferenceable(2) %i.cq, ptr noundef nonnull align 2 dereferenceable(2) %i.cr)
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ee = load ptr, ptr %21, align 8, !tbaa !99
  store ptr %i.ee, ptr %20, align 8, !tbaa !101
  %i.ef = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !54
  store i64 %i.eh, ptr %i.ef, align 8, !tbaa !102
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160) %i.ed, ptr noundef nonnull dead_on_return %19, ptr noundef nonnull dead_on_return %20)
          to label %bb.aw unwind label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.ei = load ptr, ptr %21, align 8, !tbaa !99   ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.ek = icmp eq ptr %i.ei, %i.ej
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %bb.aw
  %i.el = load i64, ptr %i.ej, align 8, !tbaa !55
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.em) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  br label %bb.az

bb.ax:                                            ; preds = %bb.au
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

bb.ay:                                            ; preds = %bb.av
  %i.eo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ep = load ptr, ptr %21, align 8, !tbaa !99   ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.er = icmp eq ptr %i.ep, %i.eq
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110: ; preds = %bb.ay
  %i.es = load i64, ptr %i.eq, align 8, !tbaa !55
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.et) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110, %bb.ax
  %.pn65 = phi { ptr, i32 } [ %i.en, %bb.ax ], [ %i.eo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110 ], [ %i.eo, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  br label %bb.cz

bb.az:                                            ; preds = %bb.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109
  %i.eu = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %8, i64 noundef 41, i64 noundef 1)
          to label %bb.ba unwind label %bb.o

bb.ba:                                            ; preds = %bb.az
  br i1 %i.eu, label %bb.bb, label %.critedge83

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #30
  %i.ev = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 2 dereferenceable(2) %i.i, i64 noundef 2, i64 noundef 1)
          to label %_ZN11OpenImageIO4v3_18TGAInput4readERt.exit unwind label %bb.ca

_ZN11OpenImageIO4v3_18TGAInput4readERt.exit:      ; preds = %bb.bb
  br i1 %i.ev, label %bb.bc, label %.critedge85

bb.bc:                                            ; preds = %_ZN11OpenImageIO4v3_18TGAInput4readERt.exit
  %i.ew = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.j, i64 noundef 1, i64 noundef 1)
          to label %_ZN11OpenImageIO4v3_18TGAInput4readERc.exit unwind label %bb.ca

_ZN11OpenImageIO4v3_18TGAInput4readERc.exit:      ; preds = %bb.bc
  br i1 %i.ew, label %bb.bd, label %.critedge85

bb.bd:                                            ; preds = %_ZN11OpenImageIO4v3_18TGAInput4readERc.exit
  %i.ex = load i8, ptr %8, align 8, !tbaa !55
  %.not67 = icmp eq i8 %i.ex, 0
  br i1 %.not67, label %bb.bq, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #30
  invoke void @_ZN11OpenImageIO4v3_17Strutil11safe_stringB5cxx11EPKcm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull %8, i64 noundef 41)
          to label %bb.bf unwind label %bb.bj

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #30
  %i.ey = load i16, ptr %i.i, align 2, !tbaa !125 ; 2 uses
  %i.ez = udiv i16 %i.ey, 100
  %i.fa = zext nneg i16 %i.ez to i32
  store i32 %i.fa, ptr %i.k, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #30
  %i.fb = urem i16 %i.ey, 100
  %i.fc = zext nneg i16 %i.fb to i32
  store i32 %i.fc, ptr %i.l, align 4, !tbaa !45
  invoke void @_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA7_cJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %23, ptr noundef nonnull align 1 dereferenceable(7) @.str.26, ptr noundef nonnull align 4 dereferenceable(4) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.l)
          to label %bb.bg unwind label %bb.bk

bb.bg:                                            ; preds = %bb.bf
  %i.fd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %bb.bh unwind label %bb.bl     ; 0 uses
end_hunk_0
