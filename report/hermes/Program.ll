inline.NumInlined: 478
inline.NumDeleted: 202
begin_hunk_0_@_ZL7ExecuteRN4llvh3sys11ProcessInfoENS_9StringRefENS_8ArrayRefIS3_EENS_8OptionalIS5_EENS4_INS6_IS3_EEEEjPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !21 ; 3 uses
  %i.eh = icmp ult i64 %i.eg, 16
  call void @llvm.assume(i1 %i.eh)
  %.not21.i = icmp eq ptr %13, %7
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.v, !prof !38

bb.v:                                             ; preds = %bb.u
  switch i64 %i.eg, label %bb.x [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v
  %i.ei = load i8, ptr %i.ec, align 1, !tbaa !16
  store i8 %i.ei, ptr %i.dz, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.x:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dz, ptr align 1 %i.ec, i64 %i.eg, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.x, %bb.w, %bb.v
  %i.ej = load i64, ptr %i.ef, align 8, !tbaa !21 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.ej, ptr %i.ek, align 8, !tbaa !21
  %i.el = load ptr, ptr %7, align 8, !tbaa !31
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ej
  store i8 0, ptr %i.em, align 1, !tbaa !16
  %.pre.i = load ptr, ptr %13, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.en = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.ec, ptr %7, align 8, !tbaa !31
  %i.eo = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ep = load <2 x i64>, ptr %i.eo, align 8, !tbaa !16
  store <2 x i64> %i.ep, ptr %i.en, align 8, !tbaa !16
  br label %bb.z

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.eq = load i64, ptr %i.ea, align 8, !tbaa !16
  store ptr %i.ec, ptr %7, align 8, !tbaa !31
  %i.er = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.et = load <2 x i64>, ptr %i.er, align 8, !tbaa !16
  store <2 x i64> %i.et, ptr %i.es, align 8, !tbaa !16
  %.not.i106 = icmp eq ptr %i.dz, null
  br i1 %.not.i106, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.dz, ptr %13, align 8, !tbaa !31
  store i64 %i.eq, ptr %i.ed, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ed, ptr %13, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.y, %bb.z
  %i.eu = phi ptr [ %i.dz, %bb.y ], [ %i.ed, %bb.z ], [ %i.ec, %bb.u ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.ev = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 0, ptr %i.ev, align 8, !tbaa !21
  store i8 0, ptr %i.eu, align 1, !tbaa !16
  %i.ew = load ptr, ptr %13, align 8, !tbaa !31   ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ey = icmp eq ptr %i.ew, %i.ex
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ez = load i64, ptr %i.ex, align 8, !tbaa !16
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.fa) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107
  %i.fb = load ptr, ptr %17, align 8, !tbaa !31   ; 2 uses
  %i.fc = icmp eq ptr %i.fb, %i.ca
  br i1 %i.fc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fd = load i64, ptr %i.ca, align 8, !tbaa !16
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.fe) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  %i.ff = load ptr, ptr %14, align 8, !tbaa !31   ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.cl
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110
  %i.fh = load i64, ptr %i.cl, align 8, !tbaa !16
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fi) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111
  %i.fj = load ptr, ptr %16, align 8, !tbaa !31   ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.fl = icmp eq ptr %i.fj, %i.fk
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113
  %i.fm = load i64, ptr %i.fk, align 8, !tbaa !16
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fn) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  %i.fo = load ptr, ptr %15, align 8, !tbaa !31   ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.l
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116
  %i.fq = load i64, ptr %i.l, align 8, !tbaa !16
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fr) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.de

_ZNSt6vectorIPKcSaIS1_EED2Ev.exit:                ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  %i.fs = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %18, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(97) %18, i8 0, i64 16, i1 false)
  store ptr %i.ft, ptr %i.fs, align 8, !tbaa !39
  %i.fu = getelementptr inbounds nuw i8, ptr %18, i64 24 ; 2 uses
  store i32 0, ptr %i.fu, align 8, !tbaa !41
  %i.fv = getelementptr inbounds nuw i8, ptr %18, i64 28
  store i32 4, ptr %i.fv, align 4, !tbaa !42
  %i.fw = getelementptr inbounds nuw i8, ptr %18, i64 64 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %18, i64 80 ; 2 uses
  store ptr %i.fx, ptr %i.fw, align 8, !tbaa !39
  %i.fy = getelementptr inbounds nuw i8, ptr %18, i64 72 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %18, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fy, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.fz, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  store ptr %18, ptr %19, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  call fastcc void @_ZL28toNullTerminatedCStringArrayN4llvh8ArrayRefINS_9StringRefEEERNS_11StringSaverE(ptr dead_on_unwind noalias writable align 8 %20, ptr %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(8) %19)
  %i.ga = load ptr, ptr %20, align 8, !tbaa !57   ; 6 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  %i.gd = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ge = load i8, ptr %i.gd, align 8, !tbaa !62, !range !67, !noundef !68
  %i.gf = trunc nuw i8 %i.ge to i1
  br i1 %i.gf, label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit123, label %bb.aa

_ZNSt6vectorIPKcSaIS1_EED2Ev.exit123:             ; preds = %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  %.sroa.030.0.copyload = load ptr, ptr %5, align 8, !tbaa !69
  %.sroa.231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.231.0.copyload = load i64, ptr %.sroa.231.0..sroa_idx, align 8, !tbaa !30
  call fastcc void @_ZL28toNullTerminatedCStringArrayN4llvh8ArrayRefINS_9StringRefEEERNS_11StringSaverE(ptr dead_on_unwind noalias writable align 8 %21, ptr %.sroa.030.0.copyload, i64 %.sroa.231.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %19)
  %i.gg = load ptr, ptr %21, align 8, !tbaa !57
  %i.gh = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  %i.gj = ptrtoint ptr %i.gi to i64
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit123, %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit
  %.sroa.02.0 = phi ptr [ %i.gg, %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit123 ], [ null, %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit ] ; 7 uses
  %.sroa.8.0 = phi i64 [ %i.gj, %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit123 ], [ 0, %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit ]
  %i.gk = icmp eq i32 %6, 0
  br i1 %i.gk, label %bb.ab, label %bb.cl

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  %i.gl = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  store ptr %i.gl, ptr %23, align 16, !tbaa !17
  %i.gm = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 0, ptr %i.gm, align 8, !tbaa !21
  store i8 0, ptr %i.gl, align 16, !tbaa !16
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.gn = getelementptr inbounds nuw i8, ptr %23, i64 48 ; 2 uses
  store ptr %i.gn, ptr %.ptr.1, align 16, !tbaa !17
  %i.go = getelementptr inbounds nuw i8, ptr %23, i64 40
  store i64 0, ptr %i.go, align 8, !tbaa !21
  store i8 0, ptr %i.gn, align 16, !tbaa !16
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %23, i64 64
  %i.gp = getelementptr inbounds nuw i8, ptr %23, i64 80 ; 2 uses
  store ptr %i.gp, ptr %.ptr.2, align 16, !tbaa !17
  %i.gq = getelementptr inbounds nuw i8, ptr %23, i64 72
  store i64 0, ptr %i.gq, align 8, !tbaa !21
  store i8 0, ptr %i.gp, align 16, !tbaa !16
  %i.gr = icmp eq i64 %.8.val, 0
  br i1 %i.gr, label %.critedge, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gs = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 39 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 15 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.gv = load i8, ptr %i.gu, align 8, !tbaa !71, !range !67, !noundef !68
  %i.gw = trunc nuw i8 %i.gv to i1
  br i1 %i.gw, label %bb.ag, label %bb.ar

bb.ad:                                            ; preds = %bb.bp
  %i.gx = load i64, ptr %.sroa.0.0.sroa.phi, align 8, !tbaa !21
  %i.gy = icmp eq i64 %i.gx, 0
  br i1 %i.gy, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gz = load ptr, ptr %.sroa.0.0, align 16, !tbaa !31
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.012.i = phi ptr [ %i.gz, %bb.ae ], [ @.str.18, %bb.ad ]
  %i.ha = call i32 @posix_spawn_file_actions_addopen(ptr noundef nonnull %22, i32 noundef 0, ptr noundef %.012.i, i32 noundef 0, i32 noundef 438) #23 ; 2 uses
  %.not15.not.i = icmp eq i32 %i.ha, 0
  br i1 %.not15.not.i, label %bb.bq, label %._crit_edge.i.i.i125

._crit_edge.i.i.i125:                             ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.hb = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  store ptr %i.hb, ptr %10, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.hb, ptr noundef nonnull align 1 dereferenceable(11) @.str.19, i64 11, i1 false)
  %i.hc = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 11, ptr %i.hc, align 8, !tbaa !21
  %i.hd = getelementptr inbounds nuw i8, ptr %10, i64 27
  store i8 0, ptr %i.hd, align 1, !tbaa !16
  call fastcc void @_ZL10MakeErrMsgPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS4_i(ptr noundef %7, ptr nonnull %i.hb, i64 11, i32 noundef %i.ha)
  %i.he = load ptr, ptr %10, align 8, !tbaa !31   ; 2 uses
  %i.hf = icmp eq ptr %i.he, %i.hb
  br i1 %i.hf, label %_ZN4llvhL13RedirectIO_PSEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiPS5_P26posix_spawn_file_actions_t.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %._crit_edge.i.i.i125
  %i.hg = load i64, ptr %i.hb, align 8, !tbaa !16
  %i.hh = add i64 %i.hg, 1
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hh) #25
  br label %_ZN4llvhL13RedirectIO_PSEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiPS5_P26posix_spawn_file_actions_t.exit

_ZN4llvhL13RedirectIO_PSEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiPS5_P26posix_spawn_file_actions_t.exit: ; preds = %._crit_edge.i.i.i125, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %.critedge81

bb.ag:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !75)
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %i.hi = load ptr, ptr %.0.val, align 8, !tbaa !27, !noalias !81 ; 3 uses
  %.not.i.i = icmp eq ptr %i.hi, null
  br i1 %.not.i.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store ptr %i.gs, ptr %24, align 8, !tbaa !17, !alias.scope !81
  store i64 0, ptr %i.gt, align 8, !tbaa !21, !alias.scope !81
  store i8 0, ptr %i.gs, align 8, !tbaa !16, !alias.scope !81
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit

bb.ai:                                            ; preds = %bb.ag
  %i.hj = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !29, !noalias !81 ; 4 uses
  store ptr %i.gs, ptr %24, align 8, !tbaa !17, !alias.scope !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23, !noalias !81
  store i64 %i.hk, ptr %i.c, align 8, !tbaa !30, !noalias !81
  %i.hl = icmp ugt i64 %i.hk, 15
  br i1 %i.hl, label %bb.aj, label %._crit_edge.i.i.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.hm = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) #23 ; 2 uses
  store ptr %i.hm, ptr %24, align 8, !tbaa !31, !alias.scope !81
  %i.hn = load i64, ptr %i.c, align 8, !tbaa !30, !noalias !81
  store i64 %i.hn, ptr %i.gs, align 8, !tbaa !16, !alias.scope !81
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.aj, %bb.ai
  %i.ho = phi ptr [ %i.hm, %bb.aj ], [ %i.gs, %bb.ai ] ; 2 uses
  switch i64 %i.hk, label %bb.al [
    i64 1, label %bb.ak
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i
  ]

bb.ak:                                            ; preds = %._crit_edge.i.i.i.i
  %i.hp = load i8, ptr %i.hi, align 1, !tbaa !16
  store i8 %i.hp, ptr %i.ho, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i

bb.al:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ho, ptr nonnull align 1 %i.hi, i64 %i.hk, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i: ; preds = %bb.al, %bb.ak, %._crit_edge.i.i.i.i
  %i.hq = load i64, ptr %i.c, align 8, !tbaa !30, !noalias !81 ; 2 uses
  store i64 %i.hq, ptr %i.gt, align 8, !tbaa !21, !alias.scope !81
  %i.hr = load ptr, ptr %24, align 8, !tbaa !31, !alias.scope !81
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 %i.hq
  store i8 0, ptr %i.hs, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23, !noalias !81
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit

_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit: ; preds = %bb.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i
  %i.ht = load ptr, ptr %23, align 16, !tbaa !31  ; 6 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  %i.hv = icmp eq ptr %i.ht, %i.hu
  %i.hw = load ptr, ptr %24, align 8, !tbaa !31   ; 5 uses
  %i.hx = icmp eq ptr %i.hw, %i.gs                ; 2 uses
  %.pre31 = load i64, ptr %i.gt, align 8, !tbaa !21 ; 5 uses
  br i1 %i.hv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i133: ; preds = %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
  br i1 %i.hx, label %bb.am, label %.thread.i134

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i127: ; preds = %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
  br i1 %i.hx, label %bb.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i128

bb.am:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i127, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i133
  %i.hy = icmp ult i64 %.pre31, 16
  call void @llvm.assume(i1 %i.hy)
  switch i64 %.pre31, label %bb.ao [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i131
    i64 1, label %bb.an
  ]

bb.an:                                            ; preds = %bb.am
  %i.hz = load i8, ptr %i.hw, align 1, !tbaa !16
  store i8 %i.hz, ptr %i.ht, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i131

bb.ao:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ht, ptr align 1 %i.hw, i64 %.pre31, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i131: ; preds = %bb.ao, %bb.an, %bb.am
  %i.ia = load i64, ptr %i.gt, align 8, !tbaa !21 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 %i.ia, ptr %i.ib, align 8, !tbaa !21
  %i.ic = load ptr, ptr %23, align 16, !tbaa !31
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.ia
  store i8 0, ptr %i.id, align 1, !tbaa !16
  %.pre.i132 = load ptr, ptr %24, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit135

.thread.i134:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i133
  %i.ie = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr %i.hw, ptr %23, align 16, !tbaa !31
  store i64 %.pre31, ptr %i.ie, align 8, !tbaa !21
  %i.if = load i64, ptr %i.gs, align 8, !tbaa !16
  store i64 %i.if, ptr %i.hu, align 16, !tbaa !16
  br label %bb.aq

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i128: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i127
  %i.ig = load i64, ptr %i.hu, align 16, !tbaa !16
  store ptr %i.hw, ptr %23, align 16, !tbaa !31
  %i.ih = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 %.pre31, ptr %i.ih, align 8, !tbaa !21
  %i.ii = load i64, ptr %i.gs, align 8, !tbaa !16
  store i64 %i.ii, ptr %i.hu, align 16, !tbaa !16
  %.not.i129 = icmp eq ptr %i.ht, null
  br i1 %.not.i129, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i128
  store ptr %i.ht, ptr %24, align 8, !tbaa !31
  store i64 %i.ig, ptr %i.gs, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit135

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i128, %.thread.i134
  store ptr %i.gs, ptr %24, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit135

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit135: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i131, %bb.ap, %bb.aq
  %i.ij = phi ptr [ %i.ht, %bb.ap ], [ %i.gs, %bb.aq ], [ %.pre.i132, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i131 ]
  store i64 0, ptr %i.gt, align 8, !tbaa !21
  store i8 0, ptr %i.ij, align 1, !tbaa !16
  %i.ik = load ptr, ptr %24, align 8, !tbaa !31   ; 2 uses
  %i.il = icmp eq ptr %i.ik, %i.gs
  br i1 %i.il, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit135
  %i.im = load i64, ptr %i.gs, align 8, !tbaa !16
  %i.in = add i64 %i.im, 1
  call void @_ZdlPvm(ptr noundef %i.ik, i64 noundef %i.in) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit135, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138
  %.sroa.0.0.sroa.phi = phi ptr [ %.sroa.0.0.sroa.gep, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138 ], [ inttoptr (i64 8 to ptr), %bb.ac ]
  %.sroa.0.0 = phi ptr [ %23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138 ], [ null, %bb.ac ] ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.0.val, i64 40
  %i.ip = load i8, ptr %i.io, align 8, !tbaa !71, !range !67, !noundef !68
  %i.iq = trunc nuw i8 %i.ip to i1
  br i1 %i.iq, label %bb.as, label %bb.bd

bb.as:                                            ; preds = %bb.ar
  %i.ir = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !82)
end_hunk_0
begin_hunk_1_@_ZL7ExecuteRN4llvh3sys11ProcessInfoENS_9StringRefENS_8ArrayRefIS3_EENS_8OptionalIS5_EENS4_INS6_IS3_EEEEjPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.nd = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 0, ptr %i.nd, align 8, !tbaa !21, !alias.scope !93
  store i8 0, ptr %i.nc, align 8, !tbaa !16, !alias.scope !93
  br label %_ZNK4llvh9StringRef3strB5cxx11Ev.exit165

bb.cd:                                            ; preds = %.critedge
  %i.ne = load i64, ptr %i.g, align 8, !tbaa !29, !noalias !93 ; 4 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 3 uses
  store ptr %i.nf, ptr %27, align 8, !tbaa !17, !alias.scope !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23, !noalias !93
  store i64 %i.ne, ptr %i.b, align 8, !tbaa !30, !noalias !93
  %i.ng = icmp ugt i64 %i.ne, 15
  br i1 %i.ng, label %bb.ce, label %._crit_edge.i.i.i163

bb.ce:                                            ; preds = %bb.cd
  %i.nh = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #23 ; 2 uses
  store ptr %i.nh, ptr %27, align 8, !tbaa !31, !alias.scope !93
  %i.ni = load i64, ptr %i.b, align 8, !tbaa !30, !noalias !93
  store i64 %i.ni, ptr %i.nf, align 8, !tbaa !16, !alias.scope !93
  br label %._crit_edge.i.i.i163

._crit_edge.i.i.i163:                             ; preds = %bb.ce, %bb.cd
  %i.nj = phi ptr [ %i.nh, %bb.ce ], [ %i.nf, %bb.cd ] ; 2 uses
  switch i64 %i.ne, label %bb.cg [
    i64 1, label %bb.cf
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i164
  ]

bb.cf:                                            ; preds = %._crit_edge.i.i.i163
  %i.nk = load i8, ptr %i.nb, align 1, !tbaa !16
  store i8 %i.nk, ptr %i.nj, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i164

bb.cg:                                            ; preds = %._crit_edge.i.i.i163
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nj, ptr nonnull align 1 %i.nb, i64 %i.ne, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i164

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i164: ; preds = %bb.cg, %bb.cf, %._crit_edge.i.i.i163
  %i.nl = load i64, ptr %i.b, align 8, !tbaa !30, !noalias !93 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 %i.nl, ptr %i.nm, align 8, !tbaa !21, !alias.scope !93
  %i.nn = load ptr, ptr %27, align 8, !tbaa !31, !alias.scope !93
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 %i.nl
  store i8 0, ptr %i.no, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23, !noalias !93
  %.pre32 = load ptr, ptr %27, align 8, !tbaa !31
  br label %_ZNK4llvh9StringRef3strB5cxx11Ev.exit165

_ZNK4llvh9StringRef3strB5cxx11Ev.exit165:         ; preds = %bb.cc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i164
  %i.np = phi ptr [ %i.nc, %bb.cc ], [ %.pre32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i164 ]
  %i.nq = call i32 @posix_spawn(ptr noundef nonnull %i.f, ptr noundef %i.np, ptr noundef %.065, ptr noundef null, ptr noundef %i.ga, ptr noundef %spec.select) #23 ; 2 uses
  %i.nr = load ptr, ptr %27, align 8, !tbaa !31   ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.nt = icmp eq ptr %i.nr, %i.ns
  br i1 %i.nt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166: ; preds = %_ZNK4llvh9StringRef3strB5cxx11Ev.exit165
  %i.nu = load i64, ptr %i.ns, align 8, !tbaa !16
  %i.nv = add i64 %i.nu, 1
  call void @_ZdlPvm(ptr noundef %i.nr, i64 noundef %i.nv) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168: ; preds = %_ZNK4llvh9StringRef3strB5cxx11Ev.exit165, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  %.not77 = icmp eq ptr %.065, null
  br i1 %.not77, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168
  %i.nw = call i32 @posix_spawn_file_actions_destroy(ptr noundef nonnull %.065) #23 ; 0 uses
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168
  %.not78 = icmp eq i32 %i.nq, 0                  ; 2 uses
  br i1 %.not78, label %bb.cj, label %._crit_edge.i.i169

._crit_edge.i.i169:                               ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23
  %i.nx = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 4 uses
  store ptr %i.nx, ptr %28, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 18, ptr %i.a, align 8, !tbaa !30
  %i.ny = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #23 ; 2 uses
  store ptr %i.ny, ptr %28, align 8, !tbaa !31
  %i.nz = load i64, ptr %i.a, align 8, !tbaa !30  ; 3 uses
  store i64 %i.nz, ptr %i.nx, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.ny, ptr noundef nonnull align 1 dereferenceable(18) @.str.12, i64 18, i1 false)
  %i.oa = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  store i64 %i.nz, ptr %i.oa, align 8, !tbaa !21
  %i.ob = load ptr, ptr %28, align 8, !tbaa !31
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 %i.nz
  store i8 0, ptr %i.oc, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %.val88 = load ptr, ptr %28, align 8
  %.val89 = load i64, ptr %i.oa, align 8
  call fastcc void @_ZL10MakeErrMsgPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS4_i(ptr noundef %7, ptr %.val88, i64 %.val89, i32 noundef %i.nq)
  %i.od = load ptr, ptr %28, align 8, !tbaa !31   ; 2 uses
  %i.oe = icmp eq ptr %i.od, %i.nx
  br i1 %i.oe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171: ; preds = %._crit_edge.i.i169
  %i.of = load i64, ptr %i.nx, align 8, !tbaa !16
  %i.og = add i64 %i.of, 1
  call void @_ZdlPvm(ptr noundef %i.od, i64 noundef %i.og) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173: ; preds = %._crit_edge.i.i169, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.oh = load i32, ptr %i.f, align 4, !tbaa !3   ; 2 uses
  store i32 %i.oh, ptr %0, align 4, !tbaa !7
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.oh, ptr %i.oi, align 4, !tbaa !96
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  br label %.critedge81

.critedge81:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, %_ZN4llvhL13RedirectIO_PSEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiPS5_P26posix_spawn_file_actions_t.exit, %_ZN4llvhL13RedirectIO_PSEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiPS5_P26posix_spawn_file_actions_t.exit148, %_ZN4llvhL13RedirectIO_PSEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiPS5_P26posix_spawn_file_actions_t.exit158, %bb.ck
  %.4 = phi i1 [ %.not78, %bb.ck ], [ false, %_ZN4llvhL13RedirectIO_PSEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiPS5_P26posix_spawn_file_actions_t.exit158 ], [ false, %_ZN4llvhL13RedirectIO_PSEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiPS5_P26posix_spawn_file_actions_t.exit148 ], [ false, %_ZN4llvhL13RedirectIO_PSEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiPS5_P26posix_spawn_file_actions_t.exit ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161 ]
  %i.oj = getelementptr inbounds nuw i8, ptr %23, i64 64
  %i.ok = load ptr, ptr %i.oj, align 16, !tbaa !31 ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %23, i64 80 ; 2 uses
  %i.om = icmp eq ptr %i.ok, %i.ol
  br i1 %i.om, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174: ; preds = %.critedge81
  %i.on = load i64, ptr %i.ol, align 16, !tbaa !16
  %i.oo = add i64 %i.on, 1
  call void @_ZdlPvm(ptr noundef %i.ok, i64 noundef %i.oo) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176: ; preds = %.critedge81, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174
  %i.op = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.oq = load ptr, ptr %i.op, align 16, !tbaa !31 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %23, i64 48 ; 2 uses
  %i.os = icmp eq ptr %i.oq, %i.or
  br i1 %i.os, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176
  %i.ot = load i64, ptr %i.or, align 16, !tbaa !16
  %i.ou = add i64 %i.ot, 1
  call void @_ZdlPvm(ptr noundef %i.oq, i64 noundef %i.ou) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174.1
  %i.ov = load ptr, ptr %23, align 16, !tbaa !31  ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.ox = icmp eq ptr %i.ov, %i.ow
  br i1 %i.ox, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176.1
  %i.oy = load i64, ptr %i.ow, align 16, !tbaa !16
  %i.oz = add i64 %i.oy, 1
  call void @_ZdlPvm(ptr noundef %i.ov, i64 noundef %i.oz) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174.2
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  br label %bb.cz

bb.cl:                                            ; preds = %bb.aa
  %i.pa = call i32 @fork() #23                    ; 3 uses
  switch i32 %i.pa, label %bb.cy [
    i32 -1, label %._crit_edge.i.i177
    i32 0, label %bb.cm
  ]

._crit_edge.i.i177:                               ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #23
  %i.pb = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 5 uses
  store ptr %i.pb, ptr %29, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.pb, ptr noundef nonnull align 1 dereferenceable(13) @.str.13, i64 13, i1 false)
  %i.pc = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 13, ptr %i.pc, align 8, !tbaa !21
  %i.pd = getelementptr inbounds nuw i8, ptr %29, i64 29
  store i8 0, ptr %i.pd, align 1, !tbaa !16
  call fastcc void @_ZL10MakeErrMsgPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS4_i(ptr noundef %7, ptr nonnull %i.pb, i64 13, i32 noundef -1)
  %i.pe = load ptr, ptr %29, align 8, !tbaa !31   ; 2 uses
  %i.pf = icmp eq ptr %i.pe, %i.pb
  br i1 %i.pf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179: ; preds = %._crit_edge.i.i177
  %i.pg = load i64, ptr %i.pb, align 8, !tbaa !16
  %i.ph = add i64 %i.pg, 1
  call void @_ZdlPvm(ptr noundef %i.pe, i64 noundef %i.ph) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181: ; preds = %._crit_edge.i.i177, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  br label %bb.cz

bb.cm:                                            ; preds = %bb.cl
  %i.pi = icmp eq i64 %.8.val, 0
  br i1 %i.pi, label %bb.cu, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.pj = call fastcc noundef zeroext i1 @_ZN4llvhL10RedirectIOENS_8OptionalINS_9StringRefEEEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull byval(%"class.llvh::Optional.32") align 8 %.0.val, i32 noundef 0, ptr noundef %7)
  br i1 %i.pj, label %bb.cz, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.pk = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 2 uses
  %i.pl = call fastcc noundef zeroext i1 @_ZN4llvhL10RedirectIOENS_8OptionalINS_9StringRefEEEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull byval(%"class.llvh::Optional.32") align 8 %i.pk, i32 noundef 1, ptr noundef %7)
  br i1 %i.pl, label %bb.cz, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.pm = getelementptr inbounds nuw i8, ptr %.0.val, i64 40
  %i.pn = load i8, ptr %i.pm, align 8, !tbaa !71, !range !67, !noundef !68
  %i.po = trunc nuw i8 %i.pn to i1
  br i1 %i.po, label %bb.cq, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

bb.cq:                                            ; preds = %bb.cp
  %i.pp = getelementptr inbounds nuw i8, ptr %.0.val, i64 64
  %i.pq = load i8, ptr %i.pp, align 8, !tbaa !71, !range !67, !noundef !68
  %i.pr = trunc nuw i8 %i.pq to i1
  br i1 %i.pr, label %bb.cr, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

bb.cr:                                            ; preds = %bb.cq
  %i.ps = getelementptr inbounds nuw i8, ptr %.0.val, i64 48
  %.sroa.02.0.copyload = load ptr, ptr %i.pk, align 8, !tbaa !92
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %.sroa.23.0.copyload = load i64, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !30 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.ps, align 8, !tbaa !92
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.val, i64 56
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !30
  %i.pt = icmp eq i64 %.sroa.23.0.copyload, %.sroa.2.0.copyload
  br i1 %i.pt, label %bb.cs, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

bb.cs:                                            ; preds = %bb.cr
  %i.pu = icmp eq i64 %.sroa.23.0.copyload, 0
  br i1 %i.pu, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread22, label %_ZNK4llvh9StringRef6equalsES0_.exit

_ZNK4llvh9StringRef6equalsES0_.exit:              ; preds = %bb.cs
  %bcmp = call i32 @bcmp(ptr %.sroa.02.0.copyload, ptr %.sroa.0.0.copyload, i64 %.sroa.23.0.copyload)
  %i.pv = icmp eq i32 %bcmp, 0
  br i1 %i.pv, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread22, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

_ZNK4llvh9StringRef6equalsES0_.exit.thread22:     ; preds = %bb.cs, %_ZNK4llvh9StringRef6equalsES0_.exit
  %i.pw = call i32 @dup2(i32 noundef 1, i32 noundef 2) #23
  %i.px = icmp eq i32 %i.pw, -1
  br i1 %i.px, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread22
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %31)
  %.val = load ptr, ptr %30, align 8
  %i.py = getelementptr inbounds nuw i8, ptr %30, i64 8
  %.val85 = load i64, ptr %i.py, align 8
  call fastcc void @_ZL10MakeErrMsgPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS4_i(ptr noundef %7, ptr %.val, i64 %.val85, i32 noundef -1)
  %i.pz = load ptr, ptr %30, align 8, !tbaa !31   ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.qb = icmp eq ptr %i.pz, %i.qa
  br i1 %i.qb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182: ; preds = %bb.ct
  %i.qc = load i64, ptr %i.qa, align 8, !tbaa !16
  %i.qd = add i64 %i.qc, 1
  call void @_ZdlPvm(ptr noundef %i.pz, i64 noundef %i.qd) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184: ; preds = %bb.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  br label %bb.cz

_ZNK4llvh9StringRef6equalsES0_.exit.thread:       ; preds = %bb.cr, %_ZNK4llvh9StringRef6equalsES0_.exit, %bb.cq, %bb.cp
  %i.qe = getelementptr inbounds nuw i8, ptr %.0.val, i64 48
  %i.qf = call fastcc noundef zeroext i1 @_ZN4llvhL10RedirectIOENS_8OptionalINS_9StringRefEEEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull byval(%"class.llvh::Optional.32") align 8 %i.qe, i32 noundef 2, ptr noundef %7)
  br i1 %i.qf, label %bb.cz, label %bb.cu

bb.cu:                                            ; preds = %bb.cm, %_ZNK4llvh9StringRef6equalsES0_.exit.thread, %_ZNK4llvh9StringRef6equalsES0_.exit.thread22
  call fastcc void @_ZN4llvhL15SetMemoryLimitsEj(i32 noundef %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #23
  call void @_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %32, ptr noundef nonnull align 8 dereferenceable(16) %11)
  %.not = icmp eq ptr %.sroa.02.0, null
  %i.qg = load ptr, ptr %32, align 8, !tbaa !31   ; 2 uses
  br i1 %.not, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.qh = call i32 @execve(ptr noundef %i.qg, ptr noundef %i.ga, ptr noundef nonnull %.sroa.02.0) #23 ; 0 uses
  br label %bb.cx

bb.cw:                                            ; preds = %bb.cu
  %i.qi = call i32 @execv(ptr noundef %i.qg, ptr noundef %i.ga) #23 ; 0 uses
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %i.qj = tail call ptr @__errno_location() #26
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !3
  %i.ql = icmp eq i32 %i.qk, 2
  %i.qm = select i1 %i.ql, i32 127, i32 126
  call void @_exit(i32 noundef %i.qm) #24
  unreachable

bb.cy:                                            ; preds = %bb.cl
  store i32 %i.pa, ptr %0, align 4, !tbaa !7
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.pa, ptr %i.qn, align 4, !tbaa !96
  br label %bb.cz

bb.cz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184, %bb.cy, %bb.cn, %bb.co, %_ZNK4llvh9StringRef6equalsES0_.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176.2
  %.6 = phi i1 [ %.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176.2 ], [ true, %bb.cy ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181 ], [ false, %bb.co ], [ false, %bb.cn ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184 ], [ false, %_ZNK4llvh9StringRef6equalsES0_.exit.thread ]
  %.not.i.i.i185 = icmp eq ptr %.sroa.02.0, null
  br i1 %.not.i.i.i185, label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit186, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.qo = ptrtoint ptr %.sroa.02.0 to i64
  %i.qp = sub i64 %.sroa.8.0, %i.qo
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.02.0, i64 noundef %i.qp) #25
  br label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit186

_ZNSt6vectorIPKcSaIS1_EED2Ev.exit186:             ; preds = %bb.cz, %bb.da
  %.not.i.i.i187 = icmp eq ptr %i.ga, null
  br i1 %.not.i.i.i187, label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit188, label %bb.db

bb.db:                                            ; preds = %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit186
  %i.qq = ptrtoint ptr %i.gc to i64
  %i.qr = ptrtoint ptr %i.ga to i64
  %i.qs = sub i64 %i.qq, %i.qr
  call void @_ZdlPvm(ptr noundef nonnull %i.ga, i64 noundef %i.qs) #25
  br label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit188

_ZNSt6vectorIPKcSaIS1_EED2Ev.exit188:             ; preds = %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit186, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  %i.qt = load ptr, ptr %i.fs, align 8, !tbaa !39 ; 2 uses
  %i.qu = load i32, ptr %i.fu, align 8, !tbaa !41 ; 2 uses
  %i.qv = zext i32 %i.qu to i64
  %.idx.i = shl nuw nsw i64 %i.qv, 3
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qt, i64 %.idx.i
  %.not6.i.i = icmp eq i32 %i.qu, 0
  br i1 %.not6.i.i, label %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE15DeallocateSlabsEPPvS4_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit188, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %i.qy, %.lr.ph.i.i ], [ %i.qt, %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit188 ] ; 2 uses
  %i.qx = load ptr, ptr %.07.i.i, align 8, !tbaa !97
  call void @free(ptr noundef %i.qx) #23
  %i.qy = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %.not.i.i189 = icmp eq ptr %i.qy, %i.qw
  br i1 %.not.i.i189, label %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE15DeallocateSlabsEPPvS4_.exit.i, label %.lr.ph.i.i, !llvm.loop !98

_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE15DeallocateSlabsEPPvS4_.exit.i: ; preds = %.lr.ph.i.i, %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit188
  %i.qz = load ptr, ptr %i.fw, align 8, !tbaa !39 ; 3 uses
  %i.ra = load i32, ptr %i.fy, align 8, !tbaa !41 ; 2 uses
  %i.rb = zext i32 %i.ra to i64
  %.idx.i.i = shl nuw nsw i64 %i.rb, 4
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qz, i64 %.idx.i.i
  %.not10.i.i = icmp eq i32 %i.ra, 0
  br i1 %.not10.i.i, label %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE26DeallocateCustomSizedSlabsEv.exit.i, label %.lr.ph.i1.i

.lr.ph.i1.i:                                      ; preds = %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE15DeallocateSlabsEPPvS4_.exit.i, %.lr.ph.i1.i
  %.011.i.i = phi ptr [ %i.re, %.lr.ph.i1.i ], [ %i.qz, %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE15DeallocateSlabsEPPvS4_.exit.i ] ; 2 uses
  %i.rd = load ptr, ptr %.011.i.i, align 8, !tbaa !100
  call void @free(ptr noundef %i.rd) #23
  %i.re = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 16 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.re, %i.rc
  br i1 %.not.i2.i, label %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE26DeallocateCustomSizedSlabsEv.exit.loopexit.i, label %.lr.ph.i1.i

_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE26DeallocateCustomSizedSlabsEv.exit.loopexit.i: ; preds = %.lr.ph.i1.i
  %.pre.i190 = load ptr, ptr %i.fw, align 8, !tbaa !39
  br label %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE26DeallocateCustomSizedSlabsEv.exit.i

_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE26DeallocateCustomSizedSlabsEv.exit.i: ; preds = %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE26DeallocateCustomSizedSlabsEv.exit.loopexit.i, %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE15DeallocateSlabsEPPvS4_.exit.i
  %i.rf = phi ptr [ %.pre.i190, %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE26DeallocateCustomSizedSlabsEv.exit.loopexit.i ], [ %i.qz, %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE15DeallocateSlabsEPPvS4_.exit.i ] ; 2 uses
  %i.rg = icmp eq ptr %i.rf, %i.fx
  br i1 %i.rg, label %_ZN4llvh11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i, label %bb.dc

bb.dc:                                            ; preds = %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE26DeallocateCustomSizedSlabsEv.exit.i
  call void @free(ptr noundef %i.rf) #23
  br label %_ZN4llvh11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i

_ZN4llvh11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i: ; preds = %bb.dc, %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE26DeallocateCustomSizedSlabsEv.exit.i
  %i.rh = load ptr, ptr %i.fs, align 8, !tbaa !39 ; 2 uses
  %i.ri = icmp eq ptr %i.rh, %i.ft
  br i1 %i.ri, label %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EED2Ev.exit, label %bb.dd

bb.dd:                                            ; preds = %_ZN4llvh11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i
  call void @free(ptr noundef %i.rh) #23
  br label %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EED2Ev.exit

_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EED2Ev.exit: ; preds = %_ZN4llvh11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br label %bb.de

bb.de:                                            ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EED2Ev.exit
  %.7 = phi i1 [ %.6, %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EED2Ev.exit ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119 ], [ false, %bb.b ]
  ret i1 %.7
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i32 } @_ZN4llvh3sys4WaitERKNS0_11ProcessInfoEjbPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
end_hunk_1
