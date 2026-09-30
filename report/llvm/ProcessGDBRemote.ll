Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ProcessGDBRemote?download=true
inline.NumInlined: 12934
inline.NumDeleted: 6125
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN12lldb_private18process_gdb_remote16ProcessGDBRemote8DoLaunchEPNS_6ModuleERNS_17ProcessLaunchInfoE:bb.a
  %i.ea = load ptr, ptr %25, align 8, !tbaa !119
  call void (ptr, ptr, i64, ptr, i64, ptr, ...) @_ZN12lldb_private3Log7FormatfEN4llvm9StringRefES2_PKcz(ptr noundef nonnull align 8 dereferenceable(104) %.0.i.i289, ptr nonnull @.str.6, i64 93, ptr nonnull @__func__._ZN12lldb_private18process_gdb_remote16ProcessGDBRemote8DoLaunchEPNS_6ModuleERNS_17ProcessLaunchInfoE, i64 8, ptr noundef nonnull @.str.82, ptr noundef nonnull @__func__._ZN12lldb_private18process_gdb_remote16ProcessGDBRemote8DoLaunchEPNS_6ModuleERNS_17ProcessLaunchInfoE, ptr noundef %i.dv, ptr noundef %i.dy, ptr noundef %i.ea) #30
  %i.eb = load ptr, ptr %25, align 8, !tbaa !119  ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.ed = icmp eq ptr %i.eb, %i.ec
  br i1 %i.ed, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157: ; preds = %bb.bp
  %i.ee = load i64, ptr %i.ec, align 8, !tbaa !91
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ef) #32
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i158

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159: ; preds = %bb.bo
  call void (ptr, ptr, i64, ptr, i64, ptr, ...) @_ZN12lldb_private3Log7FormatfEN4llvm9StringRefES2_PKcz(ptr noundef nonnull align 8 dereferenceable(104) %.0.i.i289, ptr nonnull @.str.6, i64 93, ptr nonnull @__func__._ZN12lldb_private18process_gdb_remote16ProcessGDBRemote8DoLaunchEPNS_6ModuleERNS_17ProcessLaunchInfoE, i64 8, ptr noundef nonnull @.str.82, ptr noundef nonnull @__func__._ZN12lldb_private18process_gdb_remote16ProcessGDBRemote8DoLaunchEPNS_6ModuleERNS_17ProcessLaunchInfoE, ptr noundef %i.dv, ptr noundef %i.dy, ptr noundef nonnull @.str.80) #30
  br label %.critedge124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i158: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #30
  br label %.critedge124

.critedge124:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i158
  br i1 %i.dw, label %bb.bq, label %.critedge126

bb.bq:                                            ; preds = %.critedge124
  %i.eg = load ptr, ptr %24, align 8, !tbaa !119  ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.ei = icmp eq ptr %i.eg, %i.eh
  br i1 %i.ei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160: ; preds = %bb.bq
  %i.ej = load i64, ptr %i.eh, align 8, !tbaa !91
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ek) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30
  br label %.critedge126

.critedge126:                                     ; preds = %.critedge124, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162
  br i1 %i.dt, label %bb.br, label %.critedge128.thread

bb.br:                                            ; preds = %.critedge126
  %i.el = load ptr, ptr %23, align 8, !tbaa !119  ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.en = icmp eq ptr %i.el, %i.em
  br i1 %i.en, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163: ; preds = %bb.br
  %i.eo = load i64, ptr %i.em, align 8, !tbaa !91
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.ep) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  br label %.critedge128.thread

.critedge128:                                     ; preds = %_ZN4llvm9StringRefC2EPKc.exit150, %bb.ar, %bb.av, %bb.au
  br i1 %.not291, label %.critedge129, label %.critedge128.thread

.critedge128.thread:                              ; preds = %.critedge126, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165, %.critedge128
  %i.eq = call noundef zeroext i1 @_ZNK12lldb_private8FileSpeccvbEv(ptr noundef nonnull align 8 dereferenceable(24) %11) #30 ; 2 uses
  br i1 %i.eq, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %.critedge128.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #30
  call void @_ZNK12lldb_private8FileSpec7GetPathB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %26, ptr noundef nonnull align 8 dereferenceable(24) %11, i1 noundef zeroext true) #30
  %i.er = load ptr, ptr %26, align 8, !tbaa !119
  br label %bb.bt

bb.bt:                                            ; preds = %.critedge128.thread, %bb.bs
  %i.es = phi ptr [ %i.er, %bb.bs ], [ @.str.80, %.critedge128.thread ] ; 2 uses
  %i.et = call noundef zeroext i1 @_ZNK12lldb_private8FileSpeccvbEv(ptr noundef nonnull align 8 dereferenceable(24) %12) #30 ; 2 uses
  br i1 %i.et, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #30
  call void @_ZNK12lldb_private8FileSpec7GetPathB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %27, ptr noundef nonnull align 8 dereferenceable(24) %12, i1 noundef zeroext true) #30
  %i.eu = load ptr, ptr %27, align 8, !tbaa !119
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bt, %bb.bu
  %i.ev = phi ptr [ %i.eu, %bb.bu ], [ @.str.80, %bb.bt ] ; 2 uses
  %i.ew = call noundef zeroext i1 @_ZNK12lldb_private8FileSpeccvbEv(ptr noundef nonnull align 8 dereferenceable(24) %13) #30
  br i1 %i.ew, label %bb.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #30
  call void @_ZNK12lldb_private8FileSpec7GetPathB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %28, ptr noundef nonnull align 8 dereferenceable(24) %13, i1 noundef zeroext true) #30
  %i.ex = load ptr, ptr %28, align 8, !tbaa !119
  call void (ptr, ptr, i64, ptr, i64, ptr, ...) @_ZN12lldb_private3Log7FormatfEN4llvm9StringRefES2_PKcz(ptr noundef nonnull align 8 dereferenceable(104) %.0.i.i289, ptr nonnull @.str.6, i64 93, ptr nonnull @__func__._ZN12lldb_private18process_gdb_remote16ProcessGDBRemote8DoLaunchEPNS_6ModuleERNS_17ProcessLaunchInfoE, i64 8, ptr noundef nonnull @.str.83, ptr noundef nonnull @__func__._ZN12lldb_private18process_gdb_remote16ProcessGDBRemote8DoLaunchEPNS_6ModuleERNS_17ProcessLaunchInfoE, ptr noundef %i.es, ptr noundef %i.ev, ptr noundef %i.ex) #30
  %i.ey = load ptr, ptr %28, align 8, !tbaa !119  ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.fa = icmp eq ptr %i.ey, %i.ez
  br i1 %i.fa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168: ; preds = %bb.bw
  %i.fb = load i64, ptr %i.ez, align 8, !tbaa !91
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fc) #32
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i169

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170: ; preds = %bb.bv
  call void (ptr, ptr, i64, ptr, i64, ptr, ...) @_ZN12lldb_private3Log7FormatfEN4llvm9StringRefES2_PKcz(ptr noundef nonnull align 8 dereferenceable(104) %.0.i.i289, ptr nonnull @.str.6, i64 93, ptr nonnull @__func__._ZN12lldb_private18process_gdb_remote16ProcessGDBRemote8DoLaunchEPNS_6ModuleERNS_17ProcessLaunchInfoE, i64 8, ptr noundef nonnull @.str.83, ptr noundef nonnull @__func__._ZN12lldb_private18process_gdb_remote16ProcessGDBRemote8DoLaunchEPNS_6ModuleERNS_17ProcessLaunchInfoE, ptr noundef %i.es, ptr noundef %i.ev, ptr noundef nonnull @.str.80) #30
  br label %.critedge133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i169: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #30
  br label %.critedge133

.critedge133:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i169
  br i1 %i.et, label %bb.bx, label %.critedge135

bb.bx:                                            ; preds = %.critedge133
  %i.fd = load ptr, ptr %27, align 8, !tbaa !119  ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171: ; preds = %bb.bx
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !91
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fh) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #30
  br label %.critedge135

.critedge135:                                     ; preds = %.critedge133, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173
  br i1 %i.eq, label %bb.by, label %.critedge129

bb.by:                                            ; preds = %.critedge135
  %i.fi = load ptr, ptr %26, align 8, !tbaa !119  ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.fk = icmp eq ptr %i.fi, %i.fj
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174: ; preds = %bb.by
  %i.fl = load i64, ptr %i.fj, align 8, !tbaa !91
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fm) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176: ; preds = %bb.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #30
  br label %.critedge129

.critedge129:                                     ; preds = %.critedge135, %_ZN4llvm5ErrorD2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, %.critedge128
  %i.fn = call noundef zeroext i1 @_ZNK12lldb_private8FileSpeccvbEv(ptr noundef nonnull align 8 dereferenceable(24) %11) #30
  br i1 %i.fn, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %.critedge129
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 3232
  %i.fp = call noundef i32 @_ZN12lldb_private18process_gdb_remote28GDBRemoteCommunicationClient8SetSTDINERKNS_8FileSpecE(ptr noundef nonnull align 8 dereferenceable(1289) %i.fo, ptr noundef nonnull align 8 dereferenceable(24) %11) #30 ; 0 uses
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %.critedge129
  %i.fq = call noundef zeroext i1 @_ZNK12lldb_private8FileSpeccvbEv(ptr noundef nonnull align 8 dereferenceable(24) %12) #30
  br i1 %i.fq, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 3232
  %i.fs = call noundef i32 @_ZN12lldb_private18process_gdb_remote28GDBRemoteCommunicationClient9SetSTDOUTERKNS_8FileSpecE(ptr noundef nonnull align 8 dereferenceable(1289) %i.fr, ptr noundef nonnull align 8 dereferenceable(24) %12) #30 ; 0 uses
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.ft = call noundef zeroext i1 @_ZNK12lldb_private8FileSpeccvbEv(ptr noundef nonnull align 8 dereferenceable(24) %13) #30
  br i1 %i.ft, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 3232
  %i.fv = call noundef i32 @_ZN12lldb_private18process_gdb_remote28GDBRemoteCommunicationClient9SetSTDERRERKNS_8FileSpecE(ptr noundef nonnull align 8 dereferenceable(1289) %i.fu, ptr noundef nonnull align 8 dereferenceable(24) %13) #30 ; 0 uses
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.fw = and i32 %i.g, 16384
  %.not110 = icmp eq i32 %i.fw, 0
  br i1 %.not110, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 3232
  %i.fy = call noundef i32 @_ZN12lldb_private18process_gdb_remote28GDBRemoteCommunicationClient18SetSTDIOWindowSizeEtt(ptr noundef nonnull align 8 dereferenceable(1289) %i.fx, i16 noundef zeroext 0, i16 noundef zeroext 0) #30 ; 0 uses
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  store i64 0, ptr %7, align 8
  %i.fz = call i32 (i32, i64, ...) @ioctl(i32 noundef 1, i64 noundef 21523, ptr noundef nonnull %7) #30
  %i.ga = icmp eq i32 %i.fz, 0
  %i.gb = getelementptr inbounds nuw i8, ptr %7, i64 2
  %i.gc = load i16, ptr %i.gb, align 2            ; 2 uses
  %i.gd = icmp ne i16 %i.gc, 0
  %or.cond.i = select i1 %i.ga, i1 %i.gd, i1 false ; 2 uses
  %i.ge = load i16, ptr %7, align 8               ; 2 uses
  %i.gf = icmp ne i16 %i.ge, 0
  %or.cond7.i = select i1 %or.cond.i, i1 %i.gf, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %40 = zext i16 %i.ge to i32
  %41 = shl nuw i32 %40, 16
  %42 = zext i16 %i.gc to i32
  %.sroa.0.0.insert.ext.i = select i1 %or.cond7.i, i32 %42, i32 0
  %43 = or disjoint i32 %.sroa.0.0.insert.ext.i, %41
  %.sroa.0.0.insert.insert10.i = select i1 %or.cond.i, i32 %43, i32 0 ; 2 uses
  %.sroa.0245.0.extract.trunc = trunc i32 %.sroa.0.0.insert.insert10.i to i16
  %.sroa.4.0.extract.shift = lshr i32 %.sroa.0.0.insert.insert10.i, 16
  %.sroa.4.0.extract.trunc = trunc nuw i32 %.sroa.4.0.extract.shift to i16
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 3232
  %i.gh = call noundef i32 @_ZN12lldb_private18process_gdb_remote28GDBRemoteCommunicationClient18SetSTDIOWindowSizeEtt(ptr noundef nonnull align 8 dereferenceable(1289) %i.gg, i16 noundef zeroext %.sroa.0245.0.extract.trunc, i16 noundef zeroext %.sroa.4.0.extract.trunc) #30 ; 0 uses
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 3232 ; 13 uses
  %i.gj = and i32 %i.g, 8
  %i.gk = icmp ne i32 %i.gj, 0
  %i.gl = call noundef i32 @_ZN12lldb_private18process_gdb_remote28GDBRemoteCommunicationClient14SetDisableASLREb(ptr noundef nonnull align 8 dereferenceable(1289) %i.gi, i1 noundef zeroext %i.gk) #30 ; 0 uses
  %i.gm = and i32 %i.g, 512
  %i.gn = icmp ne i32 %i.gm, 0
  %i.go = call noundef i32 @_ZN12lldb_private18process_gdb_remote28GDBRemoteCommunicationClient16SetDetachOnErrorEb(ptr noundef nonnull align 8 dereferenceable(1289) %i.gi, i1 noundef zeroext %i.gn) #30 ; 0 uses
  %i.gp = load ptr, ptr %i.ba, align 8, !tbaa !104, !noalias !1421, !nonnull !511, !noundef !511 ; 7 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8 ; 7 uses
  %i.gr = load atomic i32, ptr %i.gq monotonic, align 8, !noalias !1421
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ci, %bb.ch
  %.06.i.i.i.i.i.i177 = phi i32 [ %i.gr, %bb.ch ], [ %i.gv, %bb.ci ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i178 = icmp ne i32 %.06.i.i.i.i.i.i177, 0
  call void @llvm.assume(i1 %.not.not.not.i.not.i.i.i.i.i178)
  %i.gs = add nsw i32 %.06.i.i.i.i.i.i177, 1
  %i.gt = cmpxchg weak ptr %i.gq, i32 %.06.i.i.i.i.i.i177, i32 %i.gs acq_rel monotonic, align 8, !noalias !1421 ; 2 uses
  %i.gu = extractvalue { i32, i1 } %i.gt, 1
  %i.gv = extractvalue { i32, i1 } %i.gt, 0
  br i1 %i.gu, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i179, label %bb.ci, !llvm.loop !8

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i179: ; preds = %bb.ci
  %i.gw = load atomic i32, ptr %i.gq monotonic, align 8, !noalias !1421
  %.not.i.i.i.i180 = icmp eq i32 %i.gw, 0
  br i1 %.not.i.i.i.i180, label %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i181, label %bb.cj

bb.cj:                                            ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i179
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !515, !noalias !1421
  br label %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i181

_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i181: ; preds = %bb.cj, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i179
  %i.gz = phi ptr [ %i.gy, %bb.cj ], [ null, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i179 ]
  %i.ha = load atomic i64, ptr %i.gq acquire, align 8 ; 2 uses
  %i.hb = icmp eq i64 %i.ha, 4294967297
  %i.hc = trunc i64 %i.ha to i32                  ; 2 uses
  br i1 %i.hb, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i181
  store i32 0, ptr %i.gq, align 8, !tbaa !94
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gp, i64 12
  store i32 0, ptr %i.hd, align 4, !tbaa !95
  %i.he = load ptr, ptr %i.gp, align 8, !tbaa !86
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %i.hg = load ptr, ptr %i.hf, align 8
  call void %i.hg(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #30, !inline_history !9
  %i.hh = load ptr, ptr %i.gp, align 8, !tbaa !86
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 24
  %i.hj = load ptr, ptr %i.hi, align 8
  call void %i.hj(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #30, !inline_history !9
  br label %_ZN12lldb_private7Process9GetTargetEv.exit185

bb.cl:                                            ; preds = %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i181
  %i.hk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !91
  %.not.i.i.i1.i182 = icmp eq i8 %i.hk, 0
  br i1 %.not.i.i.i1.i182, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.hl = add nsw i32 %i.hc, -1
  store i32 %i.hl, ptr %i.gq, align 8, !tbaa !92
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i183

bb.cn:                                            ; preds = %bb.cl
  %i.hm = atomicrmw volatile add ptr %i.gq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i183

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i183: ; preds = %bb.cn, %bb.cm
  %.0.i.i.i.i.i184 = phi i32 [ %i.hc, %bb.cm ], [ %i.hm, %bb.cn ]
  %i.hn = icmp eq i32 %.0.i.i.i.i.i184, 1
  br i1 %i.hn, label %bb.co, label %_ZN12lldb_private7Process9GetTargetEv.exit185, !prof !96

bb.co:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i183
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #30
  br label %_ZN12lldb_private7Process9GetTargetEv.exit185

_ZN12lldb_private7Process9GetTargetEv.exit185:    ; preds = %bb.ck, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i183, %bb.co
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gz, i64 760
  %i.hp = call noundef ptr @_ZNK12lldb_private8ArchSpec19GetArchitectureNameEv(ptr noundef nonnull align 8 dereferenceable(96) %i.ho) #30
  %i.hq = call noundef i32 @_ZN12lldb_private18process_gdb_remote28GDBRemoteCommunicationClient20SendLaunchArchPacketEPKc(ptr noundef nonnull align 8 dereferenceable(1289) %i.gi, ptr noundef %i.hp) #30 ; 0 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %3, i64 472
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !119 ; 3 uses
  %.not111 = icmp eq ptr %i.hs, null
  br i1 %.not111, label %bb.cr, label %bb.cp

bb.cp:                                            ; preds = %_ZN12lldb_private7Process9GetTargetEv.exit185
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !91
  %.not112 = icmp eq i8 %i.ht, 0
  br i1 %.not112, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.hu = call noundef i32 @_ZN12lldb_private18process_gdb_remote28GDBRemoteCommunicationClient25SendLaunchEventDataPacketEPKcPb(ptr noundef nonnull align 8 dereferenceable(1289) %i.gi, ptr noundef nonnull %i.hs, ptr noundef null) #30 ; 0 uses
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp, %_ZN12lldb_private7Process9GetTargetEv.exit185
  %i.hv = call noundef zeroext i1 @_ZNK12lldb_private8FileSpeccvbEv(ptr noundef nonnull align 8 dereferenceable(24) %14) #30
  br i1 %i.hv, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.hw = call noundef i32 @_ZN12lldb_private18process_gdb_remote28GDBRemoteCommunicationClient13SetWorkingDirERKNS_8FileSpecE(ptr noundef nonnull align 8 dereferenceable(1289) %i.gi, ptr noundef nonnull align 8 dereferenceable(24) %14) #30 ; 0 uses
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.hx = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.hy = call noundef i32 @_ZN12lldb_private18process_gdb_remote28GDBRemoteCommunicationClient15SendEnvironmentERKNS_11EnvironmentE(ptr noundef nonnull align 8 dereferenceable(1289) %i.gi, ptr noundef nonnull align 8 dereferenceable(20) %i.hx) #30 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #30
  call void @_ZN12lldb_private18process_gdb_remote22GDBRemoteCommunication13ScopedTimeoutC1ERS1_NSt6chrono8durationIlSt5ratioILl1ELl1EEEE(ptr noundef nonnull align 8 dereferenceable(17) %29, ptr noundef nonnull align 8 dereferenceable(212) %i.gi, i64 10) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #30
  %i.hz = getelementptr inbounds nuw i8, ptr %3, i64 56
  call void @_ZN12lldb_private4ArgsC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %30, ptr noundef nonnull align 8 dereferenceable(48) %i.hz) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %31, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !747
  %i.ia = call noundef zeroext i1 @_ZNK12lldb_private8FileSpeccvbEv(ptr noundef nonnull align 8 dereferenceable(24) %31) #30
  br i1 %i.ia, label %bb.cu, label %bb.de

bb.cu:                                            ; preds = %bb.ct
  %i.ib = load ptr, ptr %i.ba, align 8, !tbaa !104, !noalias !1422, !nonnull !511, !noundef !511 ; 7 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 8 ; 7 uses
  %i.id = load atomic i32, ptr %i.ic monotonic, align 8, !noalias !1422
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cv, %bb.cu
  %.06.i.i.i.i.i.i186 = phi i32 [ %i.id, %bb.cu ], [ %i.ih, %bb.cv ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i187 = icmp ne i32 %.06.i.i.i.i.i.i186, 0
  call void @llvm.assume(i1 %.not.not.not.i.not.i.i.i.i.i187)
  %i.ie = add nsw i32 %.06.i.i.i.i.i.i186, 1
  %i.if = cmpxchg weak ptr %i.ic, i32 %.06.i.i.i.i.i.i186, i32 %i.ie acq_rel monotonic, align 8, !noalias !1422 ; 2 uses
  %i.ig = extractvalue { i32, i1 } %i.if, 1
  %i.ih = extractvalue { i32, i1 } %i.if, 0
  br i1 %i.ig, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i188, label %bb.cv, !llvm.loop !8

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i188: ; preds = %bb.cv
  %i.ii = load atomic i32, ptr %i.ic monotonic, align 8, !noalias !1422
  %.not.i.i.i.i189 = icmp eq i32 %i.ii, 0
  br i1 %.not.i.i.i.i189, label %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i190, label %bb.cw

bb.cw:                                            ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i188
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !515, !noalias !1422
  br label %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i190

_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i190: ; preds = %bb.cw, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i188
  %i.il = phi ptr [ %i.ik, %bb.cw ], [ null, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i188 ] ; 2 uses
  %i.im = load atomic i64, ptr %i.ic acquire, align 8 ; 2 uses
  %i.in = icmp eq i64 %i.im, 4294967297
  %i.io = trunc i64 %i.im to i32                  ; 2 uses
  br i1 %i.in, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i190
  store i32 0, ptr %i.ic, align 8, !tbaa !94
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ib, i64 12
  store i32 0, ptr %i.ip, align 4, !tbaa !95
  %i.iq = load ptr, ptr %i.ib, align 8, !tbaa !86
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  %i.is = load ptr, ptr %i.ir, align 8
  call void %i.is(ptr noundef nonnull align 8 dereferenceable(16) %i.ib) #30, !inline_history !9
  %i.it = load ptr, ptr %i.ib, align 8, !tbaa !86
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  %i.iv = load ptr, ptr %i.iu, align 8
  call void %i.iv(ptr noundef nonnull align 8 dereferenceable(16) %i.ib) #30, !inline_history !9
  br label %_ZN12lldb_private7Process9GetTargetEv.exit194

bb.cy:                                            ; preds = %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i190
  %i.iw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !91
  %.not.i.i.i1.i191 = icmp eq i8 %i.iw, 0
  br i1 %.not.i.i.i1.i191, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.ix = add nsw i32 %i.io, -1
  store i32 %i.ix, ptr %i.ic, align 8, !tbaa !92
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i192

bb.da:                                            ; preds = %bb.cy
  %i.iy = atomicrmw volatile add ptr %i.ic, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i192

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i192: ; preds = %bb.da, %bb.cz
  %.0.i.i.i.i.i193 = phi i32 [ %i.io, %bb.cz ], [ %i.iy, %bb.da ]
  %i.iz = icmp eq i32 %.0.i.i.i.i.i193, 1
  br i1 %i.iz, label %bb.db, label %_ZN12lldb_private7Process9GetTargetEv.exit194, !prof !96

bb.db:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i192
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ib) #30
  br label %_ZN12lldb_private7Process9GetTargetEv.exit194

_ZN12lldb_private7Process9GetTargetEv.exit194:    ; preds = %bb.cx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i192, %bb.db
  %i.ja = getelementptr inbounds nuw i8, ptr %i.il, i64 804
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !764
  %.not113 = icmp eq i32 %i.jb, 0
  br i1 %.not113, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %_ZN12lldb_private7Process9GetTargetEv.exit194
  %i.jc = getelementptr inbounds nuw i8, ptr %i.il, i64 760
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #30
end_hunk_0
