Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmQtAutoGenInitializer?download=true
inline.NumInlined: 6784
inline.NumDeleted: 2253
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN22cmQtAutoGenInitializer12GetQtVersionEPK17cmGeneratorTargetNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:.noexc.i
  store i8 0, ptr %i.ea, align 1, !tbaa !261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  %i.eb = invoke ptr @_ZNK10cmMakefile11GetPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2952) %i.dw, ptr noundef nonnull align 8 dereferenceable(32) %21)
          to label %.noexc.i.i.i114 unwind label %bb.ai

.noexc.i.i.i114:                                  ; preds = %bb.w
  %i.ec = load ptr, ptr %i.av, align 8, !tbaa !256
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  store ptr %i.du, ptr %22, align 8, !tbaa !259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  store i64 21, ptr %i.g, align 8, !tbaa !284
  %i.ed = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %bb.x unwind label %.loopexit193 ; 2 uses

bb.x:                                             ; preds = %.noexc.i.i.i114
  store ptr %i.ed, ptr %22, align 8, !tbaa !285
  %i.ee = load i64, ptr %i.g, align 8, !tbaa !284 ; 3 uses
  store i64 %i.ee, ptr %i.du, align 8, !tbaa !261
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.ed, ptr noundef nonnull align 1 dereferenceable(21) @.str.168, i64 21, i1 false)
  store i64 %i.ee, ptr %i.dv, align 8, !tbaa !260
  %i.ef = load ptr, ptr %22, align 8, !tbaa !285
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ee
  store i8 0, ptr %i.eg, align 1, !tbaa !261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  %i.eh = invoke ptr @_ZNK10cmMakefile11GetPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2952) %i.ec, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %bb.y unwind label %bb.aj

bb.y:                                             ; preds = %bb.x
  invoke fastcc void @"_ZZN22cmQtAutoGenInitializer12GetQtVersionEPK17cmGeneratorTargetNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_2clE7cmValueSA_"(ptr nonnull %18, ptr %i.eb, ptr %i.eh)
          to label %bb.z unwind label %bb.aj

bb.z:                                             ; preds = %bb.y
  %i.ei = load ptr, ptr %22, align 8, !tbaa !285  ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.du
  br i1 %i.ej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118: ; preds = %bb.z
  %i.ek = load i64, ptr %i.du, align 8, !tbaa !261
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.el) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  %i.em = load ptr, ptr %21, align 8, !tbaa !285  ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.ds
  br i1 %i.en, label %.noexc.i.i.i105.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120
  %i.eo = load i64, ptr %i.ds, align 8, !tbaa !261
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.ep) #27
  br label %.noexc.i.i.i105.1

.noexc.i.i.i105.1:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  %i.eq = load ptr, ptr %i.av, align 8, !tbaa !256
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  store ptr %i.ds, ptr %21, align 8, !tbaa !259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #26
  store i64 21, ptr %i.h, align 8, !tbaa !284
  %i.er = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0)
          to label %bb.aa unwind label %.loopexit ; 2 uses

bb.aa:                                            ; preds = %.noexc.i.i.i105.1
  store ptr %i.er, ptr %21, align 8, !tbaa !285
  %i.es = load i64, ptr %i.h, align 8, !tbaa !284 ; 3 uses
  store i64 %i.es, ptr %i.ds, align 8, !tbaa !261
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.er, ptr noundef nonnull align 1 dereferenceable(21) @.str.169, i64 21, i1 false)
  store i64 %i.es, ptr %i.dt, align 8, !tbaa !260
  %i.et = load ptr, ptr %21, align 8, !tbaa !285
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.es
  store i8 0, ptr %i.eu, align 1, !tbaa !261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  %i.ev = invoke ptr @_ZNK10cmMakefile11GetPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2952) %i.eq, ptr noundef nonnull align 8 dereferenceable(32) %21)
          to label %.noexc.i.i.i114.1 unwind label %bb.ai

.noexc.i.i.i114.1:                                ; preds = %bb.aa
  %i.ew = load ptr, ptr %i.av, align 8, !tbaa !256
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  store ptr %i.du, ptr %22, align 8, !tbaa !259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  store i64 21, ptr %i.g, align 8, !tbaa !284
  %i.ex = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %bb.ab unwind label %.loopexit193 ; 2 uses

bb.ab:                                            ; preds = %.noexc.i.i.i114.1
  store ptr %i.ex, ptr %22, align 8, !tbaa !285
  %i.ey = load i64, ptr %i.g, align 8, !tbaa !284 ; 3 uses
  store i64 %i.ey, ptr %i.du, align 8, !tbaa !261
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.ex, ptr noundef nonnull align 1 dereferenceable(21) @.str.170, i64 21, i1 false)
  store i64 %i.ey, ptr %i.dv, align 8, !tbaa !260
  %i.ez = load ptr, ptr %22, align 8, !tbaa !285
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.ey
  store i8 0, ptr %i.fa, align 1, !tbaa !261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  %i.fb = invoke ptr @_ZNK10cmMakefile11GetPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2952) %i.ew, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %bb.ac unwind label %bb.aj

bb.ac:                                            ; preds = %bb.ab
  invoke fastcc void @"_ZZN22cmQtAutoGenInitializer12GetQtVersionEPK17cmGeneratorTargetNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_2clE7cmValueSA_"(ptr nonnull %18, ptr %i.ev, ptr %i.fb)
          to label %bb.ad unwind label %bb.aj

bb.ad:                                            ; preds = %bb.ac
  %i.fc = load ptr, ptr %22, align 8, !tbaa !285  ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.du
  br i1 %i.fd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118.1: ; preds = %bb.ad
  %i.fe = load i64, ptr %i.du, align 8, !tbaa !261
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.ff) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.1: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118.1
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  %i.fg = load ptr, ptr %21, align 8, !tbaa !285  ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.ds
  br i1 %i.fh, label %.noexc.i.i.i105.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.1
  %i.fi = load i64, ptr %i.ds, align 8, !tbaa !261
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fj) #27
  br label %.noexc.i.i.i105.2

.noexc.i.i.i105.2:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121.1
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  %i.fk = load ptr, ptr %i.av, align 8, !tbaa !256
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  store ptr %i.ds, ptr %21, align 8, !tbaa !259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #26
  store i64 16, ptr %i.h, align 8, !tbaa !284
  %i.fl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0)
          to label %bb.ae unwind label %.loopexit ; 2 uses

bb.ae:                                            ; preds = %.noexc.i.i.i105.2
  store ptr %i.fl, ptr %21, align 8, !tbaa !285
  %i.fm = load i64, ptr %i.h, align 8, !tbaa !284 ; 3 uses
  store i64 %i.fm, ptr %i.ds, align 8, !tbaa !261
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.fl, ptr noundef nonnull align 1 dereferenceable(16) @.str.117, i64 16, i1 false)
  store i64 %i.fm, ptr %i.dt, align 8, !tbaa !260
  %i.fn = load ptr, ptr %21, align 8, !tbaa !285
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fm
  store i8 0, ptr %i.fo, align 1, !tbaa !261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  %i.fp = invoke ptr @_ZNK10cmMakefile11GetPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2952) %i.fk, ptr noundef nonnull align 8 dereferenceable(32) %21)
          to label %.noexc.i.i.i114.2 unwind label %bb.ai

.noexc.i.i.i114.2:                                ; preds = %bb.ae
  %i.fq = load ptr, ptr %i.av, align 8, !tbaa !256
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  store ptr %i.du, ptr %22, align 8, !tbaa !259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  store i64 16, ptr %i.g, align 8, !tbaa !284
  %i.fr = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %bb.af unwind label %.loopexit193 ; 2 uses

bb.af:                                            ; preds = %.noexc.i.i.i114.2
  store ptr %i.fr, ptr %22, align 8, !tbaa !285
  %i.fs = load i64, ptr %i.g, align 8, !tbaa !284 ; 3 uses
  store i64 %i.fs, ptr %i.du, align 8, !tbaa !261
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.fr, ptr noundef nonnull align 1 dereferenceable(16) @.str.118, i64 16, i1 false)
  store i64 %i.fs, ptr %i.dv, align 8, !tbaa !260
  %i.ft = load ptr, ptr %22, align 8, !tbaa !285
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fs
  store i8 0, ptr %i.fu, align 1, !tbaa !261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  %i.fv = invoke ptr @_ZNK10cmMakefile11GetPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2952) %i.fq, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %bb.ag unwind label %bb.aj

bb.ag:                                            ; preds = %bb.af
  invoke fastcc void @"_ZZN22cmQtAutoGenInitializer12GetQtVersionEPK17cmGeneratorTargetNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_2clE7cmValueSA_"(ptr nonnull %18, ptr %i.fp, ptr %i.fv)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.fw = load ptr, ptr %22, align 8, !tbaa !285  ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.du
  br i1 %i.fx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118.2: ; preds = %bb.ah
  %i.fy = load i64, ptr %i.du, align 8, !tbaa !261
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.fz) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.2: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118.2
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  %i.ga = load ptr, ptr %21, align 8, !tbaa !285  ; 2 uses
  %i.gb = icmp eq ptr %i.ga, %i.ds
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.2
  %i.gc = load i64, ptr %i.ds, align 8, !tbaa !261
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.gd) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121.2
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  %i.ge = load ptr, ptr %18, align 8, !tbaa !1558 ; 3 uses
  %i.gf = load ptr, ptr %i.ah, align 8, !tbaa !1558 ; 2 uses
  %i.gg = icmp eq ptr %i.ge, %i.gf
  br i1 %i.gg, label %.thread, label %bb.al

.loopexit:                                        ; preds = %.noexc.i.i.i105.2, %.noexc.i.i.i105.1, %.noexc.i.i.i105
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

bb.ai:                                            ; preds = %bb.ae, %bb.aa, %bb.w
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.loopexit193:                                     ; preds = %.noexc.i.i.i114.2, %.noexc.i.i.i114.1, %.noexc.i.i.i114
  %lpad.loopexit195 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126

bb.aj:                                            ; preds = %bb.ag, %bb.af, %bb.ac, %bb.ab, %bb.y, %bb.x
  %i.gi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gj = load ptr, ptr %22, align 8, !tbaa !285  ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.du
  br i1 %i.gk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124: ; preds = %bb.aj
  %i.gl = load i64, ptr %i.du, align 8, !tbaa !261
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.gm) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126: ; preds = %bb.aj, %.loopexit193, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124
  %.pn47 = phi { ptr, i32 } [ %i.gi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124 ], [ %lpad.loopexit195, %.loopexit193 ], [ %i.gi, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  br label %bb.ak

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, %bb.ai
  %.pn47.pn = phi { ptr, i32 } [ %.pn47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126 ], [ %i.gh, %bb.ai ] ; 2 uses
  %i.gn = load ptr, ptr %21, align 8, !tbaa !285  ; 2 uses
  %i.go = icmp eq ptr %i.gn, %i.ds
  br i1 %i.go, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127: ; preds = %bb.ak
  %i.gp = load i64, ptr %i.ds, align 8, !tbaa !261
  %i.gq = add i64 %i.gp, 1
  call void @_ZdlPvm(ptr noundef %i.gn, i64 noundef %i.gq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129: ; preds = %bb.ak, %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127
  %.pn47.pn.pn = phi { ptr, i32 } [ %.pn47.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127 ], [ %lpad.loopexit, %.loopexit ], [ %.pn47.pn, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  br label %.body148thread-pre-split

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123.2
  %i.gr = icmp eq i32 %.0.i, 0
  br i1 %i.gr, label %_ZNSt6vectorIN11cmQtAutoGen14IntegerVersionESaIS1_EE2atEm.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.al, %.critedge
  %.sroa.0152.0240 = phi ptr [ %i.gt, %.critedge ], [ %i.ge, %bb.al ] ; 3 uses
  %i.gs = load i32, ptr %.sroa.0152.0240, align 4, !tbaa !287
  %.not46 = icmp eq i32 %i.gs, %.0.i
  br i1 %.not46, label %_ZNSt6vectorIN11cmQtAutoGen14IntegerVersionESaIS1_EE2atEm.exit, label %.critedge

.critedge:                                        ; preds = %.lr.ph
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.0152.0240, i64 8 ; 2 uses
  %.not191 = icmp eq ptr %i.gt, %i.gf
  br i1 %.not191, label %.thread, label %.lr.ph

_ZNSt6vectorIN11cmQtAutoGen14IntegerVersionESaIS1_EE2atEm.exit: ; preds = %.lr.ph, %bb.al
  %.sroa.0165.1.in.in = phi ptr [ %i.ge, %bb.al ], [ %.sroa.0152.0240, %.lr.ph ]
  %.sroa.0165.1.in = load i64, ptr %.sroa.0165.1.in.in, align 4, !tbaa !258 ; 3 uses
  %.sroa.6169.sroa.0.1.in = lshr i64 %.sroa.0165.1.in, 32 ; 2 uses
  %i.gu = and i64 %.sroa.0165.1.in, 4294967295
  %i.gv = icmp eq i64 %i.gu, 0
  br i1 %i.gv, label %.thread, label %bb.cx

.thread:                                          ; preds = %.critedge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123.2, %_ZNSt6vectorIN11cmQtAutoGen14IntegerVersionESaIS1_EE2atEm.exit
  %.sroa.6169.sroa.0.1189 = phi i64 [ %.sroa.6169.sroa.0.1.in, %_ZNSt6vectorIN11cmQtAutoGen14IntegerVersionESaIS1_EE2atEm.exit ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123.2 ], [ 0, %.critedge ]
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !260 ; 2 uses
  %i.gy = icmp eq i64 %i.gx, 0
  br i1 %i.gy, label %bb.am, label %.thread190

bb.am:                                            ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  %i.gz = load ptr, ptr %i.av, align 8, !tbaa !256
  call void @llvm.experimental.noalias.scope.decl(metadata !1559)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  %i.ha = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 10 uses
  store ptr %i.ha, ptr %23, align 8, !tbaa !259, !alias.scope !1559
  %i.hb = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 6 uses
  store i64 0, ptr %i.hb, align 8, !tbaa !260, !alias.scope !1559
  store i8 0, ptr %i.ha, align 8, !tbaa !261, !alias.scope !1559
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26, !noalias !1559
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26, !noalias !1560
  store i64 2, ptr %11, align 8, !tbaa !284, !alias.scope !1561, !noalias !1560
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr @.str.195, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !314, !alias.scope !1561, !noalias !1560
  %i.hc = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr null, ptr %i.hc, align 8, !tbaa !316, !alias.scope !1561, !noalias !1560
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26, !noalias !1560
  invoke void @_ZN10cmAlphaNumC1Ej(ptr noundef nonnull align 8 dereferenceable(56) %12, i32 noundef %.0.i)
          to label %.noexc.i131 unwind label %bb.ap

.noexc.i131:                                      ; preds = %bb.am
  %i.hd = getelementptr inbounds nuw i8, ptr %11, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !1562)
  %i.he = load ptr, ptr %12, align 8, !tbaa !334, !noalias !1563 ; 4 uses
  %.not.i.i3.i.i = icmp eq ptr %i.he, null        ; 2 uses
  %.sroa.3.0..sroa_idx.i.i4.i.i = getelementptr inbounds nuw i8, ptr %12, i64 16
  %.pn.in.i.i6.i.i = select i1 %.not.i.i3.i.i, ptr %.sroa.3.0..sroa_idx.i.i4.i.i, ptr %i.he
  %.pn.i.i7.i.i = load ptr, ptr %.pn.in.i.i6.i.i, align 8, !tbaa !314, !noalias !1564
  %.pn3.i.i5.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i.i3.i.i, ptr %12, ptr %i.he
  %.pn3.i.i5.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.pn3.i.i5.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  %.pn2.i.i9.i.i = load i64, ptr %.pn3.i.i5.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !284, !noalias !1564
  store i64 %.pn2.i.i9.i.i, ptr %i.hd, align 8, !tbaa !284, !alias.scope !1562, !noalias !1560
  %.sroa.4.0..sroa_idx.i10.i.i = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %.pn.i.i7.i.i, ptr %.sroa.4.0..sroa_idx.i10.i.i, align 8, !tbaa !314, !alias.scope !1562, !noalias !1560
  %i.hf = getelementptr inbounds nuw i8, ptr %11, i64 40
  store ptr %i.he, ptr %i.hf, align 8, !tbaa !316, !alias.scope !1562, !noalias !1560
  %i.hg = getelementptr inbounds nuw i8, ptr %11, i64 48
  store i64 5, ptr %i.hg, align 8, !tbaa !284, !alias.scope !1565, !noalias !1560
  %.sroa.4.0..sroa_idx.i18.i.i = getelementptr inbounds nuw i8, ptr %11, i64 56
  store ptr @.str.196, ptr %.sroa.4.0..sroa_idx.i18.i.i, align 8, !tbaa !314, !alias.scope !1565, !noalias !1560
  %i.hh = getelementptr inbounds nuw i8, ptr %11, i64 64
  store ptr null, ptr %i.hh, align 8, !tbaa !316, !alias.scope !1565, !noalias !1560
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr nonnull %11, i64 3)
          to label %_ZN2cm8enum_setIN12cmStateEnums12TargetDomainELm32ELi0EEC2ESt16initializer_listIS2_E.exit.i unwind label %bb.ap

_ZN2cm8enum_setIN12cmStateEnums12TargetDomainELm32ELi0EEC2ESt16initializer_listIS2_E.exit.i: ; preds = %.noexc.i131
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26, !noalias !1560
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26, !noalias !1560
  store i64 3, ptr %14, align 8, !tbaa !284, !noalias !1559
  %i.hi = invoke noundef ptr @_ZNK10cmMakefile15FindTargetToUseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cm8enum_setIN12cmStateEnums12TargetDomainELm32ELi0EEE(ptr noundef nonnull align 8 dereferenceable(2952) %i.gz, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dead_on_return %14)
          to label %bb.an unwind label %bb.aq     ; 2 uses

bb.an:                                            ; preds = %_ZN2cm8enum_setIN12cmStateEnums12TargetDomainELm32ELi0EEC2ESt16initializer_listIS2_E.exit.i
  %.not.i132 = icmp eq ptr %i.hi, null
  br i1 %.not.i132, label %bb.at, label %.noexc.i.i

.noexc.i.i:                                       ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26, !noalias !1559
  %i.hj = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  store ptr %i.hj, ptr %15, align 8, !tbaa !259, !noalias !1559
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26, !noalias !1559
  store i64 17, ptr %i.f, align 8, !tbaa !284, !noalias !1559
  %i.hk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc14.i unwind label %bb.ar ; 2 uses

.noexc14.i:                                       ; preds = %.noexc.i.i
  store ptr %i.hk, ptr %15, align 8, !tbaa !285, !noalias !1559
  %i.hl = load i64, ptr %i.f, align 8, !tbaa !284, !noalias !1559 ; 3 uses
  store i64 %i.hl, ptr %i.hj, align 8, !tbaa !261, !noalias !1559
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.hk, ptr noundef nonnull align 1 dereferenceable(17) @.str.197, i64 17, i1 false)
  %i.hm = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.hl, ptr %i.hm, align 8, !tbaa !260, !noalias !1559
  %i.hn = load ptr, ptr %15, align 8, !tbaa !285, !noalias !1559
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.hl
  store i8 0, ptr %i.ho, align 1, !tbaa !261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26, !noalias !1559
  %i.hp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK8cmTarget15GetSafePropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.hi, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.ao unwind label %bb.as

bb.ao:                                            ; preds = %.noexc14.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(32) %i.hp)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i unwind label %bb.as

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i: ; preds = %bb.ao
  %i.hq = load ptr, ptr %15, align 8, !tbaa !285, !noalias !1559 ; 2 uses
  %i.hr = icmp eq ptr %i.hq, %i.hj
  br i1 %i.hr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i
  %i.hs = load i64, ptr %i.hj, align 8, !tbaa !261, !noalias !1559
  %i.ht = add i64 %i.hs, 1
  call void @_ZdlPvm(ptr noundef %i.hq, i64 noundef %i.ht) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26, !noalias !1559
  br label %bb.at

bb.ap:                                            ; preds = %.noexc.i131, %bb.am
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i

bb.aq:                                            ; preds = %_ZN2cm8enum_setIN12cmStateEnums12TargetDomainELm32ELi0EEC2ESt16initializer_listIS2_E.exit.i
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.ar:                                            ; preds = %.noexc.i.i
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i

bb.as:                                            ; preds = %bb.ao, %.noexc14.i
  %i.hx = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZN22cmQtAutoGenInitializer12GetQtVersionEPK17cmGeneratorTargetNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:.noexc.i
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.pa = load ptr, ptr %5, align 8, !tbaa !285   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.pb = load i32, ptr %i.on, align 4, !tbaa !258 ; 2 uses
  store i32 0, ptr %i.on, align 4, !tbaa !258
  %i.pc = call noundef i64 @__isoc23_strtol(ptr noundef %i.pa, ptr noundef nonnull %i.a, i32 noundef 10) ; 2 uses
  %i.pd = load ptr, ptr %i.a, align 8, !tbaa !314
  %i.pe = icmp eq ptr %i.pd, %i.pa
  br i1 %i.pe, label %bb.cl, label %bb.cp

bb.cl:                                            ; preds = %bb.ck
  invoke void @_ZSt24__throw_invalid_argumentPKc(ptr noundef nonnull @.str.203) #28
          to label %bb.cm unwind label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  unreachable

bb.cn:                                            ; preds = %.critedge.i.i10.i.i, %bb.cl
  %i.pf = landingpad { ptr, i32 }
          cleanup
  %i.pg = load i32, ptr %i.on, align 4, !tbaa !258
  %i.ph = icmp eq i32 %i.pg, 0
  br i1 %i.ph, label %bb.co, label %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i11.i.i

bb.co:                                            ; preds = %bb.cn
  store i32 %i.pb, ptr %i.on, align 4, !tbaa !258
  br label %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i11.i.i

_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i11.i.i: ; preds = %bb.co, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %.body.i.i

bb.cp:                                            ; preds = %bb.ck
  %i.pi = load i32, ptr %i.on, align 4, !tbaa !258 ; 2 uses
  %i.pj = icmp eq i32 %i.pi, 34
  %i.pk = add i64 %i.pc, -2147483648
  %i.pl = icmp ult i64 %i.pk, -4294967296
  %or.cond.i.i9.i.i = or i1 %i.pl, %i.pj
  br i1 %or.cond.i.i9.i.i, label %.critedge.i.i10.i.i, label %bb.cr

.critedge.i.i10.i.i:                              ; preds = %bb.cp
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.203) #28
          to label %bb.cq unwind label %bb.cn

bb.cq:                                            ; preds = %.critedge.i.i10.i.i
  unreachable

bb.cr:                                            ; preds = %bb.cp
  %i.pm = icmp eq i32 %i.pi, 0
  br i1 %i.pm, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  store i32 %i.pb, ptr %i.on, align 4, !tbaa !258
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.pn = shl nsw i64 %i.pc, 32
  %i.po = and i64 %i.op, 4294967295
  %i.pp = or disjoint i64 %i.pn, %i.po
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.bz, %bb.bx
  %.sroa.3.0.i.i = phi i64 [ 0, %bb.bx ], [ 0, %bb.bz ], [ %i.pp, %bb.ct ]
  %i.pq = load ptr, ptr %5, align 8, !tbaa !285   ; 2 uses
  %i.pr = icmp eq ptr %i.pq, %i.nl
  br i1 %i.pr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i.i: ; preds = %bb.cu
  %i.ps = load i64, ptr %i.nl, align 8, !tbaa !261
  %i.pt = add i64 %i.ps, 1
  call void @_ZdlPvm(ptr noundef %i.pq, i64 noundef %i.pt) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i: ; preds = %bb.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.pu = load ptr, ptr %4, align 8, !tbaa !285   ; 2 uses
  %i.pv = icmp eq ptr %i.pu, %i.nj
  br i1 %i.pv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i
  %i.pw = load i64, ptr %i.nj, align 8, !tbaa !261
  %i.px = add i64 %i.pw, 1
  call void @_ZdlPvm(ptr noundef %i.pu, i64 noundef %i.px) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.py = load ptr, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.py, ptr %3, align 8, !tbaa !318
  %i.pz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.qa = getelementptr i8, ptr %i.py, i64 -24
  %i.qb = load i64, ptr %i.qa, align 8
  %i.qc = getelementptr inbounds i8, ptr %3, i64 %i.qb
  store ptr %i.pz, ptr %i.qc, align 8, !tbaa !318
  %i.qd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.qd, align 8, !tbaa !318
  %i.qe = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !285 ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.qh = icmp eq ptr %i.qf, %i.qg
  br i1 %i.qh, label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i45.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i45.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i.i
  %i.qi = load i64, ptr %i.qg, align 8, !tbaa !261
  %i.qj = add i64 %i.qi, 1
  call void @_ZdlPvm(ptr noundef %i.qf, i64 noundef %i.qj) #27
  br label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i.i

_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i45.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.qd, align 8, !tbaa !318
  %i.qk = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.qk) #26
  %i.ql = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.ql, ptr %3, align 8, !tbaa !318
  %i.qm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %i.qn = getelementptr i8, ptr %i.ql, i64 -24
  %i.qo = load i64, ptr %i.qn, align 8
  %i.qp = getelementptr inbounds i8, ptr %3, i64 %i.qo
  store ptr %i.qm, ptr %i.qp, align 8, !tbaa !318
  %i.qq = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.qq, align 8, !tbaa !1567
  %i.qr = getelementptr inbounds nuw i8, ptr %3, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.qr) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %_ZL15parseMocVersionNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZL15parseMocVersionNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i.i, %bb.bs
  %.sroa.0.0.insert.insert.i.i = phi i64 [ 0, %bb.bs ], [ %.sroa.3.0.i.i, %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i.i ] ; 3 uses
  %.sroa.6.0.extract.shift.i = lshr i64 %.sroa.0.0.insert.insert.i.i, 32 ; 2 uses
  %i.qs = load ptr, ptr %10, align 8, !tbaa !285  ; 2 uses
  %i.qt = icmp eq ptr %i.qs, %i.mk
  br i1 %i.qt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51.i: ; preds = %_ZL15parseMocVersionNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.qu = load i64, ptr %i.mk, align 8, !tbaa !261
  %i.qv = add i64 %i.qu, 1
  call void @_ZdlPvm(ptr noundef %i.qs, i64 noundef %i.qv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i

bb.cv:                                            ; preds = %.noexc.i42.i
  %i.qw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i

bb.cw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i.i, %bb.bw
  %i.qx = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i

.body49.i:                                        ; preds = %bb.cw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i, %bb.bt
  %eh.lpad-body50.i = phi { ptr, i32 } [ %i.qx, %bb.cw ], [ %eh.lpad-body.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i ], [ %i.ne, %bb.bt ] ; 2 uses
  %i.qy = load ptr, ptr %10, align 8, !tbaa !285  ; 2 uses
  %i.qz = icmp eq ptr %i.qy, %i.mk
  br i1 %i.qz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.i: ; preds = %.body49.i
  %i.ra = load i64, ptr %i.mk, align 8, !tbaa !261
  %i.rb = add i64 %i.ra, 1
  call void @_ZdlPvm(ptr noundef %i.qy, i64 noundef %i.rb) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i: ; preds = %_ZL15parseMocVersionNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i
  %.sroa.02.0.i = phi i64 [ %.sroa.0.0.insert.insert.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51.i ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i ], [ %.sroa.0.0.insert.insert.i.i, %_ZL15parseMocVersionNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ]
  %.sroa.6.0.i = phi i64 [ %.sroa.6.0.extract.shift.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51.i ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i ], [ %.sroa.6.0.extract.shift.i, %_ZL15parseMocVersionNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  %i.rc = load ptr, ptr %6, align 8, !tbaa !285   ; 2 uses
  %i.rd = icmp eq ptr %i.rc, %i.jl
  br i1 %i.rd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i58.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i
  %i.re = load i64, ptr %i.jl, align 8, !tbaa !261
  %i.rf = add i64 %i.re, 1
  call void @_ZdlPvm(ptr noundef %i.rc, i64 noundef %i.rf) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i58.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i: ; preds = %.body49.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.i, %bb.cv, %.thread.i138
  %.pn16.i = phi { ptr, i32 } [ %.pn.pn.pn7.i, %.thread.i138 ], [ %i.qw, %bb.cv ], [ %eh.lpad-body50.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.i ], [ %eh.lpad-body50.i, %.body49.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  %i.rg = load ptr, ptr %6, align 8, !tbaa !285   ; 2 uses
  %i.rh = icmp eq ptr %i.rg, %i.jl
  br i1 %i.rh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i
  %i.ri = load i64, ptr %i.jl, align 8, !tbaa !261
  %i.rj = add i64 %i.ri, 1
  call void @_ZdlPvm(ptr noundef %i.rg, i64 noundef %i.rj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %.body148thread-pre-split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i58.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.cx

bb.cx:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i135, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i58.i, %_ZNSt6vectorIN11cmQtAutoGen14IntegerVersionESaIS1_EE2atEm.exit
  %.sroa.0165.2 = phi i64 [ 0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i135 ], [ %.sroa.02.0.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i58.i ], [ %.sroa.0165.1.in, %_ZNSt6vectorIN11cmQtAutoGen14IntegerVersionESaIS1_EE2atEm.exit ]
  %.sroa.6169.sroa.0.2 = phi i64 [ %.sroa.6169.sroa.0.1189, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i135 ], [ %.sroa.6.0.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i58.i ], [ %.sroa.6169.sroa.0.1.in, %_ZNSt6vectorIN11cmQtAutoGen14IntegerVersionESaIS1_EE2atEm.exit ]
  %24 = load ptr, ptr %18, align 8, !tbaa !465    ; 3 uses
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
  %.pn51.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn16.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.i ], [ %.pn51.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99 ], [ %.pn.pn.pn.i, %.body ], [ %.pn47.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129 ]
  %.pr372 = load ptr, ptr %18, align 8, !tbaa !465
  br label %.body148

.body148:                                         ; preds = %.body148thread-pre-split, %bb.g
  %i.ro = phi ptr [ %.pr372, %.body148thread-pre-split ], [ null, %bb.g ] ; 3 uses
  %.pn51.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn51.pn.pn.pn.pn.ph, %.body148thread-pre-split ], [ %i.at, %bb.g ]
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
  %i.aa = load i64, ptr %.0911.i.i.i.i.i, align 4, !tbaa !258, !alias.scope !1573, !noalias !1572
  store i64 %i.aa, ptr %.012.i.i.i.i.i, align 4, !tbaa !258, !alias.scope !1572, !noalias !1573
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ab, %i.j
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN11cmQtAutoGen14IntegerVersionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1571

_ZNSt6vectorIN11cmQtAutoGen14IntegerVersionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN11cmQtAutoGen14IntegerVersionESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.y, %_ZNKSt6vectorIN11cmQtAutoGen14IntegerVersionESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ac, %.lr.ph.i.i.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN11cmQtAutoGen14IntegerVersionESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN11cmQtAutoGen14IntegerVersionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.ae = load ptr, ptr %i.k, align 8, !tbaa !467
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.af, %i.p
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.ag) #27
  br label %_ZNSt6vectorIN11cmQtAutoGen14IntegerVersionESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN11cmQtAutoGen14IntegerVersionESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIN11cmQtAutoGen14IntegerVersionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
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
end_hunk_1
