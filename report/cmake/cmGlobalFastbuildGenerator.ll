Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmGlobalFastbuildGenerator?download=true
inline.NumInlined: 7702
inline.NumDeleted: 2036
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN26cmGlobalFastbuildGenerator21WriteIDEProjectConfigERKSt6vectorI16IDEProjectConfigSaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.ek = load ptr, ptr %11, align 8, !tbaa !15   ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.l
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115
  %i.em = load i64, ptr %i.l, align 8, !tbaa !17
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.en) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %.loopexit.split-lp

bb.n:                                             ; preds = %._crit_edge.i.i82
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i91
  %i.ep = load i64, ptr %i.aa, align 8, !tbaa !17
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.eq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119, %bb.n
  %.pn37 = phi { ptr, i32 } [ %i.eo, %bb.n ], [ %i.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119 ], [ %i.di, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i91 ]
  %i.er = load ptr, ptr %16, align 8, !tbaa !15   ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.v
  br i1 %i.es, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121
  %i.et = load i64, ptr %i.v, align 8, !tbaa !17
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.eu) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  %i.ev = load ptr, ptr %14, align 8, !tbaa !15   ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.t
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124
  %i.ex = load i64, ptr %i.t, align 8, !tbaa !17
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ey) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %.loopexit.split-lp

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.0220.0354, i64 72
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !18
  %i.fb = icmp eq i64 %i.fa, 0
  br i1 %i.fb, label %bb.t, label %._crit_edge.i.i128

._crit_edge.i.i128:                               ; preds = %bb.o
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.0220.0354, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  store ptr %i.ab, ptr %17, align 8, !tbaa !9
  store i64 7886488383309048912, ptr %i.ab, align 8
  store i64 8, ptr %i.ac, align 8, !tbaa !18
  store i8 0, ptr %i.ap, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  store ptr %i.ad, ptr %19, align 8, !tbaa !9
  store i8 39, ptr %i.ad, align 8, !tbaa !17
  store i64 1, ptr %i.ae, align 8, !tbaa !18
  store i8 0, ptr %i.aq, align 1, !tbaa !17
  invoke void @_ZN26cmGlobalFastbuildGenerator5QuoteERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(32) %i.fc, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %._crit_edge.i.i128
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %i.af, ptr %4, align 8, !tbaa !9
  store i8 61, ptr %i.af, align 8, !tbaa !17
  store i64 1, ptr %i.ag, align 8, !tbaa !18
  store i8 0, ptr %i.ah, align 1, !tbaa !17
  invoke void @_ZN26cmGlobalFastbuildGenerator13WriteVariableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_i(ptr noundef nonnull readonly align 8 dereferenceable(2808) %0, ptr noundef nonnull readonly align 8 dereferenceable(32) %17, ptr noundef nonnull readonly align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 2)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.fd = load ptr, ptr %4, align 8, !tbaa !15    ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.af
  br i1 %i.fe, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i139: ; preds = %bb.q
  %i.ff = load i64, ptr %i.af, align 8, !tbaa !17
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fg) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i140

bb.r:                                             ; preds = %bb.p
  %i.fh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fi = load ptr, ptr %4, align 8, !tbaa !15    ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.af
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i136: ; preds = %bb.r
  %i.fk = load i64, ptr %i.af, align 8, !tbaa !17
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i137

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i137: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i136
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.fm = load ptr, ptr %18, align 8, !tbaa !15   ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.ai
  br i1 %i.fn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i140: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i139
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.fo = load ptr, ptr %18, align 8, !tbaa !15   ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.ai
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i140
  %i.fq = load i64, ptr %i.ai, align 8, !tbaa !17
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fr) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i140, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144
  %i.fs = load ptr, ptr %19, align 8, !tbaa !15   ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.ad
  br i1 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146
  %i.fu = load i64, ptr %i.ad, align 8, !tbaa !17
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  %i.fw = load ptr, ptr %17, align 8, !tbaa !15   ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.ab
  br i1 %i.fx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149
  %i.fy = load i64, ptr %i.ab, align 8, !tbaa !17
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.fz) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %bb.t

bb.s:                                             ; preds = %._crit_edge.i.i128
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i137
  %i.gb = load i64, ptr %i.ai, align 8, !tbaa !17
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.gc) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i137, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153, %bb.s
  %.pn41 = phi { ptr, i32 } [ %i.ga, %bb.s ], [ %i.fh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153 ], [ %i.fh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i137 ]
  %i.gd = load ptr, ptr %19, align 8, !tbaa !15   ; 2 uses
  %i.ge = icmp eq ptr %i.gd, %i.ad
  br i1 %i.ge, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155
  %i.gf = load i64, ptr %i.ad, align 8, !tbaa !17
  %i.gg = add i64 %i.gf, 1
  call void @_ZdlPvm(ptr noundef %i.gd, i64 noundef %i.gg) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  %i.gh = load ptr, ptr %17, align 8, !tbaa !15   ; 2 uses
  %i.gi = icmp eq ptr %i.gh, %i.ab
  br i1 %i.gi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158
  %i.gj = load i64, ptr %i.ab, align 8, !tbaa !17
  %i.gk = add i64 %i.gj, 1
  call void @_ZdlPvm(ptr noundef %i.gh, i64 noundef %i.gk) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %.loopexit.split-lp

bb.t:                                             ; preds = %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152
  %i.gl = load ptr, ptr %i.k, align 8, !tbaa !145
  %i.gm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gl, ptr noundef nonnull @.str.93, i64 noundef 2)
          to label %.noexc164 unwind label %.loopexit ; 0 uses

.noexc164:                                        ; preds = %bb.t
  %i.gn = load ptr, ptr %i.k, align 8, !tbaa !145
  %i.go = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gn, ptr noundef nonnull @.str.104, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit167 unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit167: ; preds = %.noexc164
  %i.gp = load ptr, ptr %i.aj, align 8, !tbaa !149 ; 7 uses
  %i.gq = load ptr, ptr %i.ak, align 8, !tbaa !151
  %.not.i = icmp eq ptr %i.gp, %i.gq
  br i1 %.not.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit167
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 16 ; 3 uses
  store ptr %i.gr, ptr %i.gp, align 8, !tbaa !9
  %i.gs = load ptr, ptr %9, align 8, !tbaa !15    ; 2 uses
  %i.gt = icmp eq ptr %i.gs, %i.d
  br i1 %i.gt, label %bb.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168

bb.v:                                             ; preds = %bb.u
  %i.gu = load i64, ptr %i.e, align 8, !tbaa !18  ; 3 uses
  %i.gv = icmp ult i64 %i.gu, 16
  call void @llvm.assume(i1 %i.gv)
  %i.gw = add nuw nsw i64 %i.gu, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gr, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.gw, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168: ; preds = %bb.u
  store ptr %i.gs, ptr %i.gp, align 8, !tbaa !15
  %i.gx = load i64, ptr %i.d, align 8, !tbaa !17
  store i64 %i.gx, ptr %i.gr, align 8, !tbaa !17
  %.pre = load i64, ptr %i.e, align 8, !tbaa !18
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168
  %i.gy = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168 ], [ %i.gu, %bb.v ]
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  store i64 %i.gy, ptr %i.gz, align 8, !tbaa !18
  store ptr %i.d, ptr %9, align 8, !tbaa !15
  store i64 0, ptr %i.e, align 8, !tbaa !18
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gp, i64 32
  store ptr %i.ha, ptr %i.aj, align 8, !tbaa !149
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172

bb.w:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit167
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr %i.gp, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit unwind label %.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit: ; preds = %bb.w
  %.pre355 = load ptr, ptr %9, align 8, !tbaa !15 ; 2 uses
  %i.hb = icmp eq ptr %.pre355, %i.d
  br i1 %i.hb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit
  %i.hc = load i64, ptr %i.d, align 8, !tbaa !17
  %i.hd = add i64 %i.hc, 1
  call void @_ZdlPvm(ptr noundef %.pre355, i64 noundef %i.hd) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.0220.0354, i64 192 ; 2 uses
  %.not = icmp eq ptr %i.he, %i.c
  br i1 %.not, label %._crit_edge.i.i, label %bb.b

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109
  %.pn45 = phi { ptr, i32 } [ %i.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109 ], [ %.pn41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161 ], [ %.pn37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127 ], [ %.pn33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit223, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp224, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.hf = load ptr, ptr %9, align 8, !tbaa !15    ; 2 uses
  %i.hg = icmp eq ptr %i.hf, %i.d
  br i1 %i.hg, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %.loopexit.split-lp, %bb.d
  %.sink = phi ptr [ %i.bi, %bb.d ], [ %i.hf, %.loopexit.split-lp ]
  %.pn45.pn.ph = phi { ptr, i32 } [ %lpad.phi229, %bb.d ], [ %.pn45, %.loopexit.split-lp ]
  %i.hh = load i64, ptr %i.d, align 8, !tbaa !17
  %i.hi = add i64 %i.hh, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.hi) #27
  br label %.body

.body:                                            ; preds = %.body.sink.split, %.loopexit.split-lp, %bb.d
  %.pn45.pn = phi { ptr, i32 } [ %lpad.phi229, %bb.d ], [ %.pn45, %.loopexit.split-lp ], [ %.pn45.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.ae

bb.x:                                             ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.hj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.hj, ptr %3, align 8, !tbaa !9
  store i8 61, ptr %i.hj, align 8, !tbaa !17
  %i.hk = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.hk, align 8, !tbaa !18
  %i.hl = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 0, ptr %i.hl, align 1, !tbaa !17
  invoke void @_ZN26cmGlobalFastbuildGenerator10WriteArrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EES7_i(ptr noundef nonnull readonly align 8 dereferenceable(2808) %0, ptr noundef nonnull readonly align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 8 dereferenceable(24) %20, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 1)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.hm = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.hn = icmp eq ptr %i.hm, %i.hj
  br i1 %i.hn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i184, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i183

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i183: ; preds = %bb.y
  %i.ho = load i64, ptr %i.hj, align 8, !tbaa !17
  %i.hp = add i64 %i.ho, 1
  call void @_ZdlPvm(ptr noundef %i.hm, i64 noundef %i.hp) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i184

bb.z:                                             ; preds = %bb.x
  %i.hq = landingpad { ptr, i32 }
          cleanup
  %i.hr = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.hs = icmp eq ptr %i.hr, %i.hj
  br i1 %i.hs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i181, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i180

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i180: ; preds = %bb.z
  %i.ht = load i64, ptr %i.hj, align 8, !tbaa !17
  %i.hu = add i64 %i.ht, 1
  call void @_ZdlPvm(ptr noundef %i.hr, i64 noundef %i.hu) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i181

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i181: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i180
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %20) #26
  br label %bb.ad

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i184: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i183
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.hv = load ptr, ptr %20, align 8, !tbaa !148  ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !149 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.hv, %i.hx
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i184, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.id, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.hv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i184 ] ; 3 uses
  %i.hy = load ptr, ptr %.05.i.i.i, align 8, !tbaa !15 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ia = icmp eq ptr %i.hy, %i.hz
  br i1 %i.ia, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ib = load i64, ptr %i.hz, align 8, !tbaa !17
  %i.ic = add i64 %i.ib, 1
  call void @_ZdlPvm(ptr noundef %i.hy, i64 noundef %i.ic) #27
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.id = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.id, %i.hx
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !150

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %20, align 8, !tbaa !148
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i184
  %i.ie = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.hv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i184 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ie, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.if = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !151
  %i.ih = ptrtoint ptr %i.ig to i64
  %i.ii = ptrtoint ptr %i.ie to i64
  %i.ij = sub i64 %i.ih, %i.ii
  call void @_ZdlPvm(ptr noundef nonnull %i.ie, i64 noundef %i.ij) #27
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.aa
  %i.ik = load ptr, ptr %22, align 8, !tbaa !15   ; 2 uses
  %i.il = icmp eq ptr %i.ik, %i.au
  br i1 %i.il, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.im = load i64, ptr %i.au, align 8, !tbaa !17
  %i.in = add i64 %i.im, 1
  call void @_ZdlPvm(ptr noundef %i.ik, i64 noundef %i.in) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  %i.io = load ptr, ptr %21, align 8, !tbaa !15   ; 2 uses
  %i.ip = icmp eq ptr %i.io, %i.ar
  br i1 %i.ip, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189
  %i.iq = load i64, ptr %i.ar, align 8, !tbaa !17
  %i.ir = add i64 %i.iq, 1
  call void @_ZdlPvm(ptr noundef %i.io, i64 noundef %i.ir) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  %i.is = load ptr, ptr %8, align 8, !tbaa !148   ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %8, i64 8
end_hunk_0
