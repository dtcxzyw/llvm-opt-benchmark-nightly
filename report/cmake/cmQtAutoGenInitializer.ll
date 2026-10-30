Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmQtAutoGenInitializer?download=true
inline.NumInlined: 6784
inline.NumDeleted: 2252
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN22cmQtAutoGenInitializer12GetQtVersionEPK17cmGeneratorTargetNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:.noexc.i
  store i8 0, ptr %i.dz, align 1, !tbaa !261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  %i.ea = invoke ptr @_ZNK10cmMakefile11GetPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2952) %i.dv, ptr noundef nonnull align 8 dereferenceable(32) %21)
          to label %.noexc.i.i.i114 unwind label %bb.ah

.noexc.i.i.i114:                                  ; preds = %bb.v
  %i.eb = load ptr, ptr %i.au, align 8, !tbaa !256
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  store ptr %i.dt, ptr %22, align 8, !tbaa !259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  store i64 21, ptr %i.g, align 8, !tbaa !284
  %i.ec = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %bb.w unwind label %.loopexit193 ; 2 uses

bb.w:                                             ; preds = %.noexc.i.i.i114
  store ptr %i.ec, ptr %22, align 8, !tbaa !285
  %i.ed = load i64, ptr %i.g, align 8, !tbaa !284 ; 3 uses
  store i64 %i.ed, ptr %i.dt, align 8, !tbaa !261
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.ec, ptr noundef nonnull align 1 dereferenceable(21) @.str.168, i64 21, i1 false)
  store i64 %i.ed, ptr %i.du, align 8, !tbaa !260
  %i.ee = load ptr, ptr %22, align 8, !tbaa !285
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ed
  store i8 0, ptr %i.ef, align 1, !tbaa !261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  %i.eg = invoke ptr @_ZNK10cmMakefile11GetPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2952) %i.eb, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %bb.x unwind label %bb.ai

bb.x:                                             ; preds = %bb.w
  invoke fastcc void @"_ZZN22cmQtAutoGenInitializer12GetQtVersionEPK17cmGeneratorTargetNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_2clE7cmValueSA_"(ptr nonnull %18, ptr %i.ea, ptr %i.eg)
          to label %bb.y unwind label %bb.ai

bb.y:                                             ; preds = %bb.x
  %i.eh = load ptr, ptr %22, align 8, !tbaa !285  ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.dt
  br i1 %i.ei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118: ; preds = %bb.y
  %i.ej = load i64, ptr %i.dt, align 8, !tbaa !261
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.ek) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  %i.el = load ptr, ptr %21, align 8, !tbaa !285  ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.dr
  br i1 %i.em, label %.noexc.i.i.i105.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120
  %i.en = load i64, ptr %i.dr, align 8, !tbaa !261
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.eo) #27
  br label %.noexc.i.i.i105.1

.noexc.i.i.i105.1:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  %i.ep = load ptr, ptr %i.au, align 8, !tbaa !256
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  store ptr %i.dr, ptr %21, align 8, !tbaa !259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #26
  store i64 21, ptr %i.h, align 8, !tbaa !284
  %i.eq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0)
          to label %bb.z unwind label %.loopexit.split-lp ; 2 uses

bb.z:                                             ; preds = %.noexc.i.i.i105.1
  store ptr %i.eq, ptr %21, align 8, !tbaa !285
  %i.er = load i64, ptr %i.h, align 8, !tbaa !284 ; 3 uses
  store i64 %i.er, ptr %i.dr, align 8, !tbaa !261
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.eq, ptr noundef nonnull align 1 dereferenceable(21) @.str.169, i64 21, i1 false)
  store i64 %i.er, ptr %i.ds, align 8, !tbaa !260
  %i.es = load ptr, ptr %21, align 8, !tbaa !285
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.er
  store i8 0, ptr %i.et, align 1, !tbaa !261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  %i.eu = invoke ptr @_ZNK10cmMakefile11GetPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2952) %i.ep, ptr noundef nonnull align 8 dereferenceable(32) %21)
          to label %.noexc.i.i.i114.1 unwind label %bb.ah

.noexc.i.i.i114.1:                                ; preds = %bb.z
  %i.ev = load ptr, ptr %i.au, align 8, !tbaa !256
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  store ptr %i.dt, ptr %22, align 8, !tbaa !259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  store i64 21, ptr %i.g, align 8, !tbaa !284
  %i.ew = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %bb.aa unwind label %.loopexit193 ; 2 uses

bb.aa:                                            ; preds = %.noexc.i.i.i114.1
  store ptr %i.ew, ptr %22, align 8, !tbaa !285
  %i.ex = load i64, ptr %i.g, align 8, !tbaa !284 ; 3 uses
  store i64 %i.ex, ptr %i.dt, align 8, !tbaa !261
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.ew, ptr noundef nonnull align 1 dereferenceable(21) @.str.170, i64 21, i1 false)
  store i64 %i.ex, ptr %i.du, align 8, !tbaa !260
  %i.ey = load ptr, ptr %22, align 8, !tbaa !285
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.ex
  store i8 0, ptr %i.ez, align 1, !tbaa !261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  %i.fa = invoke ptr @_ZNK10cmMakefile11GetPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2952) %i.ev, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %bb.ab unwind label %bb.ai

bb.ab:                                            ; preds = %bb.aa
  invoke fastcc void @"_ZZN22cmQtAutoGenInitializer12GetQtVersionEPK17cmGeneratorTargetNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_2clE7cmValueSA_"(ptr nonnull %18, ptr %i.eu, ptr %i.fa)
          to label %bb.ac unwind label %bb.ai

bb.ac:                                            ; preds = %bb.ab
  %i.fb = load ptr, ptr %22, align 8, !tbaa !285  ; 2 uses
  %i.fc = icmp eq ptr %i.fb, %i.dt
  br i1 %i.fc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118.1: ; preds = %bb.ac
  %i.fd = load i64, ptr %i.dt, align 8, !tbaa !261
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.fe) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.1: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118.1
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  %i.ff = load ptr, ptr %21, align 8, !tbaa !285  ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.dr
  br i1 %i.fg, label %.noexc.i.i.i105.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.1
  %i.fh = load i64, ptr %i.dr, align 8, !tbaa !261
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fi) #27
  br label %.noexc.i.i.i105.2

.noexc.i.i.i105.2:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121.1
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  %i.fj = load ptr, ptr %i.au, align 8, !tbaa !256
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  store ptr %i.dr, ptr %21, align 8, !tbaa !259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #26
  store i64 16, ptr %i.h, align 8, !tbaa !284
  %i.fk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0)
          to label %bb.ad unwind label %.loopexit.split-lp ; 2 uses

bb.ad:                                            ; preds = %.noexc.i.i.i105.2
  store ptr %i.fk, ptr %21, align 8, !tbaa !285
  %i.fl = load i64, ptr %i.h, align 8, !tbaa !284 ; 3 uses
  store i64 %i.fl, ptr %i.dr, align 8, !tbaa !261
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.fk, ptr noundef nonnull align 1 dereferenceable(16) @.str.117, i64 16, i1 false)
  store i64 %i.fl, ptr %i.ds, align 8, !tbaa !260
  %i.fm = load ptr, ptr %21, align 8, !tbaa !285
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fl
  store i8 0, ptr %i.fn, align 1, !tbaa !261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  %i.fo = invoke ptr @_ZNK10cmMakefile11GetPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2952) %i.fj, ptr noundef nonnull align 8 dereferenceable(32) %21)
          to label %.noexc.i.i.i114.2 unwind label %bb.ah

.noexc.i.i.i114.2:                                ; preds = %bb.ad
  %i.fp = load ptr, ptr %i.au, align 8, !tbaa !256
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  store ptr %i.dt, ptr %22, align 8, !tbaa !259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  store i64 16, ptr %i.g, align 8, !tbaa !284
  %i.fq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %bb.ae unwind label %.loopexit193 ; 2 uses

bb.ae:                                            ; preds = %.noexc.i.i.i114.2
  store ptr %i.fq, ptr %22, align 8, !tbaa !285
  %i.fr = load i64, ptr %i.g, align 8, !tbaa !284 ; 3 uses
  store i64 %i.fr, ptr %i.dt, align 8, !tbaa !261
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.fq, ptr noundef nonnull align 1 dereferenceable(16) @.str.118, i64 16, i1 false)
  store i64 %i.fr, ptr %i.du, align 8, !tbaa !260
  %i.fs = load ptr, ptr %22, align 8, !tbaa !285
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fr
  store i8 0, ptr %i.ft, align 1, !tbaa !261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  %i.fu = invoke ptr @_ZNK10cmMakefile11GetPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2952) %i.fp, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %bb.af unwind label %bb.ai

bb.af:                                            ; preds = %bb.ae
  invoke fastcc void @"_ZZN22cmQtAutoGenInitializer12GetQtVersionEPK17cmGeneratorTargetNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_2clE7cmValueSA_"(ptr nonnull %18, ptr %i.fo, ptr %i.fu)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.fv = load ptr, ptr %22, align 8, !tbaa !285  ; 2 uses
  %i.fw = icmp eq ptr %i.fv, %i.dt
  br i1 %i.fw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118.2: ; preds = %bb.ag
  %i.fx = load i64, ptr %i.dt, align 8, !tbaa !261
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fy) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.2: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118.2
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  %i.fz = load ptr, ptr %21, align 8, !tbaa !285  ; 2 uses
  %i.ga = icmp eq ptr %i.fz, %i.dr
  br i1 %i.ga, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.2
  %i.gb = load i64, ptr %i.dr, align 8, !tbaa !261
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gc) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121.2
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  %i.gd = load ptr, ptr %18, align 8, !tbaa !1558 ; 5 uses
  %i.ge = load ptr, ptr %i.ah, align 8, !tbaa !1558 ; 2 uses
  %i.gf = icmp eq ptr %i.gd, %i.ge
  br i1 %i.gf, label %.thread, label %bb.ak

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i105, %.noexc.i.i.i105.1, %.noexc.i.i.i105.2
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

bb.ah:                                            ; preds = %bb.ad, %bb.z, %bb.v
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.loopexit193:                                     ; preds = %.noexc.i.i.i114.2, %.noexc.i.i.i114.1, %.noexc.i.i.i114
  %lpad.loopexit195 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126

bb.ai:                                            ; preds = %bb.af, %bb.ae, %bb.ab, %bb.aa, %bb.x, %bb.w
  %i.gh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gi = load ptr, ptr %22, align 8, !tbaa !285  ; 2 uses
  %i.gj = icmp eq ptr %i.gi, %i.dt
  br i1 %i.gj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124: ; preds = %bb.ai
  %i.gk = load i64, ptr %i.dt, align 8, !tbaa !261
  %i.gl = add i64 %i.gk, 1
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126: ; preds = %bb.ai, %.loopexit193, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124
  %.pn47 = phi { ptr, i32 } [ %i.gh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124 ], [ %lpad.loopexit195, %.loopexit193 ], [ %i.gh, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, %bb.ah
  %.pn47.pn = phi { ptr, i32 } [ %.pn47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126 ], [ %i.gg, %bb.ah ] ; 2 uses
  %i.gm = load ptr, ptr %21, align 8, !tbaa !285  ; 2 uses
  %i.gn = icmp eq ptr %i.gm, %i.dr
  br i1 %i.gn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127: ; preds = %bb.aj
  %i.go = load i64, ptr %i.dr, align 8, !tbaa !261
  %i.gp = add i64 %i.go, 1
  call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gp) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127, %.loopexit.split-lp
  %.pn47.pn.pn = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit.split-lp ], [ %.pn47.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127 ], [ %.pn47.pn, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  br label %.body148thread-pre-split

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123.2
  %i.gq = icmp eq i32 %.0.i, 0
  br i1 %i.gq, label %_ZNSt6vectorIN11cmQtAutoGen14IntegerVersionESaIS1_EE2atEm.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ak, %.critedge
  %.sroa.0152.0240 = phi ptr [ %i.gs, %.critedge ], [ %i.gd, %bb.ak ] ; 3 uses
  %i.gr = load i32, ptr %.sroa.0152.0240, align 4, !tbaa !287
  %.not46 = icmp eq i32 %i.gr, %.0.i
  br i1 %.not46, label %_ZNSt6vectorIN11cmQtAutoGen14IntegerVersionESaIS1_EE2atEm.exit, label %.critedge

.critedge:                                        ; preds = %.lr.ph
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.0152.0240, i64 8 ; 2 uses
  %.not191 = icmp eq ptr %i.gs, %i.ge
  br i1 %.not191, label %.thread, label %.lr.ph

_ZNSt6vectorIN11cmQtAutoGen14IntegerVersionESaIS1_EE2atEm.exit: ; preds = %.lr.ph, %bb.ak
  %.sroa.0165.1.in.in = phi ptr [ %i.gd, %bb.ak ], [ %.sroa.0152.0240, %.lr.ph ]
  %.sroa.0165.1.in = load i64, ptr %.sroa.0165.1.in.in, align 4, !tbaa !258 ; 3 uses
  %.sroa.6169.sroa.0.1.in = lshr i64 %.sroa.0165.1.in, 32 ; 2 uses
  %i.gt = and i64 %.sroa.0165.1.in, 4294967295
  %i.gu = icmp eq i64 %i.gt, 0
  br i1 %i.gu, label %.thread, label %bb.cx

.thread:                                          ; preds = %.critedge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123.2, %_ZNSt6vectorIN11cmQtAutoGen14IntegerVersionESaIS1_EE2atEm.exit
  %.sroa.6169.sroa.0.1189 = phi i64 [ %.sroa.6169.sroa.0.1.in, %_ZNSt6vectorIN11cmQtAutoGen14IntegerVersionESaIS1_EE2atEm.exit ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123.2 ], [ 0, %.critedge ]
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !260 ; 2 uses
  %i.gx = icmp eq i64 %i.gw, 0
  br i1 %i.gx, label %bb.al, label %.thread190

bb.al:                                            ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  %i.gy = load ptr, ptr %i.au, align 8, !tbaa !256
  call void @llvm.experimental.noalias.scope.decl(metadata !1559)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  %i.gz = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 10 uses
  store ptr %i.gz, ptr %23, align 8, !tbaa !259, !alias.scope !1559
  %i.ha = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 6 uses
  store i64 0, ptr %i.ha, align 8, !tbaa !260, !alias.scope !1559
  store i8 0, ptr %i.gz, align 8, !tbaa !261, !alias.scope !1559
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26, !noalias !1559
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26, !noalias !1560
  store i64 2, ptr %11, align 8, !tbaa !284, !alias.scope !1561, !noalias !1560
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr @.str.195, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !314, !alias.scope !1561, !noalias !1560
  %i.hb = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr null, ptr %i.hb, align 8, !tbaa !316, !alias.scope !1561, !noalias !1560
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26, !noalias !1560
  invoke void @_ZN10cmAlphaNumC1Ej(ptr noundef nonnull align 8 dereferenceable(56) %12, i32 noundef %.0.i)
          to label %.noexc.i131 unwind label %bb.ao

.noexc.i131:                                      ; preds = %bb.al
  %i.hc = getelementptr inbounds nuw i8, ptr %11, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !1562)
  %i.hd = load ptr, ptr %12, align 8, !tbaa !334, !noalias !1563 ; 4 uses
  %.not.i.i3.i.i = icmp eq ptr %i.hd, null        ; 2 uses
  %.sroa.3.0..sroa_idx.i.i4.i.i = getelementptr inbounds nuw i8, ptr %12, i64 16
  %.pn.in.i.i6.i.i = select i1 %.not.i.i3.i.i, ptr %.sroa.3.0..sroa_idx.i.i4.i.i, ptr %i.hd
  %.pn.i.i7.i.i = load ptr, ptr %.pn.in.i.i6.i.i, align 8, !tbaa !314, !noalias !1564
  %.pn3.i.i5.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i.i3.i.i, ptr %12, ptr %i.hd
  %.pn3.i.i5.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.pn3.i.i5.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  %.pn2.i.i9.i.i = load i64, ptr %.pn3.i.i5.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !284, !noalias !1564
  store i64 %.pn2.i.i9.i.i, ptr %i.hc, align 8, !tbaa !284, !alias.scope !1562, !noalias !1560
  %.sroa.4.0..sroa_idx.i10.i.i = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %.pn.i.i7.i.i, ptr %.sroa.4.0..sroa_idx.i10.i.i, align 8, !tbaa !314, !alias.scope !1562, !noalias !1560
  %i.he = getelementptr inbounds nuw i8, ptr %11, i64 40
  store ptr %i.hd, ptr %i.he, align 8, !tbaa !316, !alias.scope !1562, !noalias !1560
  %i.hf = getelementptr inbounds nuw i8, ptr %11, i64 48
  store i64 5, ptr %i.hf, align 8, !tbaa !284, !alias.scope !1565, !noalias !1560
  %.sroa.4.0..sroa_idx.i18.i.i = getelementptr inbounds nuw i8, ptr %11, i64 56
  store ptr @.str.196, ptr %.sroa.4.0..sroa_idx.i18.i.i, align 8, !tbaa !314, !alias.scope !1565, !noalias !1560
  %i.hg = getelementptr inbounds nuw i8, ptr %11, i64 64
  store ptr null, ptr %i.hg, align 8, !tbaa !316, !alias.scope !1565, !noalias !1560
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr nonnull %11, i64 3)
          to label %_ZN2cm8enum_setIN12cmStateEnums12TargetDomainELm32ELi0EEC2ESt16initializer_listIS2_E.exit.i unwind label %bb.ao

_ZN2cm8enum_setIN12cmStateEnums12TargetDomainELm32ELi0EEC2ESt16initializer_listIS2_E.exit.i: ; preds = %.noexc.i131
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26, !noalias !1560
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26, !noalias !1560
  store i64 3, ptr %14, align 8, !tbaa !284, !noalias !1559
  %i.hh = invoke noundef ptr @_ZNK10cmMakefile15FindTargetToUseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cm8enum_setIN12cmStateEnums12TargetDomainELm32ELi0EEE(ptr noundef nonnull align 8 dereferenceable(2952) %i.gy, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dead_on_return %14)
          to label %bb.am unwind label %bb.ap     ; 2 uses

bb.am:                                            ; preds = %_ZN2cm8enum_setIN12cmStateEnums12TargetDomainELm32ELi0EEC2ESt16initializer_listIS2_E.exit.i
  %.not.i132 = icmp eq ptr %i.hh, null
  br i1 %.not.i132, label %bb.as, label %.noexc.i.i

.noexc.i.i:                                       ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26, !noalias !1559
  %i.hi = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  store ptr %i.hi, ptr %15, align 8, !tbaa !259, !noalias !1559
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26, !noalias !1559
  store i64 17, ptr %i.f, align 8, !tbaa !284, !noalias !1559
  %i.hj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc14.i unwind label %bb.aq ; 2 uses

.noexc14.i:                                       ; preds = %.noexc.i.i
  store ptr %i.hj, ptr %15, align 8, !tbaa !285, !noalias !1559
  %i.hk = load i64, ptr %i.f, align 8, !tbaa !284, !noalias !1559 ; 3 uses
  store i64 %i.hk, ptr %i.hi, align 8, !tbaa !261, !noalias !1559
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.hj, ptr noundef nonnull align 1 dereferenceable(17) @.str.197, i64 17, i1 false)
  %i.hl = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.hk, ptr %i.hl, align 8, !tbaa !260, !noalias !1559
  %i.hm = load ptr, ptr %15, align 8, !tbaa !285, !noalias !1559
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.hk
  store i8 0, ptr %i.hn, align 1, !tbaa !261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26, !noalias !1559
  %i.ho = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK8cmTarget15GetSafePropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.hh, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.an unwind label %bb.ar

bb.an:                                            ; preds = %.noexc14.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(32) %i.ho)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i unwind label %bb.ar

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i: ; preds = %bb.an
  %i.hp = load ptr, ptr %15, align 8, !tbaa !285, !noalias !1559 ; 2 uses
  %i.hq = icmp eq ptr %i.hp, %i.hi
  br i1 %i.hq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i
  %i.hr = load i64, ptr %i.hi, align 8, !tbaa !261, !noalias !1559
  %i.hs = add i64 %i.hr, 1
  call void @_ZdlPvm(ptr noundef %i.hp, i64 noundef %i.hs) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26, !noalias !1559
  br label %bb.as

bb.ao:                                            ; preds = %.noexc.i131, %bb.al
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i

bb.ap:                                            ; preds = %_ZN2cm8enum_setIN12cmStateEnums12TargetDomainELm32ELi0EEC2ESt16initializer_listIS2_E.exit.i
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.aq:                                            ; preds = %.noexc.i.i
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i

bb.ar:                                            ; preds = %bb.an, %.noexc14.i
  %i.hw = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZN22cmQtAutoGenInitializer12GetQtVersionEPK17cmGeneratorTargetNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:.noexc.i
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.oz = load ptr, ptr %5, align 8, !tbaa !285   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.pa = load i32, ptr %i.om, align 4, !tbaa !258 ; 2 uses
  store i32 0, ptr %i.om, align 4, !tbaa !258
  %i.pb = call noundef i64 @__isoc23_strtol(ptr noundef %i.oz, ptr noundef nonnull %i.a, i32 noundef 10) ; 2 uses
  %i.pc = load ptr, ptr %i.a, align 8, !tbaa !314
  %i.pd = icmp eq ptr %i.pc, %i.oz
  br i1 %i.pd, label %bb.ck, label %bb.co

bb.ck:                                            ; preds = %bb.cj
  invoke void @_ZSt24__throw_invalid_argumentPKc(ptr noundef nonnull @.str.203) #28
          to label %bb.cl unwind label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  unreachable

bb.cm:                                            ; preds = %.critedge.i.i10.i.i, %bb.ck
  %i.pe = landingpad { ptr, i32 }
          cleanup
  %i.pf = load i32, ptr %i.om, align 4, !tbaa !258
  %i.pg = icmp eq i32 %i.pf, 0
  br i1 %i.pg, label %bb.cn, label %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i11.i.i

bb.cn:                                            ; preds = %bb.cm
  store i32 %i.pa, ptr %i.om, align 4, !tbaa !258
  br label %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i11.i.i

_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i11.i.i: ; preds = %bb.cn, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %.body.i.i

bb.co:                                            ; preds = %bb.cj
  %i.ph = load i32, ptr %i.om, align 4, !tbaa !258 ; 2 uses
  %i.pi = icmp eq i32 %i.ph, 34
  %i.pj = add i64 %i.pb, -2147483648
  %i.pk = icmp ult i64 %i.pj, -4294967296
  %or.cond.i.i9.i.i = or i1 %i.pk, %i.pi
  br i1 %or.cond.i.i9.i.i, label %.critedge.i.i10.i.i, label %bb.cq

.critedge.i.i10.i.i:                              ; preds = %bb.co
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.203) #28
          to label %bb.cp unwind label %bb.cm

bb.cp:                                            ; preds = %.critedge.i.i10.i.i
  unreachable

bb.cq:                                            ; preds = %bb.co
  %i.pl = icmp eq i32 %i.ph, 0
  br i1 %i.pl, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  store i32 %i.pa, ptr %i.om, align 4, !tbaa !258
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.pm = shl nsw i64 %i.pb, 32
  %i.pn = and i64 %i.oo, 4294967295
  %i.po = or disjoint i64 %i.pm, %i.pn
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.by, %bb.bw
  %.sroa.3.0.i.i = phi i64 [ 0, %bb.bw ], [ 0, %bb.by ], [ %i.po, %bb.cs ]
  %i.pp = load ptr, ptr %5, align 8, !tbaa !285   ; 2 uses
  %i.pq = icmp eq ptr %i.pp, %i.nk
  br i1 %i.pq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i.i: ; preds = %bb.ct
  %i.pr = load i64, ptr %i.nk, align 8, !tbaa !261
  %i.ps = add i64 %i.pr, 1
  call void @_ZdlPvm(ptr noundef %i.pp, i64 noundef %i.ps) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i: ; preds = %bb.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.pt = load ptr, ptr %4, align 8, !tbaa !285   ; 2 uses
  %i.pu = icmp eq ptr %i.pt, %i.ni
  br i1 %i.pu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i
  %i.pv = load i64, ptr %i.ni, align 8, !tbaa !261
  %i.pw = add i64 %i.pv, 1
  call void @_ZdlPvm(ptr noundef %i.pt, i64 noundef %i.pw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.px = load ptr, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.px, ptr %3, align 8, !tbaa !318
  %i.py = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.pz = getelementptr i8, ptr %i.px, i64 -24
  %i.qa = load i64, ptr %i.pz, align 8
  %i.qb = getelementptr inbounds i8, ptr %3, i64 %i.qa
  store ptr %i.py, ptr %i.qb, align 8, !tbaa !318
  %i.qc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.qc, align 8, !tbaa !318
  %i.qd = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !285 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.qg = icmp eq ptr %i.qe, %i.qf
  br i1 %i.qg, label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i45.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i45.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i.i
  %i.qh = load i64, ptr %i.qf, align 8, !tbaa !261
  %i.qi = add i64 %i.qh, 1
  call void @_ZdlPvm(ptr noundef %i.qe, i64 noundef %i.qi) #27
  br label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i.i

_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i45.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.qc, align 8, !tbaa !318
  %i.qj = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.qj) #26
  %i.qk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.qk, ptr %3, align 8, !tbaa !318
  %i.ql = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %i.qm = getelementptr i8, ptr %i.qk, i64 -24
  %i.qn = load i64, ptr %i.qm, align 8
  %i.qo = getelementptr inbounds i8, ptr %3, i64 %i.qn
  store ptr %i.ql, ptr %i.qo, align 8, !tbaa !318
  %i.qp = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.qp, align 8, !tbaa !1567
  %i.qq = getelementptr inbounds nuw i8, ptr %3, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.qq) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %_ZL15parseMocVersionNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZL15parseMocVersionNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i.i, %bb.br
  %.sroa.0.0.insert.insert.i.i = phi i64 [ 0, %bb.br ], [ %.sroa.3.0.i.i, %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i.i ] ; 3 uses
  %.sroa.6.0.extract.shift.i = lshr i64 %.sroa.0.0.insert.insert.i.i, 32 ; 2 uses
  %i.qr = load ptr, ptr %10, align 8, !tbaa !285  ; 2 uses
  %i.qs = icmp eq ptr %i.qr, %i.mj
  br i1 %i.qs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51.i: ; preds = %_ZL15parseMocVersionNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.qt = load i64, ptr %i.mj, align 8, !tbaa !261
  %i.qu = add i64 %i.qt, 1
  call void @_ZdlPvm(ptr noundef %i.qr, i64 noundef %i.qu) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i

bb.cu:                                            ; preds = %.noexc.i42.i
  %i.qv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i

bb.cv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i.i, %bb.bv
  %i.qw = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i

.body49.i:                                        ; preds = %bb.cv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i, %bb.bs
  %eh.lpad-body50.i = phi { ptr, i32 } [ %i.qw, %bb.cv ], [ %eh.lpad-body.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i ], [ %i.nd, %bb.bs ] ; 2 uses
  %i.qx = load ptr, ptr %10, align 8, !tbaa !285  ; 2 uses
  %i.qy = icmp eq ptr %i.qx, %i.mj
  br i1 %i.qy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.i: ; preds = %.body49.i
  %i.qz = load i64, ptr %i.mj, align 8, !tbaa !261
  %i.ra = add i64 %i.qz, 1
  call void @_ZdlPvm(ptr noundef %i.qx, i64 noundef %i.ra) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i: ; preds = %_ZL15parseMocVersionNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i
  %.sroa.02.0.i = phi i64 [ %.sroa.0.0.insert.insert.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51.i ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i ], [ %.sroa.0.0.insert.insert.i.i, %_ZL15parseMocVersionNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ]
  %.sroa.6.0.i = phi i64 [ %.sroa.6.0.extract.shift.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51.i ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i ], [ %.sroa.6.0.extract.shift.i, %_ZL15parseMocVersionNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  %i.rb = load ptr, ptr %6, align 8, !tbaa !285   ; 2 uses
  %i.rc = icmp eq ptr %i.rb, %i.jk
  br i1 %i.rc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i58.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i
  %i.rd = load i64, ptr %i.jk, align 8, !tbaa !261
  %i.re = add i64 %i.rd, 1
  call void @_ZdlPvm(ptr noundef %i.rb, i64 noundef %i.re) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i58.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i: ; preds = %.body49.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.i, %bb.cu, %.thread.i138
  %.pn16.i = phi { ptr, i32 } [ %.pn.pn.pn7.i, %.thread.i138 ], [ %i.qv, %bb.cu ], [ %eh.lpad-body50.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.i ], [ %eh.lpad-body50.i, %.body49.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  %i.rf = load ptr, ptr %6, align 8, !tbaa !285   ; 2 uses
  %i.rg = icmp eq ptr %i.rf, %i.jk
  br i1 %i.rg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i
  %i.rh = load i64, ptr %i.jk, align 8, !tbaa !261
  %i.ri = add i64 %i.rh, 1
  call void @_ZdlPvm(ptr noundef %i.rf, i64 noundef %i.ri) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %.body148thread-pre-split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i58.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %.pre262 = load ptr, ptr %18, align 8, !tbaa !465
  br label %bb.cx

bb.cw:                                            ; preds = %_ZNSt12_Vector_baseIN11cmQtAutoGen14IntegerVersionESaIS1_EE11_M_allocateEm.exit.i
  %i.rj = landingpad { ptr, i32 }
          cleanup
  br label %.body148

bb.cx:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i135, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i58.i, %_ZNSt6vectorIN11cmQtAutoGen14IntegerVersionESaIS1_EE2atEm.exit
  %24 = phi ptr [ %i.gd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i135 ], [ %.pre262, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i58.i ], [ %i.gd, %_ZNSt6vectorIN11cmQtAutoGen14IntegerVersionESaIS1_EE2atEm.exit ] ; 3 uses
  %.sroa.0165.2 = phi i64 [ 0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i135 ], [ %.sroa.02.0.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i58.i ], [ %.sroa.0165.1.in, %_ZNSt6vectorIN11cmQtAutoGen14IntegerVersionESaIS1_EE2atEm.exit ]
  %.sroa.6169.sroa.0.2 = phi i64 [ %.sroa.6169.sroa.0.1189, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i135 ], [ %.sroa.6.0.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i58.i ], [ %.sroa.6169.sroa.0.1.in, %_ZNSt6vectorIN11cmQtAutoGen14IntegerVersionESaIS1_EE2atEm.exit ]
  %.not.i.i.i = icmp eq ptr %24, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN11cmQtAutoGen14IntegerVersionESaIS1_EED2Ev.exit, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.rk = load ptr, ptr %i.ag, align 8, !tbaa !467
  %i.rl = ptrtoint ptr %i.rk to i64
  %i.rm = ptrtoint ptr %24 to i64
  %i.rn = sub i64 %i.rl, %i.rm
  call void @_ZdlPvm(ptr noundef nonnull %24, i64 noundef %i.rn) #27
  br label %_ZNSt6vectorIN11cmQtAutoGen14IntegerVersionESaIS1_EED2Ev.exit

_ZNSt6vectorIN11cmQtAutoGen14IntegerVersionESaIS1_EED2Ev.exit: ; preds = %bb.cx, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  %.sroa.6169.0.insert.ext = shl nuw i64 %.sroa.6169.sroa.0.2, 32
  %.sroa.0165.0.insert.ext = and i64 %.sroa.0165.2, 4294967295
  %.sroa.0165.0.insert.insert = or disjoint i64 %.sroa.6169.0.insert.ext, %.sroa.0165.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.sroa.0165.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %.0.i, 1
  ret { i64, i32 } %.fca.1.insert

.body148thread-pre-split:                         ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.i
  %.pn51.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn16.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.i ], [ %.pn51.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99 ], [ %.pn47.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129 ], [ %.pn.pn.pn.i, %.body ]
  %.pr375 = load ptr, ptr %18, align 8, !tbaa !465
  br label %.body148

.body148:                                         ; preds = %.body148thread-pre-split, %bb.cw
  %i.ro = phi ptr [ %.pr375, %.body148thread-pre-split ], [ null, %bb.cw ] ; 3 uses
  %.pn51.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn51.pn.pn.pn.pn.ph, %.body148thread-pre-split ], [ %i.rj, %bb.cw ]
  %.not.i.i.i150 = icmp eq ptr %i.ro, null
  br i1 %.not.i.i.i150, label %_ZNSt6vectorIN11cmQtAutoGen14IntegerVersionESaIS1_EED2Ev.exit151, label %bb.cz

bb.cz:                                            ; preds = %.body148
  %i.rp = load ptr, ptr %i.ag, align 8, !tbaa !467
  %i.rq = ptrtoint ptr %i.rp to i64
  %i.rr = ptrtoint ptr %i.ro to i64
  %i.rs = sub i64 %i.rq, %i.rr
  call void @_ZdlPvm(ptr noundef nonnull %i.ro, i64 noundef %i.rs) #27
  br label %_ZNSt6vectorIN11cmQtAutoGen14IntegerVersionESaIS1_EED2Ev.exit151

_ZNSt6vectorIN11cmQtAutoGen14IntegerVersionESaIS1_EED2Ev.exit151: ; preds = %.body148, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %bb.da

bb.da:                                            ; preds = %_ZNSt6vectorIN11cmQtAutoGen14IntegerVersionESaIS1_EED2Ev.exit151, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  %.pn51.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn51.pn.pn.pn.pn, %_ZNSt6vectorIN11cmQtAutoGen14IntegerVersionESaIS1_EED2Ev.exit151 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ]
  resume { ptr, i32 } %.pn51.pn.pn.pn.pn.pn
}

declare noundef ptr @_ZNK17cmGeneratorTarget39GetLinkInterfaceDependentStringPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(3187), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN22cmQtAutoGenInitializer12GetQtVersionEPK17cmGeneratorTargetNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_2clE7cmValueSA_"(ptr nofree captures(none) %.0.val, ptr %0, ptr %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 0, ptr %i.b, align 8, !tbaa !284
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %"_ZZN22cmQtAutoGenInitializer12GetQtVersionEPK17cmGeneratorTargetNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_1clE7cmValue.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call noundef zeroext i1 @_Z12cmStrToULongRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b)
  br i1 %i.c, label %bb.c, label %"_ZZN22cmQtAutoGenInitializer12GetQtVersionEPK17cmGeneratorTargetNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_1clE7cmValue.exit"

bb.c:                                             ; preds = %bb.b
  %i.d = load i64, ptr %i.b, align 8, !tbaa !284
  %i.e = trunc i64 %i.d to i32
  br label %"_ZZN22cmQtAutoGenInitializer12GetQtVersionEPK17cmGeneratorTargetNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_1clE7cmValue.exit"

"_ZZN22cmQtAutoGenInitializer12GetQtVersionEPK17cmGeneratorTargetNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_1clE7cmValue.exit": ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i32 [ %i.e, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 0, ptr %i.a, align 8, !tbaa !284
  %.not.i4 = icmp eq ptr %1, null
  br i1 %.not.i4, label %"_ZZN22cmQtAutoGenInitializer12GetQtVersionEPK17cmGeneratorTargetNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_1clE7cmValue.exit6", label %bb.d

bb.d:                                             ; preds = %"_ZZN22cmQtAutoGenInitializer12GetQtVersionEPK17cmGeneratorTargetNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_1clE7cmValue.exit"
  %i.f = call noundef zeroext i1 @_Z12cmStrToULongRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.a)
  br i1 %i.f, label %bb.e, label %"_ZZN22cmQtAutoGenInitializer12GetQtVersionEPK17cmGeneratorTargetNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_1clE7cmValue.exit6"

bb.e:                                             ; preds = %bb.d
  %i.g = load i64, ptr %i.a, align 8, !tbaa !284
  %i.h = shl i64 %i.g, 32
  br label %"_ZZN22cmQtAutoGenInitializer12GetQtVersionEPK17cmGeneratorTargetNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_1clE7cmValue.exit6"

"_ZZN22cmQtAutoGenInitializer12GetQtVersionEPK17cmGeneratorTargetNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_1clE7cmValue.exit6": ; preds = %"_ZZN22cmQtAutoGenInitializer12GetQtVersionEPK17cmGeneratorTargetNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_1clE7cmValue.exit", %bb.d, %bb.e
  %.0.i5 = phi i64 [ %i.h, %bb.e ], [ 0, %bb.d ], [ 0, %"_ZZN22cmQtAutoGenInitializer12GetQtVersionEPK17cmGeneratorTargetNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_1clE7cmValue.exit" ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.not = icmp eq i32 %.0.i, 0
  br i1 %.not, label %_ZNSt6vectorIN11cmQtAutoGen14IntegerVersionESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit, label %bb.f

bb.f:                                             ; preds = %"_ZZN22cmQtAutoGenInitializer12GetQtVersionEPK17cmGeneratorTargetNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_1clE7cmValue.exit6"
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !466  ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !467
  %.not.i7 = icmp eq ptr %i.j, %i.l
  br i1 %.not.i7, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.insert.ext = zext i32 %.0.i to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.0.i5, %.sroa.0.0.insert.ext
  store i64 %.sroa.0.0.insert.insert, ptr %i.j, align 4, !tbaa !258
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.m, ptr %i.i, align 8, !tbaa !466
  br label %_ZNSt6vectorIN11cmQtAutoGen14IntegerVersionESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit

bb.h:                                             ; preds = %bb.f
  %i.n = load ptr, ptr %.0.val, align 8, !tbaa !465 ; 5 uses
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = sub i64 %i.o, %i.p                       ; 3 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775800
  br i1 %i.r, label %bb.i, label %_ZNKSt6vectorIN11cmQtAutoGen14IntegerVersionESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.188) #28
  unreachable

_ZNKSt6vectorIN11cmQtAutoGen14IntegerVersionESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.s = ashr exact i64 %i.q, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i, %i.s ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975)
  %i.w = select i1 %i.u, i64 1152921504606846975, i64 %i.v ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.w, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #31 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.q
  %.sroa.0.0.insert.ext3 = zext i32 %.0.i to i64
  %.sroa.0.0.insert.insert5 = or disjoint i64 %.0.i5, %.sroa.0.0.insert.ext3
  store i64 %.sroa.0.0.insert.insert5, ptr %i.z, align 4, !tbaa !258
  %.not10.i.i.i.i.i = icmp eq ptr %i.n, %i.j
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN11cmQtAutoGen14IntegerVersionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN11cmQtAutoGen14IntegerVersionESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %i.y, %_ZNKSt6vectorIN11cmQtAutoGen14IntegerVersionESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i ], [ %i.n, %_ZNKSt6vectorIN11cmQtAutoGen14IntegerVersionESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1572)
  call void @llvm.experimental.noalias.scope.decl(metadata !1573)
  %i.aa = load i64, ptr %.0911.i.i.i.i.i, align 4, !tbaa !258, !alias.scope !1573
  store i64 %i.aa, ptr %.012.i.i.i.i.i, align 4, !tbaa !258, !alias.scope !1572
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ab, %i.j
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN11cmQtAutoGen14IntegerVersionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1571

_ZNSt6vectorIN11cmQtAutoGen14IntegerVersionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN11cmQtAutoGen14IntegerVersionESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.y, %_ZNKSt6vectorIN11cmQtAutoGen14IntegerVersionESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ac, %.lr.ph.i.i.i.i.i ]
  %i.ad = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN11cmQtAutoGen14IntegerVersionESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN11cmQtAutoGen14IntegerVersionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.ae = load ptr, ptr %i.k, align 8, !tbaa !467
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.af, %i.p
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.ag) #27
  br label %_ZNSt6vectorIN11cmQtAutoGen14IntegerVersionESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN11cmQtAutoGen14IntegerVersionESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %_ZNSt6vectorIN11cmQtAutoGen14IntegerVersionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, %bb.j
  store ptr %i.y, ptr %.0.val, align 8, !tbaa !465
  store ptr %i.ad, ptr %i.i, align 8, !tbaa !466
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.w
  store ptr %i.ah, ptr %i.k, align 8, !tbaa !467
  br label %_ZNSt6vectorIN11cmQtAutoGen14IntegerVersionESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit

_ZNSt6vectorIN11cmQtAutoGen14IntegerVersionESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit: ; preds = %_ZNSt6vectorIN11cmQtAutoGen14IntegerVersionESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.g, %"_ZZN22cmQtAutoGenInitializer12GetQtVersionEPK17cmGeneratorTargetNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_1clE7cmValue.exit6"
  ret void
}

declare ptr @_ZNK10cmMakefile11GetPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2952), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN22cmQtAutoGenInitializer15GetMocBuildPathB5cxx11ERKNS_6MUFileE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(2832) %1, ptr noundef nonnull align 8 dereferenceable(69) %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca [2 x %"struct.std::pair.1280"], align 8 ; 9 uses
  %4 = alloca [4 x %"struct.std::pair.1280"], align 8 ; 15 uses
  %5 = alloca %class.cmAlphaNum, align 8          ; 6 uses
  %6 = alloca %class.cmAlphaNum, align 8          ; 6 uses
  %7 = alloca [2 x %"struct.std::pair.1280"], align 8 ; 9 uses
  %8 = alloca [3 x %"struct.std::pair.1280"], align 8 ; 12 uses
  %9 = alloca %class.cmAlphaNum, align 8          ; 6 uses
  %10 = alloca [2 x %"struct.std::pair.1280"], align 8 ; 9 uses
  %11 = alloca [3 x %"struct.std::pair.1280"], align 8 ; 12 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !259
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  store i64 0, ptr %i.b, align 8, !tbaa !260
  store i8 0, ptr %i.a, align 8, !tbaa !261
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 67
  %i.d = load i8, ptr %i.c, align 1, !tbaa !362, !range !291, !noundef !292
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.av

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  invoke void @_ZNK18cmFilePathChecksum7getPartERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(256) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 10)
          to label %bb.c unwind label %bb.m

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.g = load ptr, ptr %2, align 8, !tbaa !285
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !260
  invoke void @_ZN11cmQtAutoGen28FileNameWithoutLastExtensionB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, i64 %i.i, ptr %i.g)
          to label %bb.d unwind label %bb.n

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26, !noalias !1619
  call void @llvm.experimental.noalias.scope.decl(metadata !1620)
  %.pn.i.i.else.val.i = load ptr, ptr %13, align 8, !tbaa !314, !noalias !1621
  %.sroa.gep26.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.pn2.i.i.else.val.i = load i64, ptr %.sroa.gep26.i, align 8, !tbaa !284, !noalias !1621
  store i64 %.pn2.i.i.else.val.i, ptr %11, align 8, !tbaa !284, !alias.scope !1620, !noalias !1619
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %.pn.i.i.else.val.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !314, !alias.scope !1620, !noalias !1619
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %13, ptr %i.j, align 8, !tbaa !316, !alias.scope !1620, !noalias !1619
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i64 5, ptr %i.k, align 8, !tbaa !284, !alias.scope !1622, !noalias !1619
  %.sroa.4.0..sroa_idx.i10.i = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr @.str.171, ptr %.sroa.4.0..sroa_idx.i10.i, align 8, !tbaa !314, !alias.scope !1622, !noalias !1619
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 40
  store ptr null, ptr %i.l, align 8, !tbaa !316, !alias.scope !1622, !noalias !1619
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 48
  call void @llvm.experimental.noalias.scope.decl(metadata !1623)
  %.pn.i.i15.else.val.i = load ptr, ptr %14, align 8, !tbaa !314, !noalias !1624
  %.sroa.gep19.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  %.pn2.i.i17.else.val.i = load i64, ptr %.sroa.gep19.i, align 8, !tbaa !284, !noalias !1624
  store i64 %.pn2.i.i17.else.val.i, ptr %i.m, align 8, !tbaa !284, !alias.scope !1623, !noalias !1619
  %.sroa.4.0..sroa_idx.i18.i = getelementptr inbounds nuw i8, ptr %11, i64 56
  store ptr %.pn.i.i15.else.val.i, ptr %.sroa.4.0..sroa_idx.i18.i, align 8, !tbaa !314, !alias.scope !1623, !noalias !1619
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 64
  store ptr %14, ptr %i.n, align 8, !tbaa !316, !alias.scope !1623, !noalias !1619
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr nonnull %11, i64 3)
          to label %bb.e unwind label %bb.o

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26, !noalias !1619
  %i.o = load ptr, ptr %14, align 8, !tbaa !285   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.r = load i64, ptr %i.p, align 8, !tbaa !261
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %i.t = load ptr, ptr %13, align 8, !tbaa !285   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.w = load i64, ptr %i.u, align 8, !tbaa !261
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26, !noalias !1625
  %i.y = load ptr, ptr %12, align 8, !tbaa !285, !noalias !1625
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 7 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !260, !noalias !1625
  store i64 %i.aa, ptr %10, align 8, !tbaa !284, !alias.scope !1626, !noalias !1625
  %.sroa.4.0..sroa_idx.i.i50 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.y, ptr %.sroa.4.0..sroa_idx.i.i50, align 8, !tbaa !314, !alias.scope !1626, !noalias !1625
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr null, ptr %i.ab, align 8, !tbaa !316, !alias.scope !1626, !noalias !1625
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i64 4, ptr %i.ac, align 8, !tbaa !284, !alias.scope !1627, !noalias !1625
  %.sroa.4.0..sroa_idx.i9.i = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr @.str.48, ptr %.sroa.4.0..sroa_idx.i9.i, align 8, !tbaa !314, !alias.scope !1627, !noalias !1625
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 40
  store ptr null, ptr %i.ad, align 8, !tbaa !316, !alias.scope !1627, !noalias !1625
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr nonnull %10, i64 2)
          to label %bb.f unwind label %bb.p

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26, !noalias !1625
  %i.ae = load ptr, ptr %0, align 8, !tbaa !285   ; 6 uses
  %i.af = icmp eq ptr %i.ae, %i.a
  %i.ag = load ptr, ptr %15, align 8, !tbaa !285  ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah                ; 2 uses
  br i1 %i.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.f
  br i1 %i.ai, label %bb.g, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.f
  br i1 %i.ai, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !260 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.al)
  %.not21.i = icmp eq ptr %15, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.h, !prof !341

bb.h:                                             ; preds = %bb.g
  switch i64 %i.ak, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.am = load i8, ptr %i.ag, align 1, !tbaa !261
  store i8 %i.am, ptr %i.ae, align 1, !tbaa !261
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr align 1 %i.ag, i64 %i.ak, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.an = load i64, ptr %i.aj, align 8, !tbaa !260 ; 2 uses
  store i64 %i.an, ptr %i.b, align 8, !tbaa !260
  %i.ao = load ptr, ptr %0, align 8, !tbaa !285
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  store i8 0, ptr %i.ap, align 1, !tbaa !261
  %.pre.i = load ptr, ptr %15, align 8, !tbaa !285
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.ag, ptr %0, align 8, !tbaa !285
  %i.aq = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ar = load <2 x i64>, ptr %i.aq, align 8, !tbaa !261
  store <2 x i64> %i.ar, ptr %i.b, align 8, !tbaa !261
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.as = load i64, ptr %i.a, align 8, !tbaa !261
  store ptr %i.ag, ptr %0, align 8, !tbaa !285
  %i.at = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.au = load <2 x i64>, ptr %i.at, align 8, !tbaa !261
  store <2 x i64> %i.au, ptr %i.b, align 8, !tbaa !261
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ae, ptr %15, align 8, !tbaa !285
  store i64 %i.as, ptr %i.ah, align 8, !tbaa !261
end_hunk_1
