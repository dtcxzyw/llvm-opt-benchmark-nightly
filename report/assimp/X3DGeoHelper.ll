Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/X3DGeoHelper?download=true
inline.NumInlined: 1138
inline.NumDeleted: 495
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN6Assimp12X3DGeoHelper9add_colorER6aiMeshRKNSt7__cxx114listI9aiColor4tIfESaIS6_EEEb:bb.a
  %i.bs = load i64, ptr %i.b, align 8
  invoke void @_Z12ai_to_stringImENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, i64 noundef %i.bs)
          to label %bb.s unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112.thread

bb.s:                                             ; preds = %bb.r
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull @.str.4, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.t unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109.thread

bb.t:                                             ; preds = %bb.s
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.7)
          to label %bb.u unwind label %bb.z

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  %i.bt = load i32, ptr %i.bn, align 8
  invoke void @_Z12ai_to_stringIjENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, i32 noundef %i.bt)
          to label %bb.v unwind label %bb.aa

bb.v:                                             ; preds = %bb.u
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.w unwind label %bb.ab

bb.w:                                             ; preds = %bb.v
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.6)
          to label %bb.x unwind label %bb.ac

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN17DeadlyImportErrorC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.br, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.y unwind label %bb.ad

bb.y:                                             ; preds = %bb.x
  invoke void @__cxa_throw(ptr nonnull %i.br, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.ai unwind label %bb.ad

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112.thread: ; preds = %bb.r
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split189

bb.z:                                             ; preds = %bb.t
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

bb.aa:                                            ; preds = %bb.u
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

bb.ab:                                            ; preds = %bb.v
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

bb.ac:                                            ; preds = %bb.w
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

bb.ad:                                            ; preds = %bb.y, %bb.x
  %.035 = phi i1 [ false, %bb.y ], [ true, %bb.x ] ; 2 uses
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ca = load ptr, ptr %9, align 8               ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %bb.ad
  %i.cd = load i64, ptr %i.cb, align 8
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.ce) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95, %bb.ac
  %.pn = phi { ptr, i32 } [ %i.by, %bb.ac ], [ %i.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95 ], [ %i.bz, %bb.ad ] ; 2 uses
  %.1 = phi i1 [ true, %bb.ac ], [ %.035, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95 ], [ %.035, %bb.ad ] ; 2 uses
  %i.cf = load ptr, ptr %10, align 8              ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97
  %i.ci = load i64, ptr %i.cg, align 8
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98, %bb.ab
  %.pn.pn = phi { ptr, i32 } [ %i.bx, %bb.ab ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97 ] ; 2 uses
  %.2 = phi i1 [ true, %bb.ab ], [ %.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98 ], [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97 ] ; 2 uses
  %i.ck = load ptr, ptr %14, align 8              ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100
  %i.cn = load i64, ptr %i.cl, align 8
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.co) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101, %bb.aa
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bw, %bb.aa ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100 ] ; 2 uses
  %.3 = phi i1 [ true, %bb.aa ], [ %.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101 ], [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  %i.cp = load ptr, ptr %11, align 8              ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103
  %i.cs = load i64, ptr %i.cq, align 8
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.ct) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104, %bb.z
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bv, %bb.z ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103 ] ; 4 uses
  %.4 = phi i1 [ true, %bb.z ], [ %.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104 ], [ %.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103 ] ; 2 uses
  %i.cu = load ptr, ptr %12, align 8              ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106
  %i.cx = load i64, ptr %i.cv, align 8
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cy) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107
  %i.cz = load ptr, ptr %13, align 8              ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109.thread: ; preds = %bb.s
  %i.dc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dd = load ptr, ptr %13, align 8              ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %.sink.split189, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109.thread
  %i.dg = load i64, ptr %i.de, align 8
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dh) #24
  br label %.sink.split189

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109
  %i.di = load i64, ptr %i.da, align 8
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dj) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br i1 %.4, label %.sink.split190, label %bb.ah

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br i1 %.4, label %.sink.split190, label %bb.ah

.sink.split189:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110.thread
  %.pn.pn.pn.pn.pn.pn129.ph = phi { ptr, i32 } [ %i.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110.thread ], [ %i.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112.thread ], [ %i.dc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %.sink.split190

bb.ae:                                            ; preds = %bb.q
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dl = load i32, ptr %i.dk, align 4            ; 2 uses
  %i.dm = zext i32 %i.dl to i64
  %i.dn = shl nuw nsw i64 %i.dm, 4                ; 2 uses
  %i.do = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.dn) #23 ; 2 uses
  %i.dp = icmp eq i32 %i.dl, 0
  br i1 %i.dp, label %.loopexit145, label %.loopexit145.loopexit

.loopexit145.loopexit:                            ; preds = %bb.ae
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.do, i8 0, i64 %i.dn, i1 false)
  br label %.loopexit145

.loopexit145:                                     ; preds = %.loopexit145.loopexit, %bb.ae
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  store ptr %i.do, ptr %i.dq, align 8
  %i.dr = load i32, ptr %i.bn, align 8            ; 2 uses
  %.not = icmp eq i32 %i.dr, 0
  br i1 %.not, label %.loopexit, label %.lr.ph150

.lr.ph150:                                        ; preds = %.loopexit145
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph150, %._crit_edge
  %i.dt = phi i32 [ %i.dr, %.lr.ph150 ], [ %i.ei, %._crit_edge ]
  %.034148 = phi i64 [ 0, %.lr.ph150 ], [ %i.ek, %._crit_edge ] ; 5 uses
  %.sroa.0113.1147 = phi ptr [ %i.a, %.lr.ph150 ], [ %i.ej, %._crit_edge ] ; 2 uses
  %15 = load ptr, ptr %i.ds, align 8
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %.034148
  %i.dv = load i32, ptr %i.du, align 8            ; 4 uses
  %i.dw = zext i32 %i.dv to i64                   ; 2 uses
  %.not155 = icmp eq i32 %i.dv, 0
  br i1 %.not155, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.af
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0113.1147, i64 16 ; 3 uses
  %xtraiter = and i64 %i.dw, 1
  %i.dy = icmp eq i32 %i.dv, 1
  br i1 %i.dy, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.dw, 4294967294
  br label %bb.ag

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.ag
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.0146.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.fg, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod193 = trunc i32 %i.dv to i1
  tail call void @llvm.assume(i1 %lcmp.mod193)
  %i.dz = load ptr, ptr %i.dq, align 8
  %i.ea = load ptr, ptr %i.ds, align 8
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %i.ea, i64 %.034148
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %.0146.epil.init
  %i.ef = load i32, ptr %i.ee, align 4
  %i.eg = zext i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %i.dz, i64 %i.eg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.eh, ptr noundef nonnull align 4 dereferenceable(16) %i.dx, i64 16, i1 false)
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.epil.preheader
  %.pre.a = load i32, ptr %i.bn, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.af
  %i.ei = phi i32 [ %.pre.a, %._crit_edge.loopexit ], [ %i.dt, %bb.af ] ; 2 uses
  %i.ej = load ptr, ptr %.sroa.0113.1147, align 8
  %i.ek = add nuw nsw i64 %.034148, 1             ; 2 uses
  %i.el = zext i32 %i.ei to i64
  %i.em = icmp samesign ult i64 %i.ek, %i.el
  br i1 %i.em, label %bb.af, label %.loopexit, !llvm.loop !19

bb.ag:                                            ; preds = %bb.ag, %.lr.ph.new
  %.0146 = phi i64 [ 0, %.lr.ph.new ], [ %i.fg, %bb.ag ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.ag ]
  %i.en = load ptr, ptr %i.dq, align 8
  %i.eo = load ptr, ptr %i.ds, align 8
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %.034148
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %.0146
  %i.et = load i32, ptr %i.es, align 4
  %i.eu = zext i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.en, i64 %i.eu
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ev, ptr noundef nonnull align 4 dereferenceable(16) %i.dx, i64 16, i1 false)
  %i.ew = load ptr, ptr %i.dq, align 8
  %i.ex = load ptr, ptr %i.ds, align 8
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr %i.ex, i64 %.034148
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %.0146
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  %i.fd = load i32, ptr %i.fc, align 4
  %i.fe = zext i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %i.ew, i64 %i.fe
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ff, ptr noundef nonnull align 4 dereferenceable(16) %i.dx, i64 16, i1 false)
  %i.fg = add nuw nsw i64 %.0146, 2               ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.ag, !llvm.loop !20

.loopexit:                                        ; preds = %._crit_edge, %.lr.ph154, %.loopexit145, %.loopexit143
  ret void

.sink.split190:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110, %.sink.split189, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92, %.sink.split
  %.sink = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94 ], [ %i.h, %.sink.split ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92 ], [ %i.br, %.sink.split189 ], [ %i.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110 ], [ %i.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112 ]
  %.pn72.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn72.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94 ], [ %.pn72.pn.pn.pn.pn.pn117.ph, %.sink.split ], [ %.pn72.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92 ], [ %.pn.pn.pn.pn.pn.pn129.ph, %.sink.split189 ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112 ]
  call void @__cxa_free_exception(ptr %.sink) #21
  br label %bb.ah

bb.ah:                                            ; preds = %.sink.split190, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  %.pn72.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn72.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92 ], [ %.pn72.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94 ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112 ], [ %.pn72.pn.pn.pn.pn.pn.pn.ph, %.sink.split190 ]
  resume { ptr, i32 } %.pn72.pn.pn.pn.pn.pn.pn

bb.ai:                                            ; preds = %bb.y, %bb.j
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #21 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = sub i64 4611686018427387903, %i.c
  %i.e = icmp ult i64 %i.d, %i.a
  br i1 %i.e, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #22
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %2, i64 noundef %i.a) ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.g, ptr %0, align 8
  %i.h = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load i64, ptr %i.k, align 8              ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  tail call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  store ptr %i.h, ptr %0, align 8
  %i.o = load i64, ptr %i.i, align 8
  store i64 %i.o, ptr %i.g, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.p = phi i64 [ %i.l, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.r, align 8
  store ptr %i.i, ptr %i.f, align 8
  store i64 0, ptr %i.q, align 8
  store i8 0, ptr %i.i, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8              ; 4 uses
  %i.e = add i64 %i.d, %i.b                       ; 2 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.i = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.i)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.j = load i64, ptr %i.g, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.k = phi i64 [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ]
  %i.l = icmp ugt i64 %i.e, %i.k
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = load ptr, ptr %2, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13: ; preds = %bb.b
  %i.p = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.p)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12: ; preds = %bb.b
  %i.q = load i64, ptr %i.n, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12
  %i.r = phi i64 [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13 ]
  %.not = icmp ugt i64 %i.e, %i.r
  br i1 %.not, label %bb.d, label %.critedge

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14
  %i.s = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.f, i64 noundef %i.b) ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.t, ptr %0, align 8
  %i.u = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 5 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15

bb.c:                                             ; preds = %.critedge
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  %i.z = icmp ult i64 %i.y, 16
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.aa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15: ; preds = %.critedge
  store ptr %i.u, ptr %0, align 8
  %i.ab = load i64, ptr %i.v, align 8
  store i64 %i.ab, ptr %i.t, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ad, ptr %i.ae, align 8
  store ptr %i.v, ptr %i.s, align 8
  store i64 0, ptr %i.ac, align 8
  store i8 0, ptr %i.v, align 8
  br label %bb.g

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.af = sub i64 4611686018427387903, %i.b
  %i.ag = icmp ult i64 %i.af, %i.d
  br i1 %i.ag, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #22
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.d
  %i.ah = load ptr, ptr %2, align 8
  %i.ai = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.ah, i64 noundef %i.d) ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.aj, ptr %0, align 8
  %i.ak = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp12X3DGeoHelper10add_normalER6aiMeshRKSt6vectorIiSaIiEES7_RKNSt7__cxx114listI10aiVector3tIfESaISB_EEEb:bb.a
  %.sroa.24.0306 = phi ptr [ %.sroa.24.0.lcssa, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i122 ], [ %.sroa.24.0319, %bb.g ]
  %lpad.loopexit.split-lp279 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

.lr.ph329:                                        ; preds = %.lr.ph329.preheader, %_ZNSt6vectorImSaImEE9push_backEOm.exit138
  %.060327 = phi i64 [ %i.gm, %_ZNSt6vectorImSaImEE9push_backEOm.exit138 ], [ 0, %.lr.ph329.preheader ]
  %.sroa.0166.0326 = phi ptr [ %i.fv, %_ZNSt6vectorImSaImEE9push_backEOm.exit138 ], [ %i.i, %.lr.ph329.preheader ] ; 2 uses
  %.sroa.0199.3325 = phi ptr [ %.sroa.0199.12, %_ZNSt6vectorImSaImEE9push_backEOm.exit138 ], [ %i.fn, %.lr.ph329.preheader ] ; 5 uses
  %.sroa.26.2324 = phi ptr [ %.sroa.26.7, %_ZNSt6vectorImSaImEE9push_backEOm.exit138 ], [ %i.fn, %.lr.ph329.preheader ] ; 5 uses
  %.sroa.48.3323 = phi ptr [ %.sroa.48.12, %_ZNSt6vectorImSaImEE9push_backEOm.exit138 ], [ %i.fo, %.lr.ph329.preheader ] ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.0166.0326, i64 4
  %i.fw = load i32, ptr %.sroa.0166.0326, align 4
  %i.fx = sext i32 %i.fw to i64                   ; 2 uses
  %.not.i.i129 = icmp eq ptr %.sroa.26.2324, %.sroa.48.3323
  br i1 %.not.i.i129, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.lr.ph329
  store i64 %i.fx, ptr %.sroa.26.2324, align 8
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit138

bb.aw:                                            ; preds = %.lr.ph329
  %i.fy = ptrtoint ptr %.sroa.26.2324 to i64
  %i.fz = ptrtoint ptr %.sroa.0199.3325 to i64
  %i.ga = sub i64 %i.fy, %i.fz                    ; 6 uses
  %i.gb = icmp eq i64 %i.ga, 9223372036854775800
  br i1 %i.gb, label %bb.ax, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i130

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #22
          to label %.noexc136 unwind label %.loopexit.split-lp272.loopexit.split-lp

.noexc136:                                        ; preds = %bb.ax
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i130: ; preds = %bb.aw
  %i.gc = ashr exact i64 %i.ga, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i131 = tail call i64 @llvm.umax.i64(i64 %i.gc, i64 1)
  %i.gd = add nsw i64 %.sroa.speculated.i.i.i.i131, %i.gc ; 2 uses
  %i.ge = icmp ult i64 %i.gd, %i.gc
  %i.gf = tail call i64 @llvm.umin.i64(i64 %i.gd, i64 1152921504606846975)
  %i.gg = select i1 %i.ge, i64 1152921504606846975, i64 %i.gf ; 3 uses
  %.not.i.i.i.i132 = icmp ne i64 %i.gg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i132)
  %i.gh = shl nuw nsw i64 %i.gg, 3
  %i.gi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gh) #23
          to label %.noexc137 unwind label %.loopexit.split-lp272.loopexit.split-lp ; 4 uses

.noexc137:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i130
  %i.gj = getelementptr inbounds i8, ptr %i.gi, i64 %i.ga ; 2 uses
  store i64 %i.fx, ptr %i.gj, align 8
  %i.gk = icmp sgt i64 %i.ga, 0
  br i1 %i.gk, label %bb.ay, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i135

bb.ay:                                            ; preds = %.noexc137
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gi, ptr align 8 %.sroa.0199.3325, i64 %i.ga, i1 false)
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i135

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i135: ; preds = %bb.ay, %.noexc137
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0199.3325, i64 noundef %i.ga) #24
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %i.gg
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit138

_ZNSt6vectorImSaImEE9push_backEOm.exit138:        ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i135, %bb.av
  %.sroa.48.12 = phi ptr [ %i.gl, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i135 ], [ %.sroa.48.3323, %bb.av ] ; 2 uses
  %.pn = phi ptr [ %i.gj, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i135 ], [ %.sroa.26.2324, %bb.av ]
  %.sroa.0199.12 = phi ptr [ %i.gi, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i135 ], [ %.sroa.0199.3325, %bb.av ] ; 2 uses
  %.sroa.26.7 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %i.gm = add nuw i64 %.060327, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.gm, %i.fu
  br i1 %exitcond.not, label %.loopexit264, label %.lr.ph329, !llvm.loop !54

.loopexit.split-lp272.loopexit.split-lp:          ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i130, %bb.ax
  %lpad.loopexit.split-lp503 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.az:                                            ; preds = %bb.aq
  %.not256 = icmp eq i32 %i.fh, 0
  br i1 %.not256, label %.loopexit264, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i139

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i139: ; preds = %bb.az
  %i.gn = shl nuw nsw i64 %i.fi, 3
  %i.go = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gn) #23
          to label %_ZNSt6vectorImSaImEE7reserveEm.exit144 unwind label %bb.d ; 4 uses

_ZNSt6vectorImSaImEE7reserveEm.exit144:           ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i139
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %i.fi ; 2 uses
  %.pre = load i32, ptr %i.fg, align 8
  %i.gq = icmp eq i32 %.pre, 0
  br i1 %i.gq, label %.loopexit264, label %.lr.ph336

.lr.ph336:                                        ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit144, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %storemerge335 = phi i64 [ %i.hf, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ 0, %_ZNSt6vectorImSaImEE7reserveEm.exit144 ] ; 3 uses
  %.sroa.0199.5334 = phi ptr [ %.sroa.0199.14, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ %i.go, %_ZNSt6vectorImSaImEE7reserveEm.exit144 ] ; 6 uses
  %.sroa.26.3333 = phi ptr [ %.sroa.26.9, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ %i.go, %_ZNSt6vectorImSaImEE7reserveEm.exit144 ] ; 5 uses
  %.sroa.48.5332 = phi ptr [ %.sroa.48.14, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ %i.gp, %_ZNSt6vectorImSaImEE7reserveEm.exit144 ] ; 2 uses
  %.not.i145 = icmp eq ptr %.sroa.26.3333, %.sroa.48.5332
  br i1 %.not.i145, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph336
  store i64 %storemerge335, ptr %.sroa.26.3333, align 8
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.bb:                                            ; preds = %.lr.ph336
  %i.gr = ptrtoint ptr %.sroa.26.3333 to i64
  %i.gs = ptrtoint ptr %.sroa.0199.5334 to i64
  %i.gt = sub i64 %i.gr, %i.gs                    ; 6 uses
  %i.gu = icmp eq i64 %i.gt, 9223372036854775800
  br i1 %i.gu, label %bb.bc, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #22
          to label %.noexc148 unwind label %.loopexit.split-lp266.loopexit.split-lp

.noexc148:                                        ; preds = %bb.bc
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bb
  %i.gv = ashr exact i64 %i.gt, 3                 ; 3 uses
  %.sroa.speculated.i.i.i146 = tail call i64 @llvm.umax.i64(i64 %i.gv, i64 1)
  %i.gw = add nsw i64 %.sroa.speculated.i.i.i146, %i.gv ; 2 uses
  %i.gx = icmp ult i64 %i.gw, %i.gv
  %i.gy = tail call i64 @llvm.umin.i64(i64 %i.gw, i64 1152921504606846975)
  %i.gz = select i1 %i.gx, i64 1152921504606846975, i64 %i.gy ; 3 uses
  %.not.i.i.i147 = icmp ne i64 %i.gz, 0
  tail call void @llvm.assume(i1 %.not.i.i.i147)
  %i.ha = shl nuw nsw i64 %i.gz, 3
  %i.hb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ha) #23
          to label %.noexc149 unwind label %.loopexit.split-lp266.loopexit.split-lp ; 4 uses

.noexc149:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.hc = getelementptr inbounds i8, ptr %i.hb, i64 %i.gt ; 2 uses
  store i64 %storemerge335, ptr %i.hc, align 8
  %i.hd = icmp sgt i64 %i.gt, 0
  br i1 %i.hd, label %bb.bd, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.bd:                                            ; preds = %.noexc149
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hb, ptr align 8 %.sroa.0199.5334, i64 %i.gt, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.bd, %.noexc149
  %.not.i17.i.i = icmp eq ptr %.sroa.0199.5334, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0199.5334, i64 noundef %i.gt) #24
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.be, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %i.gz
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.ba
  %.sroa.48.14 = phi ptr [ %i.he, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.48.5332, %bb.ba ] ; 2 uses
  %.pn257 = phi ptr [ %i.hc, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.26.3333, %bb.ba ]
  %.sroa.0199.14 = phi ptr [ %i.hb, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.0199.5334, %bb.ba ] ; 2 uses
  %.sroa.26.9 = getelementptr inbounds nuw i8, ptr %.pn257, i64 8
  %i.hf = add nuw nsw i64 %storemerge335, 1       ; 2 uses
  %i.hg = load i32, ptr %i.fg, align 8
  %i.hh = zext i32 %i.hg to i64
  %i.hi = icmp samesign ult i64 %i.hf, %i.hh
  br i1 %i.hi, label %.lr.ph336, label %.loopexit264, !llvm.loop !55

.loopexit.split-lp266.loopexit.split-lp:          ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i, %bb.bc
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

.loopexit264:                                     ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit138, %_ZNSt6vectorImSaImEE9push_backERKm.exit, %bb.az, %bb.au, %_ZNSt6vectorImSaImEE7reserveEm.exit144
  %.sroa.48.6 = phi ptr [ %.sroa.48.14, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ %i.gp, %_ZNSt6vectorImSaImEE7reserveEm.exit144 ], [ %i.fo, %bb.au ], [ null, %bb.az ], [ %.sroa.48.12, %_ZNSt6vectorImSaImEE9push_backEOm.exit138 ] ; 3 uses
  %.sroa.0199.6 = phi ptr [ %.sroa.0199.14, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ %i.go, %_ZNSt6vectorImSaImEE7reserveEm.exit144 ], [ %i.fn, %bb.au ], [ null, %bb.az ], [ %.sroa.0199.12, %_ZNSt6vectorImSaImEE9push_backEOm.exit138 ] ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.hk = load i32, ptr %i.hj, align 4            ; 2 uses
  %i.hl = zext i32 %i.hk to i64
  %i.hm = mul nuw nsw i64 %i.hl, 12               ; 2 uses
  %i.hn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hm) #23
          to label %bb.bf unwind label %bb.d      ; 2 uses

bb.bf:                                            ; preds = %.loopexit264
  %i.ho = icmp eq i32 %i.hk, 0
  br i1 %i.ho, label %.loopexit263, label %.loopexit263.loopexit

.loopexit263.loopexit:                            ; preds = %bb.bf
  %i.hp = add nsw i64 %i.hm, -12                  ; 2 uses
  %i.hq = urem i64 %i.hp, 12
  %i.hr = sub nuw nsw i64 %i.hp, %i.hq
  %i.hs = add nsw i64 %i.hr, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.hn, i8 0, i64 %i.hs, i1 false)
  br label %.loopexit263

.loopexit263:                                     ; preds = %.loopexit263.loopexit, %bb.bf
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store ptr %i.hn, ptr %i.ht, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.hv = load i32, ptr %i.hu, align 8            ; 2 uses
  %.not367 = icmp eq i32 %i.hv, 0
  br i1 %.not367, label %.critedge, label %.lr.ph345

.lr.ph345:                                        ; preds = %.loopexit263
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  br label %bb.bg

bb.bg:                                            ; preds = %.lr.ph345, %._crit_edge342
  %i.hx = phi i32 [ %i.hv, %.lr.ph345 ], [ %i.ip, %._crit_edge342 ]
  %.059343 = phi i64 [ 0, %.lr.ph345 ], [ %i.iq, %._crit_edge342 ] ; 6 uses
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0199.6, i64 %.059343
  %i.hz = load i64, ptr %i.hy, align 8
  %i.ia = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0180.0.lcssa, i64 %i.hz ; 2 uses
  %i.ib = load <2 x float>, ptr %i.ia, align 4    ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4 ; 3 uses
  %11 = load ptr, ptr %i.hw, align 8
  %i.ic = getelementptr inbounds nuw [16 x i8], ptr %11, i64 %.059343
  %i.id = load i32, ptr %i.ic, align 8            ; 4 uses
  %i.ie = zext i32 %i.id to i64                   ; 2 uses
  %.not368 = icmp eq i32 %i.id, 0
  br i1 %.not368, label %._crit_edge342, label %.lr.ph341.preheader

.lr.ph341.preheader:                              ; preds = %bb.bg
  %xtraiter = and i64 %i.ie, 1
  %i.if = icmp eq i32 %i.id, 1
  br i1 %i.if, label %.lr.ph341.epil.preheader, label %.lr.ph341.preheader.new

.lr.ph341.preheader.new:                          ; preds = %.lr.ph341.preheader
  %unroll_iter = and i64 %i.ie, 4294967294
  br label %.lr.ph341

._crit_edge342.loopexit.unr-lcssa:                ; preds = %.lr.ph341
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge342.loopexit, label %.lr.ph341.epil.preheader

.lr.ph341.epil.preheader:                         ; preds = %._crit_edge342.loopexit.unr-lcssa, %.lr.ph341.preheader
  %.0339.epil.init = phi i64 [ 0, %.lr.ph341.preheader ], [ %i.jm, %._crit_edge342.loopexit.unr-lcssa ]
  %lcmp.mod516 = trunc i32 %i.id to i1
  tail call void @llvm.assume(i1 %lcmp.mod516)
  %i.ig = load ptr, ptr %i.ht, align 8
  %i.ih = load ptr, ptr %i.hw, align 8
  %i.ii = getelementptr inbounds nuw [16 x i8], ptr %i.ih, i64 %.059343
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.ik = load ptr, ptr %i.ij, align 8
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %.0339.epil.init
  %i.im = load i32, ptr %i.il, align 4
  %i.in = zext i32 %i.im to i64
  %i.io = getelementptr inbounds nuw [12 x i8], ptr %i.ig, i64 %i.in ; 2 uses
  store <2 x float> %i.ib, ptr %i.io, align 4
  %.sroa.6.0..sroa_idx159.epil = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  store float %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx159.epil, align 4
  br label %._crit_edge342.loopexit

._crit_edge342.loopexit:                          ; preds = %._crit_edge342.loopexit.unr-lcssa, %.lr.ph341.epil.preheader
  %.pre393.a = load i32, ptr %i.hu, align 8
  br label %._crit_edge342

._crit_edge342:                                   ; preds = %._crit_edge342.loopexit, %bb.bg
  %i.ip = phi i32 [ %.pre393.a, %._crit_edge342.loopexit ], [ %i.hx, %bb.bg ] ; 2 uses
  %i.iq = add nuw nsw i64 %.059343, 1             ; 2 uses
  %i.ir = zext i32 %i.ip to i64
  %i.is = icmp samesign ult i64 %i.iq, %i.ir
  br i1 %i.is, label %bb.bg, label %.critedge.thread, !llvm.loop !56

.lr.ph341:                                        ; preds = %.lr.ph341, %.lr.ph341.preheader.new
  %.0339 = phi i64 [ 0, %.lr.ph341.preheader.new ], [ %i.jm, %.lr.ph341 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph341.preheader.new ], [ %niter.next.1, %.lr.ph341 ]
  %i.it = load ptr, ptr %i.ht, align 8
  %i.iu = load ptr, ptr %i.hw, align 8
  %i.iv = getelementptr inbounds nuw [16 x i8], ptr %i.iu, i64 %.059343
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.ix = load ptr, ptr %i.iw, align 8
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %.0339
  %i.iz = load i32, ptr %i.iy, align 4
  %i.ja = zext i32 %i.iz to i64
  %i.jb = getelementptr inbounds nuw [12 x i8], ptr %i.it, i64 %i.ja ; 2 uses
  store <2 x float> %i.ib, ptr %i.jb, align 4
  %.sroa.6.0..sroa_idx159 = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  store float %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx159, align 4
  %i.jc = load ptr, ptr %i.ht, align 8
  %i.jd = load ptr, ptr %i.hw, align 8
  %i.je = getelementptr inbounds nuw [16 x i8], ptr %i.jd, i64 %.059343
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  %i.jg = load ptr, ptr %i.jf, align 8
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %.0339
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 4
  %i.jj = load i32, ptr %i.ji, align 4
  %i.jk = zext i32 %i.jj to i64
  %i.jl = getelementptr inbounds nuw [12 x i8], ptr %i.jc, i64 %i.jk ; 2 uses
  store <2 x float> %i.ib, ptr %i.jl, align 4
  %.sroa.6.0..sroa_idx159.1 = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  store float %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx159.1, align 4
  %i.jm = add nuw nsw i64 %.0339, 2               ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge342.loopexit.unr-lcssa, label %.lr.ph341, !llvm.loop !57

.critedge:                                        ; preds = %bb.v, %.lr.ph364, %.lr.ph359, %.loopexit263, %.loopexit260, %.loopexit
  %.sroa.48.7 = phi ptr [ null, %.loopexit ], [ %.sroa.48.1.lcssa, %.loopexit260 ], [ %.sroa.48.6, %.loopexit263 ], [ %.sroa.48.1.lcssa, %.lr.ph359 ], [ null, %.lr.ph364 ], [ %.sroa.48.1.lcssa, %bb.v ] ; 2 uses
  %.sroa.0199.7 = phi ptr [ null, %.loopexit ], [ %.sroa.0199.1.lcssa, %.loopexit260 ], [ %.sroa.0199.6, %.loopexit263 ], [ %.sroa.0199.1.lcssa, %.lr.ph359 ], [ null, %.lr.ph364 ], [ %.sroa.0199.1.lcssa, %bb.v ] ; 2 uses
  %.not.i.i.i150 = icmp eq ptr %.sroa.0180.0.lcssa, null
  br i1 %.not.i.i.i150, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit, label %.critedge.thread

.critedge.thread:                                 ; preds = %._crit_edge342, %bb.ak, %.critedge
  %.sroa.0199.7436 = phi ptr [ %.sroa.0199.7, %.critedge ], [ %.sroa.0199.1.lcssa, %bb.ak ], [ %.sroa.0199.6, %._crit_edge342 ]
  %.sroa.48.7434 = phi ptr [ %.sroa.48.7, %.critedge ], [ %.sroa.48.1.lcssa, %bb.ak ], [ %.sroa.48.6, %._crit_edge342 ]
  %i.jn = ptrtoint ptr %.sroa.24.0.lcssa to i64
  %i.jo = ptrtoint ptr %.sroa.0180.0.lcssa to i64
  %i.jp = sub i64 %i.jn, %i.jo
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0180.0.lcssa, i64 noundef %i.jp) #24
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit:    ; preds = %.critedge, %.critedge.thread
  %.sroa.0199.7437 = phi ptr [ %.sroa.0199.7, %.critedge ], [ %.sroa.0199.7436, %.critedge.thread ] ; 3 uses
  %.sroa.48.7435 = phi ptr [ %.sroa.48.7, %.critedge ], [ %.sroa.48.7434, %.critedge.thread ]
  %.not.i.i.i151 = icmp eq ptr %.sroa.0199.7437, null
  br i1 %.not.i.i.i151, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit
  %i.jq = ptrtoint ptr %.sroa.48.7435 to i64
  %i.jr = ptrtoint ptr %.sroa.0199.7437 to i64
  %i.js = sub i64 %i.jq, %i.jr
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0199.7437, i64 noundef %i.js) #24
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit, %bb.bh
  ret void

bb.bi:                                            ; preds = %.loopexit.split-lp266.loopexit.split-lp, %.loopexit.split-lp272.loopexit.split-lp, %.loopexit276, %.loopexit.split-lp277, %.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, %bb.aj, %bb.at, %bb.an, %bb.l, %bb.d
  %.sroa.0180.2 = phi ptr [ %.sroa.0180.1, %bb.d ], [ %.sroa.0180.0.lcssa, %.loopexit.split-lp272.loopexit.split-lp ], [ %.sroa.0180.0.lcssa, %bb.an ], [ %.sroa.0180.0313, %.loopexit.split-lp277 ], [ %.sroa.0180.0.lcssa, %bb.aj ], [ %.sroa.0180.0.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121 ], [ %.sroa.0180.0.lcssa, %bb.l ], [ %.sroa.0180.0.lcssa, %.loopexit.split-lp266.loopexit.split-lp ], [ %.sroa.0180.0.lcssa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119 ], [ %.sroa.0180.0.lcssa, %bb.at ], [ %.sroa.0180.0.lcssa, %.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0180.0317, %.loopexit276 ] ; 3 uses
  %.sroa.24.2 = phi ptr [ %.sroa.24.1, %bb.d ], [ %.sroa.24.0.lcssa, %.loopexit.split-lp272.loopexit.split-lp ], [ %.sroa.24.0.lcssa, %bb.an ], [ %.sroa.24.0306, %.loopexit.split-lp277 ], [ %.sroa.24.0.lcssa, %bb.aj ], [ %.sroa.24.0.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121 ], [ %.sroa.24.0.lcssa, %bb.l ], [ %.sroa.24.0.lcssa, %.loopexit.split-lp266.loopexit.split-lp ], [ %.sroa.24.0.lcssa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119 ], [ %.sroa.24.0.lcssa, %bb.at ], [ %.sroa.24.0.lcssa, %.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.24.0319, %.loopexit276 ]
  %.sroa.48.8 = phi ptr [ %.sroa.48.0, %bb.d ], [ %.sroa.26.2324, %.loopexit.split-lp272.loopexit.split-lp ], [ null, %bb.an ], [ null, %.loopexit.split-lp277 ], [ %.sroa.48.1.lcssa, %bb.aj ], [ %.sroa.48.1.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121 ], [ null, %bb.l ], [ %.sroa.26.3333, %.loopexit.split-lp266.loopexit.split-lp ], [ %.sroa.48.1.lcssa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119 ], [ null, %bb.at ], [ %.sroa.26.0349, %.loopexit.split-lp.loopexit.split-lp ], [ null, %.loopexit276 ]
  %.sroa.0199.8 = phi ptr [ %.sroa.0199.0, %bb.d ], [ %.sroa.0199.3325, %.loopexit.split-lp272.loopexit.split-lp ], [ null, %bb.an ], [ null, %.loopexit.split-lp277 ], [ %.sroa.0199.1.lcssa, %bb.aj ], [ %.sroa.0199.1.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121 ], [ null, %bb.l ], [ %.sroa.0199.5334, %.loopexit.split-lp266.loopexit.split-lp ], [ %.sroa.0199.1.lcssa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119 ], [ null, %bb.at ], [ %.sroa.0199.1350, %.loopexit.split-lp.loopexit.split-lp ], [ null, %.loopexit276 ] ; 3 uses
  %.pn96 = phi { ptr, i32 } [ %i.n, %bb.d ], [ %lpad.loopexit.split-lp503, %.loopexit.split-lp272.loopexit.split-lp ], [ %i.en, %bb.an ], [ %lpad.loopexit.split-lp279, %.loopexit.split-lp277 ], [ %.pn88.pn.pn.pn.pn.pn242, %bb.aj ], [ %.pn88.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121 ], [ %i.al, %bb.l ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp266.loopexit.split-lp ], [ %.pn88.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119 ], [ %i.fl, %bb.at ], [ %lpad.loopexit.split-lp486, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit278, %.loopexit276 ]
  %.not.i.i.i152 = icmp eq ptr %.sroa.0180.2, null
  br i1 %.not.i.i.i152, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit153, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.jt = ptrtoint ptr %.sroa.24.2 to i64
  %i.ju = ptrtoint ptr %.sroa.0180.2 to i64
  %i.jv = sub i64 %i.jt, %i.ju
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0180.2, i64 noundef %i.jv) #24
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit153

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit153: ; preds = %bb.bi, %bb.bj
  %.not.i.i.i154 = icmp eq ptr %.sroa.0199.8, null
  br i1 %.not.i.i.i154, label %_ZNSt6vectorImSaImEED2Ev.exit155, label %bb.bk

bb.bk:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit153
  %i.jw = ptrtoint ptr %.sroa.48.8 to i64
  %i.jx = ptrtoint ptr %.sroa.0199.8 to i64
  %i.jy = sub i64 %i.jw, %i.jx
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0199.8, i64 noundef %i.jy) #24
  br label %_ZNSt6vectorImSaImEED2Ev.exit155

_ZNSt6vectorImSaImEED2Ev.exit155:                 ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit153, %bb.bk
  resume { ptr, i32 } %.pn96

bb.bl:                                            ; preds = %bb.ad
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp12X3DGeoHelper10add_normalER6aiMeshRKNSt7__cxx114listI10aiVector3tIfESaIS6_EEEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1320) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i1 noundef zeroext %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  br i1 %2, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = zext i32 %i.e to i64
  %.not34 = icmp eq i64 %i.c, %i.f
  br i1 %.not34, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull @.str.19)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.f:                                             ; preds = %bb.b
  %i.i = mul nuw nsw i64 %i.c, 12                 ; 2 uses
  %i.j = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #23 ; 2 uses
  %i.k = icmp eq i32 %i.e, 0
  br i1 %i.k, label %.loopexit38, label %.loopexit38.loopexit

.loopexit38.loopexit:                             ; preds = %bb.f
  %i.l = add nsw i64 %i.i, -12                    ; 2 uses
  %i.m = urem i64 %i.l, 12
  %i.n = sub nuw nsw i64 %i.l, %i.m
  %i.o = add nsw i64 %i.n, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.j, i8 0, i64 %i.o, i1 false)
  br label %.loopexit38

.loopexit38:                                      ; preds = %.loopexit38.loopexit, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.j, ptr %i.p, align 8
  %i.q = load i32, ptr %i.d, align 4
  %.not52 = icmp eq i32 %i.q, 0
  br i1 %.not52, label %.loopexit, label %.lr.ph49

.lr.ph49:                                         ; preds = %.loopexit38, %.lr.ph49
  %.02947 = phi i64 [ %i.v, %.lr.ph49 ], [ 0, %.loopexit38 ] ; 2 uses
  %.sroa.036.046 = phi ptr [ %i.r, %.lr.ph49 ], [ %i.a, %.loopexit38 ] ; 2 uses
  %i.r = load ptr, ptr %.sroa.036.046, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.036.046, i64 16
  %i.t = load ptr, ptr %i.p, align 8
  %i.u = getelementptr inbounds nuw [12 x i8], ptr %i.t, i64 %.02947
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.u, ptr noundef nonnull align 8 dereferenceable(12) %i.s, i64 12, i1 false)
  %i.v = add nuw nsw i64 %.02947, 1               ; 2 uses
  %i.w = load i32, ptr %i.d, align 4
  %i.x = zext i32 %i.w to i64
  %i.y = icmp samesign ult i64 %i.v, %i.x
  br i1 %i.y, label %.lr.ph49, label %.loopexit, !llvm.loop !59

bb.g:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = zext i32 %i.aa to i64
  %.not = icmp eq i64 %i.c, %i.ab
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull @.str.21)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.k:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.af = load i32, ptr %i.ae, align 4            ; 2 uses
  %i.ag = zext i32 %i.af to i64
  %i.ah = mul nuw nsw i64 %i.ag, 12               ; 2 uses
  %i.ai = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ah) #23 ; 2 uses
  %i.aj = icmp eq i32 %i.af, 0
  br i1 %i.aj, label %.loopexit40, label %.loopexit40.loopexit

.loopexit40.loopexit:                             ; preds = %bb.k
  %i.ak = add nsw i64 %i.ah, -12                  ; 2 uses
  %i.al = urem i64 %i.ak, 12
  %i.am = sub nuw nsw i64 %i.ak, %i.al
  %i.an = add nsw i64 %i.am, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ai, i8 0, i64 %i.an, i1 false)
  br label %.loopexit40

.loopexit40:                                      ; preds = %.loopexit40.loopexit, %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store ptr %i.ai, ptr %i.ao, align 8
  %i.ap = load i32, ptr %i.z, align 8             ; 2 uses
  %.not50 = icmp eq i32 %i.ap, 0
  br i1 %.not50, label %.loopexit, label %.lr.ph45

.lr.ph45:                                         ; preds = %.loopexit40
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph45, %._crit_edge
  %i.ar = phi i32 [ %i.ap, %.lr.ph45 ], [ %i.bg, %._crit_edge ]
  %.02843 = phi i64 [ 0, %.lr.ph45 ], [ %i.bi, %._crit_edge ] ; 5 uses
  %.sroa.036.142 = phi ptr [ %i.a, %.lr.ph45 ], [ %i.bh, %._crit_edge ] ; 2 uses
  %3 = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %.02843
  %i.at = load i32, ptr %i.as, align 8            ; 4 uses
  %i.au = zext i32 %i.at to i64                   ; 2 uses
  %.not51 = icmp eq i32 %i.at, 0
  br i1 %.not51, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.036.142, i64 16 ; 3 uses
  %xtraiter = and i64 %i.au, 1
  %i.aw = icmp eq i32 %i.at, 1
  br i1 %i.aw, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.au, 4294967294
  br label %bb.m

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.041.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ce, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod59 = trunc i32 %i.at to i1
  tail call void @llvm.assume(i1 %lcmp.mod59)
  %i.ax = load ptr, ptr %i.ao, align 8
  %i.ay = load ptr, ptr %i.aq, align 8
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %.02843
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %.041.epil.init
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [12 x i8], ptr %i.ax, i64 %i.be
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bf, ptr noundef nonnull align 4 dereferenceable(12) %i.av, i64 12, i1 false)
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.epil.preheader
  %.pre.a = load i32, ptr %i.z, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.l
  %i.bg = phi i32 [ %.pre.a, %._crit_edge.loopexit ], [ %i.ar, %bb.l ] ; 2 uses
  %i.bh = load ptr, ptr %.sroa.036.142, align 8
  %i.bi = add nuw nsw i64 %.02843, 1              ; 2 uses
  %i.bj = zext i32 %i.bg to i64
  %i.bk = icmp samesign ult i64 %i.bi, %i.bj
  br i1 %i.bk, label %bb.l, label %.loopexit, !llvm.loop !60

bb.m:                                             ; preds = %bb.m, %.lr.ph.new
  %.041 = phi i64 [ 0, %.lr.ph.new ], [ %i.ce, %bb.m ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.m ]
  %i.bl = load ptr, ptr %i.ao, align 8
  %i.bm = load ptr, ptr %i.aq, align 8
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %.02843
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %.041
  %i.br = load i32, ptr %i.bq, align 4
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [12 x i8], ptr %i.bl, i64 %i.bs
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bt, ptr noundef nonnull align 4 dereferenceable(12) %i.av, i64 12, i1 false)
  %i.bu = load ptr, ptr %i.ao, align 8
  %i.bv = load ptr, ptr %i.aq, align 8
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %.02843
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %.041
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [12 x i8], ptr %i.bu, i64 %i.cc
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cd, ptr noundef nonnull align 4 dereferenceable(12) %i.av, i64 12, i1 false)
  %i.ce = add nuw nsw i64 %.041, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.m, !llvm.loop !61

.loopexit:                                        ; preds = %._crit_edge, %.lr.ph49, %.loopexit40, %.loopexit38
  ret void

bb.n:                                             ; preds = %bb.j, %bb.e
  %.sink = phi ptr [ %i.ac, %bb.j ], [ %i.g, %bb.e ]
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.j ], [ %i.h, %bb.e ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #21
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp12X3DGeoHelper13add_tex_coordER6aiMeshRKSt6vectorIiSaIiEES7_RKNSt7__cxx114listI10aiVector2tIfESaISB_EEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1320) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.14", align 8    ; 16 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = load i64, ptr %i.b, align 8              ; 4 uses
  %i.d = icmp ugt i64 %i.c, 768614336404564650
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #22
          to label %.noexc unwind label %bb.ag

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not104 = icmp eq i64 %i.c, 0
  br i1 %.not104, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit, label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.e = mul nuw nsw i64 %i.c, 12
  %i.f = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #23
          to label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i unwind label %bb.ag ; 2 uses

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i
  %i.g = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %i.c
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i, %bb.c
  %.sroa.12.1 = phi ptr [ %i.f, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ null, %bb.c ] ; 4 uses
  %.sroa.20.3 = phi ptr [ %i.g, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ null, %bb.c ] ; 2 uses
  %.sroa.071.0127 = load ptr, ptr %3, align 8     ; 2 uses
  %.not105128 = icmp eq ptr %.sroa.071.0127, %3
  br i1 %.not105128, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRKfS6_fEEERS1_DpOT_.exit, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit
  %.sroa.12.0.lcssa = phi ptr [ %.sroa.12.1, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit ], [ %.sroa.12.2, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRKfS6_fEEERS1_DpOT_.exit ]
  %.sroa.20.0.lcssa = phi ptr [ %.sroa.20.3, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit ], [ %.sroa.20.4, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRKfS6_fEEERS1_DpOT_.exit ] ; 11 uses
  %.sroa.075.0.lcssa = phi ptr [ %.sroa.12.1, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit ], [ %.sroa.075.4, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRKfS6_fEEERS1_DpOT_.exit ] ; 15 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load ptr, ptr %2, align 8
  %.not = icmp eq ptr %i.i, %i.j
  br i1 %.not, label %bb.o, label %bb.h

.lr.ph:                                           ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRKfS6_fEEERS1_DpOT_.exit
  %.sroa.071.0132 = phi ptr [ %.sroa.071.0, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRKfS6_fEEERS1_DpOT_.exit ], [ %.sroa.071.0127, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit ] ; 2 uses
  %.sroa.075.0131 = phi ptr [ %.sroa.075.4, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRKfS6_fEEERS1_DpOT_.exit ], [ %.sroa.12.1, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit ] ; 7 uses
  %.sroa.20.0130 = phi ptr [ %.sroa.20.4, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRKfS6_fEEERS1_DpOT_.exit ], [ %.sroa.20.3, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit ] ; 6 uses
  %.sroa.12.0129 = phi ptr [ %.sroa.12.2, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRKfS6_fEEERS1_DpOT_.exit ], [ %.sroa.12.1, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.071.0132, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.12.0129, %.sroa.20.0130
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.l = load <2 x float>, ptr %i.k, align 4
  store <2 x float> %i.l, ptr %.sroa.12.0129, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.12.0129, i64 8
  store float 0.000000e+00, ptr %i.m, align 4
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRKfS6_fEEERS1_DpOT_.exit

bb.e:                                             ; preds = %.lr.ph
  %i.n = ptrtoint ptr %.sroa.20.0130 to i64
  %i.o = ptrtoint ptr %.sroa.075.0131 to i64
  %i.p = sub i64 %i.n, %i.o                       ; 4 uses
  %i.q = icmp eq i64 %i.p, 9223372036854775800
  br i1 %i.q, label %bb.f, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #22
          to label %.noexc52 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc52:                                         ; preds = %bb.f
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.r = sdiv exact i64 %i.p, 12                  ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  %i.s = add nsw i64 %.sroa.speculated.i.i.i, %i.r ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.s, i64 768614336404564650)
  %i.v = select i1 %i.t, i64 768614336404564650, i64 %i.u ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.v, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.w = mul nuw nsw i64 %i.v, 12
  %i.x = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #23
          to label %.noexc53 unwind label %.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc53:                                         ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.p ; 2 uses
  %i.z = load <2 x float>, ptr %i.k, align 4
  store <2 x float> %i.z, ptr %i.y, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store float 0.000000e+00, ptr %i.aa, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.075.0131, %.sroa.20.0130
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc53, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %i.x, %.noexc53 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i ], [ %.sroa.075.0131, %.noexc53 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i, i64 12, i1 false), !alias.scope !68
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 12 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ab, %.sroa.20.0130
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc53
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.x, %.noexc53 ], [ %i.ac, %.lr.ph.i.i.i.i.i ]
  %.not.i35.i.i = icmp eq ptr %.sroa.075.0131, null
  br i1 %.not.i35.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKfS6_fEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.075.0131, i64 noundef %i.p) #24
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKfS6_fEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKfS6_fEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i
  %i.ad = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.v
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRKfS6_fEEERS1_DpOT_.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRKfS6_fEEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKfS6_fEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.d
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKfS6_fEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.12.0129, %bb.d ]
  %.sroa.20.4 = phi ptr [ %i.ad, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKfS6_fEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.20.0130, %bb.d ] ; 2 uses
  %.sroa.075.4 = phi ptr [ %i.x, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKfS6_fEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.075.0131, %bb.d ] ; 2 uses
  %.sroa.12.2 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 12 ; 2 uses
  %.sroa.071.0 = load ptr, ptr %.sroa.071.0132, align 8 ; 2 uses
  %.not105 = icmp eq ptr %.sroa.071.0, %3
  br i1 %.not105, label %._crit_edge, label %.lr.ph, !llvm.loop !65

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %bb.f
  %lpad.loopexit.split-lp232 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.h:                                             ; preds = %._crit_edge
  invoke void @_ZN6Assimp12X3DGeoHelper22coordIdx_str2faces_arrERKSt6vectorIiSaIiEERS1_I6aiFaceSaIS6_EERj(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.i unwind label %bb.ag

bb.i:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr %4, align 8               ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = icmp eq ptr %i.ae, %i.ag
  br i1 %i.ah, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ai = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull @.str.22)
end_hunk_1
