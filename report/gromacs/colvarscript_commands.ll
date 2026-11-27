Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvarscript_commands?download=true
inline.NumInlined: 1206
inline.NumDeleted: 160
begin_hunk_0_@cvscript_cv_list:bb.a
  %i.eh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.eg, i64 noundef %i.ec)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit128 unwind label %.loopexit.split-lp196.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit128: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i125
  %i.ei = load ptr, ptr %6, align 8, !tbaa !67    ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.dd
  br i1 %i.ej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit128
  %i.ek = load i64, ptr %i.dd, align 8, !tbaa !69
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.el) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit128, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0159.0216, i64 8 ; 2 uses
  %i.en = load ptr, ptr %i.cx, align 8, !tbaa !108 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 176
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !207
  %.not178 = icmp eq ptr %i.em, %i.ep
  br i1 %.not178, label %._crit_edge.invoke, label %bb.t, !llvm.loop !201

.loopexit.split-lp196.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i125, %bb.v
  %lpad.loopexit.split-lp271 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eq = load ptr, ptr %6, align 8, !tbaa !67    ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.dd
  br i1 %i.er, label %.body122, label %.body122.sink.split

.body122.sink.split:                              ; preds = %.loopexit.split-lp196.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp191.loopexit.split-lp.loopexit.split-lp
  %.sink = phi ptr [ %i.ea, %.loopexit.split-lp191.loopexit.split-lp.loopexit.split-lp ], [ %i.eq, %.loopexit.split-lp196.loopexit.split-lp.loopexit.split-lp ]
  %.pn58.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp268, %.loopexit.split-lp191.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp271, %.loopexit.split-lp196.loopexit.split-lp.loopexit.split-lp ]
  %i.es = load i64, ptr %i.dd, align 8, !tbaa !69
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.et) #15
  br label %.body122

.body122:                                         ; preds = %.body122.sink.split, %.loopexit.split-lp196.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp191.loopexit.split-lp.loopexit.split-lp
  %.pn58 = phi { ptr, i32 } [ %lpad.loopexit.split-lp268, %.loopexit.split-lp191.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp271, %.loopexit.split-lp196.loopexit.split-lp.loopexit.split-lp ], [ %.pn58.ph, %.body122.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %.loopexit.split-lp

.noexc.i136:                                      ; preds = %.critedge69, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit113
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.eu = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.eu, ptr %7, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 34, ptr %i.a, align 8, !tbaa !70
  %i.ev = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %bb.w unwind label %bb.y       ; 3 uses

bb.w:                                             ; preds = %.noexc.i136
  store ptr %i.ev, ptr %7, align 8, !tbaa !67
  %i.ew = load i64, ptr %i.a, align 8, !tbaa !70  ; 3 uses
  store i64 %i.ew, ptr %i.eu, align 8, !tbaa !69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(34) %i.ev, ptr noundef nonnull align 1 dereferenceable(34) @.str.51, i64 34, i1 false)
  %i.ex = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.ew, ptr %i.ex, align 8, !tbaa !68
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.ew
  store i8 0, ptr %i.ey, align 1, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  invoke void @_ZN12colvarscript13add_error_msgERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(304) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.ez = load ptr, ptr %7, align 8, !tbaa !67    ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.eu
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139: ; preds = %bb.x
  %i.fb = load i64, ptr %i.eu, align 8, !tbaa !69
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fc) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %bb.aa

bb.y:                                             ; preds = %.noexc.i136
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

bb.z:                                             ; preds = %bb.w
  %i.fe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ff = load ptr, ptr %7, align 8, !tbaa !67    ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.eu
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142: ; preds = %bb.z
  %i.fh = load i64, ptr %i.eu, align 8, !tbaa !69
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fi) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142, %bb.y
  %.pn56 = phi { ptr, i32 } [ %i.fd, %bb.y ], [ %i.fe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142 ], [ %i.fe, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %.loopexit.split-lp

bb.aa:                                            ; preds = %._crit_edge.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141
  %.047 = phi i32 [ -1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141 ], [ 0, %._crit_edge.invoke ]
  %i.fj = load ptr, ptr %4, align 8, !tbaa !67    ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.fl = icmp eq ptr %i.fj, %i.fk
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145: ; preds = %bb.aa
  %i.fm = load i64, ptr %i.fk, align 8, !tbaa !69
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fn) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.fo = load ptr, ptr %3, align 8, !tbaa !67    ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.i
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147
  %i.fq = load i64, ptr %i.i, align 8, !tbaa !69
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fr) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.ab

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, %.body122
  %.pn60.pn.pn = phi { ptr, i32 } [ %.pn56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144 ], [ %.pn60, %.body ], [ %.pn58, %.body122 ], [ %lpad.loopexit.split-lp261, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.fs = load ptr, ptr %4, align 8, !tbaa !67    ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.fu = icmp eq ptr %i.fs, %i.ft
  br i1 %i.fu, label %.critedge71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151: ; preds = %.loopexit.split-lp
  %i.fv = load i64, ptr %i.ft, align 8, !tbaa !69
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fw) #15
  br label %.critedge71

.critedge71:                                      ; preds = %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151, %bb.m
  %.pn60.pn.pn.pn = phi { ptr, i32 } [ %.pn60.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151 ], [ %i.ax, %bb.m ], [ %.pn60.pn.pn, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.fx = load ptr, ptr %3, align 8, !tbaa !67    ; 2 uses
  %i.fy = icmp eq ptr %i.fx, %i.i
  br i1 %i.fy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154: ; preds = %.critedge71
  %i.fz = load i64, ptr %i.i, align 8, !tbaa !69
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.ga) #15
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i155

bb.ab:                                            ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150
  %.148 = phi i32 [ %.047, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150 ], [ -1, %bb.a ]
  ret i32 %.148

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i155: ; preds = %.critedge71, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  resume { ptr, i32 } %.pn60.pn.pn.pn
}

declare noundef ptr @_ZN12colvarmodule9variablesEv(ptr noundef nonnull align 8 dereferenceable(632)) local_unnamed_addr #3

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define range(i32 -1, 1) i32 @cvscript_cv_listcommands(ptr nofree noundef readnone captures(none) %0, i32 noundef %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 20 uses
  %i.b = tail call noundef ptr @_ZN12colvarmodule4mainEv() ; 0 uses
  %i.c = load ptr, ptr @_ZN12colvarmodule5proxyE, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 832
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16   ; 3 uses
  %i.f = tail call noundef i32 @_ZN12colvarscript16clear_str_resultEv(ptr noundef nonnull align 8 dereferenceable(304) %i.e) ; 0 uses
  %i.g = tail call noundef i32 @_ZN12colvarscript15check_cmd_nargsILNS_11Object_typeE0EEEiPKciii(ptr noundef nonnull align 8 dereferenceable(304) %i.e, ptr noundef nonnull @.str.52, i32 noundef %1, i32 noundef 0, i32 noundef 0)
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit.peel, label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit.peel: ; preds = %bb.a
  %i.h = tail call noundef ptr @_ZN12colvarmodule4mainEv() ; 0 uses
  %i.i = load ptr, ptr @_ZN12colvarmodule5proxyE, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 832
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !53   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.n, ptr %3, align 8, !tbaa !66
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 0, ptr %i.o, align 8, !tbaa !68
  store i8 0, ptr %i.n, align 8, !tbaa !69
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 12 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !54   ; 4 uses
  store ptr %i.p, ptr %4, align 8, !tbaa !66
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit.peel
  %i.t = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.r) #13 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 %i.t, ptr %i.a, align 8, !tbaa !70
  %i.u = icmp ugt i64 %i.t, 15
  br i1 %i.u, label %.noexc.i55.peel, label %._crit_edge.i.i54.peel

.noexc.i55.peel:                                  ; preds = %bb.b
  %i.v = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc57.peel unwind label %.loopexit.split-lp75.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc57.peel:                                    ; preds = %.noexc.i55.peel
  store ptr %i.v, ptr %4, align 8, !tbaa !67
  %i.w = load i64, ptr %i.a, align 8, !tbaa !70
  store i64 %i.w, ptr %i.p, align 8, !tbaa !69
  br label %._crit_edge.i.i54.peel

._crit_edge.i.i54.peel:                           ; preds = %.noexc57.peel, %bb.b
  %i.x = phi ptr [ %i.v, %.noexc57.peel ], [ %i.p, %bb.b ] ; 2 uses
  switch i64 %i.t, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i54.peel
  %i.y = load i8, ptr %i.r, align 1, !tbaa !69
  store i8 %i.y, ptr %i.x, align 1, !tbaa !69
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i54.peel
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr nonnull align 1 %i.r, i64 %i.t, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i54.peel
  %i.z = load i64, ptr %i.a, align 8, !tbaa !70   ; 2 uses
  store i64 %i.z, ptr %i.q, align 8, !tbaa !68
  %i.aa = load ptr, ptr %4, align 8, !tbaa !67
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.z
  store i8 0, ptr %i.ab, align 1, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.ac = load i64, ptr %i.q, align 8, !tbaa !68  ; 2 uses
  %i.ad = load i64, ptr %i.o, align 8, !tbaa !68
  %i.ae = sub i64 4611686018427387903, %i.ad
  %i.af = icmp ult i64 %i.ae, %i.ac
  br i1 %i.af, label %.loopexit100, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.peel: ; preds = %bb.e
  %i.ag = load ptr, ptr %4, align 8, !tbaa !67
  %i.ah = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.ag, i64 noundef %i.ac)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.peel unwind label %.loopexit.split-lp80.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.peel
  %i.ai = load ptr, ptr %4, align 8, !tbaa !67    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.p
  br i1 %i.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i62.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.peel
  %i.ak = load i64, ptr %i.p, align 8, !tbaa !69
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #15
  br label %.peel.next

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i62.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.peel
  %5 = load i64, ptr %i.q, align 8, !tbaa !68
  %6 = icmp ult i64 %5, 16
  call void @llvm.assume(i1 %6)
  br label %.peel.next

.peel.next:                                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i62.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.f

.loopexit104:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  %i.am = invoke noundef i32 @_ZN12colvarscript14set_result_strERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(304) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %.peel.next
  %indvars.iv = phi i64 [ 1, %.peel.next ], [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ] ; 2 uses
  %i.an = load i64, ptr %i.o, align 8, !tbaa !68
  %i.ao = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.an, i64 noundef 0, i64 noundef 1, i8 noundef signext 32)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.f, %.loopexit104
  %lpad.loopexit.split-lp122 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !54 ; 4 uses
  store ptr %i.p, ptr %4, align 8, !tbaa !66
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %.loopexit, label %bb.g

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit.peel
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.6) #14
          to label %.noexc56 unwind label %.loopexit.split-lp75.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc56:                                         ; preds = %.loopexit
  unreachable

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit
  %i.as = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aq) #13 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 %i.as, ptr %i.a, align 8, !tbaa !70
  %i.at = icmp ugt i64 %i.as, 15
  br i1 %i.at, label %.noexc.i55, label %._crit_edge.i.i54

.noexc.i55:                                       ; preds = %bb.g
  %i.au = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc57 unwind label %.loopexit.split-lp75.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc57:                                         ; preds = %.noexc.i55
  store ptr %i.au, ptr %4, align 8, !tbaa !67
  %i.av = load i64, ptr %i.a, align 8, !tbaa !70
  store i64 %i.av, ptr %i.p, align 8, !tbaa !69
  br label %._crit_edge.i.i54

._crit_edge.i.i54:                                ; preds = %.noexc57, %bb.g
  %i.aw = phi ptr [ %i.au, %.noexc57 ], [ %i.p, %bb.g ] ; 2 uses
  switch i64 %i.as, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i54
  %i.ax = load i8, ptr %i.aq, align 1, !tbaa !69
  store i8 %i.ax, ptr %i.aw, align 1, !tbaa !69
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i54
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aw, ptr nonnull align 1 %i.aq, i64 %i.as, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i54
  %i.ay = load i64, ptr %i.a, align 8, !tbaa !70  ; 2 uses
  store i64 %i.ay, ptr %i.q, align 8, !tbaa !68
  %i.az = load ptr, ptr %4, align 8, !tbaa !67
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ay
  store i8 0, ptr %i.ba, align 1, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.bb = load i64, ptr %i.q, align 8, !tbaa !68  ; 2 uses
  %i.bc = load i64, ptr %i.o, align 8, !tbaa !68
  %i.bd = sub i64 4611686018427387903, %i.bc
  %i.be = icmp ult i64 %i.bd, %i.bb
  br i1 %i.be, label %.loopexit100, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i

.loopexit100:                                     ; preds = %bb.j, %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #14
          to label %.noexc59 unwind label %.loopexit.split-lp80.loopexit.split-lp.loopexit.split-lp

.noexc59:                                         ; preds = %.loopexit100
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i: ; preds = %bb.j
  %i.bf = load ptr, ptr %4, align 8, !tbaa !67
  %i.bg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.bf, i64 noundef %i.bb)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit unwind label %.loopexit.split-lp80.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i
  %i.bh = load ptr, ptr %4, align 8, !tbaa !67    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.p
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.bj = load i64, ptr %i.p, align 8, !tbaa !69
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 86
  br i1 %exitcond.not, label %.loopexit104, label %bb.f, !llvm.loop !212

.loopexit.split-lp75.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i55, %.noexc.i55.peel, %.loopexit
  %lpad.loopexit.split-lp124 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

.loopexit.split-lp80.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.peel, %.loopexit100
  %lpad.loopexit.split-lp127 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bl = load ptr, ptr %4, align 8, !tbaa !67    ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.p
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %.loopexit.split-lp80.loopexit.split-lp.loopexit.split-lp
  %i.bn = load i64, ptr %i.p, align 8, !tbaa !69
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %.loopexit.split-lp80.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp75.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  %.pn26 = phi { ptr, i32 } [ %lpad.loopexit.split-lp127, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64 ], [ %lpad.loopexit.split-lp124, %.loopexit.split-lp75.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp127, %.loopexit.split-lp80.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %.loopexit.split-lp

bb.k:                                             ; preds = %.loopexit104
  %i.bp = load ptr, ptr %3, align 8, !tbaa !67    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.n
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.k
  %i.br = load i64, ptr %i.n, align 8, !tbaa !69
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.l

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  %.pn26.pn.pn = phi { ptr, i32 } [ %.pn26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66 ], [ %lpad.loopexit.split-lp122, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.bt = load ptr, ptr %3, align 8, !tbaa !67    ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.n
  br i1 %i.bu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %.loopexit.split-lp
  %i.bv = load i64, ptr %i.n, align 8, !tbaa !69
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #15
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i71

bb.l:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69
  %.021 = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ], [ -1, %bb.a ]
  ret i32 %.021

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i71: ; preds = %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  resume { ptr, i32 } %.pn26.pn.pn
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define range(i32 -1, 1) i32 @cvscript_cv_listindexfiles(ptr nofree noundef readnone captures(none) %0, i32 noundef %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = tail call noundef ptr @_ZN12colvarmodule4mainEv() ; 0 uses
  %i.b = load ptr, ptr @_ZN12colvarmodule5proxyE, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 832
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16   ; 4 uses
  %i.e = tail call noundef i32 @_ZN12colvarscript16clear_str_resultEv(ptr noundef nonnull align 8 dereferenceable(304) %i.d) ; 0 uses
  %i.f = tail call noundef i32 @_ZN12colvarscript15check_cmd_nargsILNS_11Object_typeE0EEEiPKciii(ptr noundef nonnull align 8 dereferenceable(304) %i.d, ptr noundef nonnull @.str.53, i32 noundef %1, i32 noundef 0, i32 noundef 0)
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !108  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 384
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 392
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !114
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !115  ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = lshr exact i64 %i.o, 5                   ; 2 uses
  %i.q = trunc i64 %i.p to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.r, ptr %3, align 8, !tbaa !66
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 0, ptr %i.s, align 8, !tbaa !68
  store i8 0, ptr %i.r, align 8, !tbaa !69
end_hunk_0
