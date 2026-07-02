inline.NumInlined: 534
inline.NumDeleted: 302
begin_hunk_0_@_ZN12v8_inspector12_GLOBAL__N_116findMagicCommentERKNS_8String16ES3_b:bb.a
    i64 0, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit.i.i
    i64 1, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z
  %i.dt = load i16, ptr %i.dn, align 2
  store i16 %i.dt, ptr %i.dk, align 2
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit.i.i

bb.ab:                                            ; preds = %bb.z
  %i.du = shl nuw nsw i64 %i.dr, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.dk, ptr align 2 %i.dn, i64 %i.du, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit.i.i

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit.i.i: ; preds = %bb.ab, %bb.aa, %bb.z
  %i.dv = load i64, ptr %i.dq, align 8            ; 2 uses
  store i64 %i.dv, ptr %i.ce, align 8
  %i.dw = load ptr, ptr %4, align 8
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %i.dw, i64 %i.dv
  store i16 0, ptr %i.dx, align 2
  %.pre.i.i = load ptr, ptr %6, align 8
  br label %_ZN12v8_inspector8String16aSEOS0_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i
  store ptr %i.dn, ptr %4, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dz = load <2 x i64>, ptr %i.dy, align 8
  store <2 x i64> %i.dz, ptr %i.ce, align 8
  br label %bb.ad

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i.i
  %i.ea = load i64, ptr %i.dl, align 8
  store ptr %i.dn, ptr %4, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ec = load <2 x i64>, ptr %i.eb, align 8
  store <2 x i64> %i.ec, ptr %i.ce, align 8
  %.not.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.dk, ptr %6, align 8
  store i64 %i.ea, ptr %i.do, align 8
  br label %_ZN12v8_inspector8String16aSEOS0_.exit

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.do, ptr %6, align 8
  br label %_ZN12v8_inspector8String16aSEOS0_.exit

_ZN12v8_inspector8String16aSEOS0_.exit:           ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit.i.i, %bb.ac, %bb.ad
  %i.ed = phi ptr [ %i.dk, %bb.ac ], [ %i.do, %bb.ad ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit.i.i ]
  %i.ee = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.ee, align 8
  store i16 0, ptr %i.ed, align 2
  %i.ef = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.eg = load i64, ptr %i.ef, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %i.eg, ptr %i.eh, align 8
  %i.ei = load ptr, ptr %6, align 8               ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ek = icmp eq ptr %i.ei, %i.ej
  br i1 %i.ek, label %_ZN12v8_inspector8String16D2Ev.exit117, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i115

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i115: ; preds = %_ZN12v8_inspector8String16aSEOS0_.exit
  %i.el = load i64, ptr %i.ej, align 8
  %i.em = shl i64 %i.el, 1
  %i.en = add i64 %i.em, 2
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.en) #13
  br label %_ZN12v8_inspector8String16D2Ev.exit117

_ZN12v8_inspector8String16D2Ev.exit117:           ; preds = %_ZN12v8_inspector8String16aSEOS0_.exit, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i115
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN12v8_inspector8String16D2Ev.exit117, %_ZN12v8_inspector8String16D2Ev.exit114
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @_ZNK12v8_inspector8String1615stripWhiteSpaceEv(ptr dead_on_unwind nonnull writable sret(%"class.v8_inspector::String16") align 8 %7, ptr noundef nonnull align 8 dereferenceable(40) %4) #10
  %i.eo = load ptr, ptr %4, align 8               ; 6 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.eq = icmp eq ptr %i.eo, %i.ep
  %i.er = load ptr, ptr %7, align 8               ; 5 uses
  %i.es = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.et = icmp eq ptr %i.er, %i.es                ; 2 uses
  br i1 %i.eq, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i123, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i.i118

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i123: ; preds = %bb.ae
  br i1 %i.et, label %bb.af, label %.thread.i.i124

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i.i118: ; preds = %bb.ae
  br i1 %i.et, label %bb.af, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit23.thread25.i.i119

bb.af:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i.i118, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i123
  %i.eu = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ev = load i64, ptr %i.eu, align 8            ; 3 uses
  %i.ew = icmp ult i64 %i.ev, 8
  call void @llvm.assume(i1 %i.ew)
  switch i64 %i.ev, label %bb.ah [
    i64 0, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit.i.i121
    i64 1, label %bb.ag
  ]

bb.ag:                                            ; preds = %bb.af
  %i.ex = load i16, ptr %i.er, align 2
  store i16 %i.ex, ptr %i.eo, align 2
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit.i.i121

bb.ah:                                            ; preds = %bb.af
  %i.ey = shl nuw nsw i64 %i.ev, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.eo, ptr align 2 %i.er, i64 %i.ey, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit.i.i121

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit.i.i121: ; preds = %bb.ah, %bb.ag, %bb.af
  %i.ez = load i64, ptr %i.eu, align 8            ; 2 uses
  store i64 %i.ez, ptr %i.ce, align 8
  %i.fa = load ptr, ptr %4, align 8
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.fa, i64 %i.ez
  store i16 0, ptr %i.fb, align 2
  %.pre.i.i122 = load ptr, ptr %7, align 8
  br label %_ZN12v8_inspector8String16aSEOS0_.exit125

.thread.i.i124:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i123
  store ptr %i.er, ptr %4, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fd = load <2 x i64>, ptr %i.fc, align 8
  store <2 x i64> %i.fd, ptr %i.ce, align 8
  br label %bb.aj

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit23.thread25.i.i119: ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i.i118
  %i.fe = load i64, ptr %i.ep, align 8
  store ptr %i.er, ptr %4, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fg = load <2 x i64>, ptr %i.ff, align 8
  store <2 x i64> %i.fg, ptr %i.ce, align 8
  %.not.i.i120 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i120, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit23.thread25.i.i119
  store ptr %i.eo, ptr %7, align 8
  store i64 %i.fe, ptr %i.es, align 8
  br label %_ZN12v8_inspector8String16aSEOS0_.exit125

bb.aj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit23.thread25.i.i119, %.thread.i.i124
  store ptr %i.es, ptr %7, align 8
  br label %_ZN12v8_inspector8String16aSEOS0_.exit125

_ZN12v8_inspector8String16aSEOS0_.exit125:        ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit.i.i121, %bb.ai, %bb.aj
  %i.fh = phi ptr [ %i.eo, %bb.ai ], [ %i.es, %bb.aj ], [ %.pre.i.i122, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit.i.i121 ]
  %i.fi = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.fi, align 8
  store i16 0, ptr %i.fh, align 2
  %i.fj = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.fk = load i64, ptr %i.fj, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store i64 %i.fk, ptr %i.fl, align 8
  %i.fm = load ptr, ptr %7, align 8               ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %_ZN12v8_inspector8String16D2Ev.exit128, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i126

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i126: ; preds = %_ZN12v8_inspector8String16aSEOS0_.exit125
  %i.fp = load i64, ptr %i.fn, align 8
  %i.fq = shl i64 %i.fp, 1
  %i.fr = add i64 %i.fq, 2
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fr) #13
  br label %_ZN12v8_inspector8String16D2Ev.exit128

_ZN12v8_inspector8String16D2Ev.exit128:           ; preds = %_ZN12v8_inspector8String16aSEOS0_.exit125, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i126
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  %i.fs = load i64, ptr %i.ce, align 8            ; 2 uses
  %.not8417.not = icmp eq i64 %i.fs, 0
  %.pre30 = load ptr, ptr %4, align 8             ; 2 uses
  br i1 %.not8417.not, label %.critedge, label %.lr.ph19

.lr.ph19:                                         ; preds = %_ZN12v8_inspector8String16D2Ev.exit128, %bb.al
  %i.ft = phi i64 [ %i.fx, %bb.al ], [ %i.fs, %_ZN12v8_inspector8String16D2Ev.exit128 ]
  %i.fu = phi ptr [ %i.fy, %bb.al ], [ %.pre30, %_ZN12v8_inspector8String16D2Ev.exit128 ] ; 2 uses
  %.06618 = phi i64 [ %i.fz, %bb.al ], [ 0, %_ZN12v8_inspector8String16D2Ev.exit128 ] ; 2 uses
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %i.fu, i64 %.06618
  %i.fw = load i16, ptr %i.fv, align 2            ; 2 uses
  switch i16 %i.fw, label %bb.al [
    i16 39, label %bb.ak
    i16 34, label %bb.ak
    i16 32, label %bb.ak
    i16 9, label %bb.ak
  ]

bb.ak:                                            ; preds = %.lr.ph19, %.lr.ph19, %.lr.ph19, %.lr.ph19
  call void @_ZN12v8_inspector8String16C1EPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.12) #10
  %.pre = load ptr, ptr %4, align 8               ; 3 uses
  switch i16 %i.fw, label %._crit_edge [
    i16 39, label %.loopexit
    i16 34, label %.loopexit
    i16 32, label %.loopexit
    i16 9, label %.loopexit
  ]

._crit_edge:                                      ; preds = %bb.ak
  %.pre29 = load i64, ptr %i.ce, align 8
  br label %bb.al

bb.al:                                            ; preds = %._crit_edge, %.lr.ph19
  %i.fx = phi i64 [ %i.ft, %.lr.ph19 ], [ %.pre29, %._crit_edge ] ; 3 uses
  %i.fy = phi ptr [ %i.fu, %.lr.ph19 ], [ %.pre, %._crit_edge ] ; 2 uses
  %i.fz = add nuw i64 %.06618, 1                  ; 2 uses
  %.not84 = icmp ult i64 %i.fz, %i.fx
  br i1 %.not84, label %.lr.ph19, label %.critedge, !llvm.loop !47

.critedge:                                        ; preds = %bb.al, %_ZN12v8_inspector8String16D2Ev.exit128
  %i.ga = phi i64 [ 0, %_ZN12v8_inspector8String16D2Ev.exit128 ], [ %i.fx, %bb.al ] ; 3 uses
  %i.gb = phi ptr [ %.pre30, %_ZN12v8_inspector8String16D2Ev.exit128 ], [ %i.fy, %bb.al ] ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.gc, ptr %0, align 8
  %i.gd = icmp eq ptr %i.gb, %i.ep
  br i1 %i.gd, label %bb.am, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i129

bb.am:                                            ; preds = %.critedge
  %i.ge = icmp ult i64 %i.ga, 8
  call void @llvm.assume(i1 %i.ge)
  %i.gf = shl nuw nsw i64 %i.ga, 1
  %i.gg = add nuw nsw i64 %i.gf, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gc, ptr noundef nonnull align 8 dereferenceable(1) %i.ep, i64 %i.gg, i1 false)
  br label %.loopexit.thread

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i129: ; preds = %.critedge
  store ptr %i.gb, ptr %0, align 8
  %i.gh = load i64, ptr %i.ep, align 8
  store i64 %i.gh, ptr %i.gc, align 8
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i129, %bb.am
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ga, ptr %i.gi, align 8
  store i64 0, ptr %i.ce, align 8
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gk = load i64, ptr %i.fl, align 8
  store i64 %i.gk, ptr %i.gj, align 8
  br label %_ZN12v8_inspector8String16D2Ev.exit132

.loopexit:                                        ; preds = %bb.ak, %bb.ak, %bb.ak, %bb.ak
  %i.gl = icmp eq ptr %.pre, %i.ep
  br i1 %i.gl, label %_ZN12v8_inspector8String16D2Ev.exit132, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i130

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i130: ; preds = %.loopexit
  %i.gm = load i64, ptr %i.ep, align 8
  %i.gn = shl i64 %i.gm, 1
  %i.go = add i64 %i.gn, 2
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.go) #13
  br label %_ZN12v8_inspector8String16D2Ev.exit132

_ZN12v8_inspector8String16D2Ev.exit132:           ; preds = %.loopexit, %.loopexit.thread, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i130
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.an

bb.an:                                            ; preds = %_ZN12v8_inspector8String16D2Ev.exit132, %bb.q, %.split.us, %_ZNK12v8_inspector8String1611reverseFindERKS0_m.exit.thread
  ret void
}

declare void @_ZN12v8_inspector8String16C1EPKc(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN12v8_inspector16findSourceMapURLERKNS_8String16Eb(ptr dead_on_unwind noalias writable sret(%"class.v8_inspector::String16") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.v8_inspector::String16", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @_ZN12v8_inspector8String16C1EPKc(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull @.str.1) #10
  %.val = load ptr, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val1 = load i64, ptr %i.a, align 8
  call fastcc void @_ZN12v8_inspector12_GLOBAL__N_116findMagicCommentERKNS_8String16ES3_b(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr %.val, i64 %.val1, i1 noundef zeroext %2)
  %i.b = load ptr, ptr %3, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN12v8_inspector8String16D2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = shl i64 %i.e, 1
  %i.g = add i64 %i.f, 2
  call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.g) #13
  br label %_ZN12v8_inspector8String16D2Ev.exit

_ZN12v8_inspector8String16D2Ev.exit:              ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN12v8_inspector11findDebugIdERKNS_8String16Eb(ptr dead_on_unwind noalias writable sret(%"class.v8_inspector::String16") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.v8_inspector::String16", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @_ZN12v8_inspector8String16C1EPKc(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull @.str.2) #10
  %.val = load ptr, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val1 = load i64, ptr %i.a, align 8
  call fastcc void @_ZN12v8_inspector12_GLOBAL__N_116findMagicCommentERKNS_8String16ES3_b(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr %.val, i64 %.val1, i1 noundef zeroext %2)
  %i.b = load ptr, ptr %3, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN12v8_inspector8String16D2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = shl i64 %i.e, 1
  %i.g = add i64 %i.f, 2
  call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.g) #13
  br label %_ZN12v8_inspector8String16D2Ev.exit

_ZN12v8_inspector8String16D2Ev.exit:              ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

declare void @_ZN12v8_inspector7V8RegexC1EPNS_15V8InspectorImplERKNS_8String16Ebb(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef nonnull align 8 dereferenceable(40), i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZN12v8_inspector15String16BuilderC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare void @_ZN12v8_inspector15String16Builder6appendEc(ptr noundef nonnull align 8 dereferenceable(24), i8 noundef signext) local_unnamed_addr #2

declare void @_ZN12v8_inspector15String16Builder6appendEDs(ptr noundef nonnull align 8 dereferenceable(24), i16 noundef zeroext) local_unnamed_addr #2

declare void @_ZN12v8_inspector15String16Builder8toStringEv(ptr dead_on_unwind writable sret(%"class.v8_inspector::String16") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK12v8_inspector8String169substringEmm(ptr dead_on_unwind noalias writable sret(%"class.v8_inspector::String16") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noalias !48 ; 3 uses
  %i.c = icmp ugt i64 %2, %i.b
  br i1 %i.c, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8_M_checkEmPKc.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, i64 noundef %2, i64 noundef %i.b) #11, !noalias !48
  unreachable

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.d, ptr %4, align 8, !alias.scope !48
  %i.e = load ptr, ptr %1, align 8, !noalias !48
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %2 ; 2 uses
  %i.g = sub nuw i64 %i.b, %2
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %3, i64 %i.g) ; 7 uses
  %.idx.i.i = shl nuw nsw i64 %spec.select.i.i.i, 1 ; 3 uses
  %i.h = icmp ugt i64 %spec.select.i.i.i, 7
  br i1 %i.h, label %bb.c, label %._crit_edge.i.i.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8_M_checkEmPKc.exit.i.i
  %i.i = icmp ugt i64 %spec.select.i.i.i, 4611686018427387903
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #11
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = icmp eq i64 %spec.select.i.i.i, 4611686018427387903
  br i1 %i.j, label %bb.f, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i, !prof !8

bb.f:                                             ; preds = %bb.e
  call void @_ZSt17__throw_bad_allocv() #11
  unreachable

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i: ; preds = %bb.e
  %i.k = add nuw nsw i64 %.idx.i.i, 2
  %i.l = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #12 ; 2 uses
  store ptr %i.l, ptr %4, align 8, !alias.scope !48
  store i64 %spec.select.i.i.i, ptr %i.d, align 8, !alias.scope !48
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8_M_checkEmPKc.exit.i.i
  %i.m = phi ptr [ %i.l, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8_M_checkEmPKc.exit.i.i ] ; 3 uses
  switch i64 %spec.select.i.i.i, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6substrEmm.exit
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.n = load i16, ptr %i.f, align 2
  store i16 %i.n, ptr %i.m, align 2
  br label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6substrEmm.exit

bb.h:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.m, ptr align 2 %i.f, i64 %.idx.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6substrEmm.exit

end_hunk_0
