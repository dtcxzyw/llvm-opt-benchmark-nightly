inline.NumInlined: 188
inline.NumDeleted: 114
begin_hunk_0_@_ZN6Assimp23GetImporterInstanceListERSt6vectorIPNS_12BaseImporterESaIS2_EE:bb.a
  store ptr %i.pa, ptr %i.pb, align 8
  %i.pd = load ptr, ptr %i.r, align 8
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 8
  store ptr %i.pe, ptr %i.r, align 8
  br label %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit205

bb.di:                                            ; preds = %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit197
  %i.pf = load ptr, ptr %0, align 8               ; 4 uses
  %i.pg = ptrtoint ptr %i.pb to i64
  %i.ph = ptrtoint ptr %i.pf to i64
  %i.pi = sub i64 %i.pg, %i.ph                    ; 6 uses
  %i.pj = icmp eq i64 %i.pi, 9223372036854775800
  br i1 %i.pj, label %bb.dj, label %_ZNKSt6vectorIPN6Assimp12BaseImporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i199

bb.dj:                                            ; preds = %bb.di
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #14
  unreachable

_ZNKSt6vectorIPN6Assimp12BaseImporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i199: ; preds = %bb.di
  %i.pk = ashr exact i64 %i.pi, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i200 = tail call i64 @llvm.umax.i64(i64 %i.pk, i64 1)
  %i.pl = add nsw i64 %.sroa.speculated.i.i.i.i200, %i.pk ; 2 uses
  %i.pm = icmp ult i64 %i.pl, %i.pk
  %i.pn = tail call i64 @llvm.umin.i64(i64 %i.pl, i64 1152921504606846975)
  %i.po = select i1 %i.pm, i64 1152921504606846975, i64 %i.pn ; 3 uses
  %.not.i.i.i.i201 = icmp ne i64 %i.po, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i201)
  %i.pp = shl nuw nsw i64 %i.po, 3
  %i.pq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pp) #11 ; 4 uses
  %i.pr = getelementptr inbounds i8, ptr %i.pq, i64 %i.pi ; 2 uses
  store ptr %i.pa, ptr %i.pr, align 8
  %i.ps = icmp sgt i64 %i.pi, 0
  br i1 %i.ps, label %bb.dk, label %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i202

bb.dk:                                            ; preds = %_ZNKSt6vectorIPN6Assimp12BaseImporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i199
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.pq, ptr align 8 %i.pf, i64 %i.pi, i1 false)
  br label %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i202

_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i202: ; preds = %bb.dk, %_ZNKSt6vectorIPN6Assimp12BaseImporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i199
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pr, i64 8
  %.not.i17.i.i.i203 = icmp eq ptr %i.pf, null
  br i1 %.not.i17.i.i.i203, label %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i204, label %bb.dl

bb.dl:                                            ; preds = %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i202
  tail call void @_ZdlPvm(ptr noundef nonnull %i.pf, i64 noundef %i.pi) #12
  br label %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i204

_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i204: ; preds = %bb.dl, %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i202
  store ptr %i.pq, ptr %0, align 8
  store ptr %i.pt, ptr %i.r, align 8
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr %i.pq, i64 %i.po
  store ptr %i.pu, ptr %i.a, align 8
  br label %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit205

_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit205: ; preds = %bb.dh, %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i204
  %i.pv = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #11 ; 4 uses
  invoke void @_ZN6Assimp12AC3DImporterC1Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.pv)
          to label %bb.dm unwind label %bb.kf

bb.dm:                                            ; preds = %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit205
  %i.pw = load ptr, ptr %i.r, align 8             ; 3 uses
  %i.px = load ptr, ptr %i.a, align 8
  %.not.i.i206 = icmp eq ptr %i.pw, %i.px
  br i1 %.not.i.i206, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  store ptr %i.pv, ptr %i.pw, align 8
  %i.py = load ptr, ptr %i.r, align 8
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 8
  store ptr %i.pz, ptr %i.r, align 8
  br label %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit213

bb.do:                                            ; preds = %bb.dm
  %i.qa = load ptr, ptr %0, align 8               ; 4 uses
  %i.qb = ptrtoint ptr %i.pw to i64
  %i.qc = ptrtoint ptr %i.qa to i64
  %i.qd = sub i64 %i.qb, %i.qc                    ; 6 uses
  %i.qe = icmp eq i64 %i.qd, 9223372036854775800
  br i1 %i.qe, label %bb.dp, label %_ZNKSt6vectorIPN6Assimp12BaseImporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i207

bb.dp:                                            ; preds = %bb.do
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #14
  unreachable

_ZNKSt6vectorIPN6Assimp12BaseImporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i207: ; preds = %bb.do
  %i.qf = ashr exact i64 %i.qd, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i208 = tail call i64 @llvm.umax.i64(i64 %i.qf, i64 1)
  %i.qg = add nsw i64 %.sroa.speculated.i.i.i.i208, %i.qf ; 2 uses
  %i.qh = icmp ult i64 %i.qg, %i.qf
  %i.qi = tail call i64 @llvm.umin.i64(i64 %i.qg, i64 1152921504606846975)
  %i.qj = select i1 %i.qh, i64 1152921504606846975, i64 %i.qi ; 3 uses
  %.not.i.i.i.i209 = icmp ne i64 %i.qj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i209)
  %i.qk = shl nuw nsw i64 %i.qj, 3
  %i.ql = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qk) #11 ; 4 uses
  %i.qm = getelementptr inbounds i8, ptr %i.ql, i64 %i.qd ; 2 uses
  store ptr %i.pv, ptr %i.qm, align 8
  %i.qn = icmp sgt i64 %i.qd, 0
  br i1 %i.qn, label %bb.dq, label %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i210

bb.dq:                                            ; preds = %_ZNKSt6vectorIPN6Assimp12BaseImporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i207
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ql, ptr align 8 %i.qa, i64 %i.qd, i1 false)
  br label %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i210

_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i210: ; preds = %bb.dq, %_ZNKSt6vectorIPN6Assimp12BaseImporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i207
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qm, i64 8
  %.not.i17.i.i.i211 = icmp eq ptr %i.qa, null
  br i1 %.not.i17.i.i.i211, label %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i212, label %bb.dr

bb.dr:                                            ; preds = %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i210
  tail call void @_ZdlPvm(ptr noundef nonnull %i.qa, i64 noundef %i.qd) #12
  br label %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i212

_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i212: ; preds = %bb.dr, %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i210
  store ptr %i.ql, ptr %0, align 8
  store ptr %i.qo, ptr %i.r, align 8
  %i.qp = getelementptr inbounds nuw [8 x i8], ptr %i.ql, i64 %i.qj
  store ptr %i.qp, ptr %i.a, align 8
  br label %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit213

_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit213: ; preds = %bb.dn, %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i212
  %i.qq = tail call noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #11 ; 4 uses
  invoke void @_ZN6Assimp9BVHLoaderC1Ev(ptr noundef nonnull align 8 dereferenceable(184) %i.qq)
          to label %bb.ds unwind label %bb.kg

bb.ds:                                            ; preds = %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit213
  %i.qr = load ptr, ptr %i.r, align 8             ; 3 uses
  %i.qs = load ptr, ptr %i.a, align 8
  %.not.i.i214 = icmp eq ptr %i.qr, %i.qs
  br i1 %.not.i.i214, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  store ptr %i.qq, ptr %i.qr, align 8
  %i.qt = load ptr, ptr %i.r, align 8
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 8
  store ptr %i.qu, ptr %i.r, align 8
  br label %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit221

bb.du:                                            ; preds = %bb.ds
  %i.qv = load ptr, ptr %0, align 8               ; 4 uses
  %i.qw = ptrtoint ptr %i.qr to i64
  %i.qx = ptrtoint ptr %i.qv to i64
  %i.qy = sub i64 %i.qw, %i.qx                    ; 6 uses
  %i.qz = icmp eq i64 %i.qy, 9223372036854775800
  br i1 %i.qz, label %bb.dv, label %_ZNKSt6vectorIPN6Assimp12BaseImporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i215

bb.dv:                                            ; preds = %bb.du
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #14
  unreachable

_ZNKSt6vectorIPN6Assimp12BaseImporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i215: ; preds = %bb.du
  %i.ra = ashr exact i64 %i.qy, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i216 = tail call i64 @llvm.umax.i64(i64 %i.ra, i64 1)
  %i.rb = add nsw i64 %.sroa.speculated.i.i.i.i216, %i.ra ; 2 uses
  %i.rc = icmp ult i64 %i.rb, %i.ra
  %i.rd = tail call i64 @llvm.umin.i64(i64 %i.rb, i64 1152921504606846975)
  %i.re = select i1 %i.rc, i64 1152921504606846975, i64 %i.rd ; 3 uses
  %.not.i.i.i.i217 = icmp ne i64 %i.re, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i217)
  %i.rf = shl nuw nsw i64 %i.re, 3
  %i.rg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rf) #11 ; 4 uses
  %i.rh = getelementptr inbounds i8, ptr %i.rg, i64 %i.qy ; 2 uses
  store ptr %i.qq, ptr %i.rh, align 8
  %i.ri = icmp sgt i64 %i.qy, 0
  br i1 %i.ri, label %bb.dw, label %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i218

bb.dw:                                            ; preds = %_ZNKSt6vectorIPN6Assimp12BaseImporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i215
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.rg, ptr align 8 %i.qv, i64 %i.qy, i1 false)
  br label %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i218

_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i218: ; preds = %bb.dw, %_ZNKSt6vectorIPN6Assimp12BaseImporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i215
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rh, i64 8
  %.not.i17.i.i.i219 = icmp eq ptr %i.qv, null
  br i1 %.not.i17.i.i.i219, label %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i220, label %bb.dx

bb.dx:                                            ; preds = %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i218
  tail call void @_ZdlPvm(ptr noundef nonnull %i.qv, i64 noundef %i.qy) #12
  br label %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i220

_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i220: ; preds = %bb.dx, %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i218
  store ptr %i.rg, ptr %0, align 8
  store ptr %i.rj, ptr %i.r, align 8
  %i.rk = getelementptr inbounds nuw [8 x i8], ptr %i.rg, i64 %i.re
  store ptr %i.rk, ptr %i.a, align 8
  br label %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit221

_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit221: ; preds = %bb.dt, %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i220
  %i.rl = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #11 ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.rl, i8 0, i64 112, i1 false)
  tail call void @_ZN6Assimp12BaseImporterC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.rl) #13
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 72
  store ptr null, ptr %i.rm, align 8
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rl, i64 80
  invoke void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.rn)
          to label %bb.dy unwind label %.body

.body:                                            ; preds = %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit221
  %i.ro = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6Assimp12BaseImporterD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(112) %i.rl) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %i.rl, i64 noundef 112) #12
  br label %bb.ky

bb.dy:                                            ; preds = %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit221
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rl, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.rp, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6Assimp15IRRMeshImporterE, i64 16), ptr %i.rl, align 8
  %i.rq = load ptr, ptr %i.r, align 8             ; 3 uses
  %i.rr = load ptr, ptr %i.a, align 8
  %.not.i.i222 = icmp eq ptr %i.rq, %i.rr
  br i1 %.not.i.i222, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  store ptr %i.rl, ptr %i.rq, align 8
  %i.rs = load ptr, ptr %i.r, align 8
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 8
  store ptr %i.rt, ptr %i.r, align 8
  br label %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit229

bb.ea:                                            ; preds = %bb.dy
  %i.ru = load ptr, ptr %0, align 8               ; 4 uses
  %i.rv = ptrtoint ptr %i.rq to i64
  %i.rw = ptrtoint ptr %i.ru to i64
  %i.rx = sub i64 %i.rv, %i.rw                    ; 6 uses
  %i.ry = icmp eq i64 %i.rx, 9223372036854775800
  br i1 %i.ry, label %bb.eb, label %_ZNKSt6vectorIPN6Assimp12BaseImporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i223

bb.eb:                                            ; preds = %bb.ea
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #14
  unreachable

_ZNKSt6vectorIPN6Assimp12BaseImporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i223: ; preds = %bb.ea
  %i.rz = ashr exact i64 %i.rx, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i224 = tail call i64 @llvm.umax.i64(i64 %i.rz, i64 1)
  %i.sa = add nsw i64 %.sroa.speculated.i.i.i.i224, %i.rz ; 2 uses
  %i.sb = icmp ult i64 %i.sa, %i.rz
  %i.sc = tail call i64 @llvm.umin.i64(i64 %i.sa, i64 1152921504606846975)
  %i.sd = select i1 %i.sb, i64 1152921504606846975, i64 %i.sc ; 3 uses
  %.not.i.i.i.i225 = icmp ne i64 %i.sd, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i225)
  %i.se = shl nuw nsw i64 %i.sd, 3
  %i.sf = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.se) #11 ; 4 uses
  %i.sg = getelementptr inbounds i8, ptr %i.sf, i64 %i.rx ; 2 uses
  store ptr %i.rl, ptr %i.sg, align 8
  %i.sh = icmp sgt i64 %i.rx, 0
  br i1 %i.sh, label %bb.ec, label %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i226

bb.ec:                                            ; preds = %_ZNKSt6vectorIPN6Assimp12BaseImporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i223
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.sf, ptr align 8 %i.ru, i64 %i.rx, i1 false)
  br label %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i226

_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i226: ; preds = %bb.ec, %_ZNKSt6vectorIPN6Assimp12BaseImporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i223
  %i.si = getelementptr inbounds nuw i8, ptr %i.sg, i64 8
  %.not.i17.i.i.i227 = icmp eq ptr %i.ru, null
  br i1 %.not.i17.i.i.i227, label %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i228, label %bb.ed

bb.ed:                                            ; preds = %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i226
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ru, i64 noundef %i.rx) #12
  br label %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i228

_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i228: ; preds = %bb.ed, %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i226
  store ptr %i.sf, ptr %0, align 8
  store ptr %i.si, ptr %i.r, align 8
  %i.sj = getelementptr inbounds nuw [8 x i8], ptr %i.sf, i64 %i.sd
  store ptr %i.sj, ptr %i.a, align 8
  br label %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit229

_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit229: ; preds = %bb.dz, %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i228
  %i.sk = tail call noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #11 ; 4 uses
  invoke void @_ZN6Assimp11IRRImporterC1Ev(ptr noundef nonnull align 8 dereferenceable(188) %i.sk)
          to label %bb.ee unwind label %bb.kh

bb.ee:                                            ; preds = %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit229
  %i.sl = load ptr, ptr %i.r, align 8             ; 3 uses
  %i.sm = load ptr, ptr %i.a, align 8
  %.not.i.i230 = icmp eq ptr %i.sl, %i.sm
  br i1 %.not.i.i230, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  store ptr %i.sk, ptr %i.sl, align 8
  %i.sn = load ptr, ptr %i.r, align 8
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 8
  store ptr %i.so, ptr %i.r, align 8
  br label %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit237

bb.eg:                                            ; preds = %bb.ee
  %i.sp = load ptr, ptr %0, align 8               ; 4 uses
  %i.sq = ptrtoint ptr %i.sl to i64
  %i.sr = ptrtoint ptr %i.sp to i64
  %i.ss = sub i64 %i.sq, %i.sr                    ; 6 uses
  %i.st = icmp eq i64 %i.ss, 9223372036854775800
  br i1 %i.st, label %bb.eh, label %_ZNKSt6vectorIPN6Assimp12BaseImporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i231

bb.eh:                                            ; preds = %bb.eg
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #14
  unreachable

_ZNKSt6vectorIPN6Assimp12BaseImporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i231: ; preds = %bb.eg
  %i.su = ashr exact i64 %i.ss, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i232 = tail call i64 @llvm.umax.i64(i64 %i.su, i64 1)
  %i.sv = add nsw i64 %.sroa.speculated.i.i.i.i232, %i.su ; 2 uses
  %i.sw = icmp ult i64 %i.sv, %i.su
  %i.sx = tail call i64 @llvm.umin.i64(i64 %i.sv, i64 1152921504606846975)
  %i.sy = select i1 %i.sw, i64 1152921504606846975, i64 %i.sx ; 3 uses
  %.not.i.i.i.i233 = icmp ne i64 %i.sy, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i233)
  %i.sz = shl nuw nsw i64 %i.sy, 3
  %i.ta = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.sz) #11 ; 4 uses
  %i.tb = getelementptr inbounds i8, ptr %i.ta, i64 %i.ss ; 2 uses
  store ptr %i.sk, ptr %i.tb, align 8
  %i.tc = icmp sgt i64 %i.ss, 0
  br i1 %i.tc, label %bb.ei, label %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i234

bb.ei:                                            ; preds = %_ZNKSt6vectorIPN6Assimp12BaseImporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i231
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ta, ptr align 8 %i.sp, i64 %i.ss, i1 false)
  br label %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i234

_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i234: ; preds = %bb.ei, %_ZNKSt6vectorIPN6Assimp12BaseImporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i231
  %i.td = getelementptr inbounds nuw i8, ptr %i.tb, i64 8
  %.not.i17.i.i.i235 = icmp eq ptr %i.sp, null
  br i1 %.not.i17.i.i.i235, label %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i236, label %bb.ej

bb.ej:                                            ; preds = %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i234
  tail call void @_ZdlPvm(ptr noundef nonnull %i.sp, i64 noundef %i.ss) #12
  br label %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i236

_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i236: ; preds = %bb.ej, %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i234
  store ptr %i.ta, ptr %0, align 8
  store ptr %i.td, ptr %i.r, align 8
  %i.te = getelementptr inbounds nuw [8 x i8], ptr %i.ta, i64 %i.sy
  store ptr %i.te, ptr %i.a, align 8
  br label %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit237

_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit237: ; preds = %bb.ef, %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i236
  %i.tf = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #11 ; 4 uses
  invoke void @_ZN6Assimp11Q3DImporterC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %i.tf)
          to label %bb.ek unwind label %bb.ki

bb.ek:                                            ; preds = %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit237
  %i.tg = load ptr, ptr %i.r, align 8             ; 3 uses
  %i.th = load ptr, ptr %i.a, align 8
  %.not.i.i238 = icmp eq ptr %i.tg, %i.th
  br i1 %.not.i.i238, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  store ptr %i.tf, ptr %i.tg, align 8
  %i.ti = load ptr, ptr %i.r, align 8
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 8
  store ptr %i.tj, ptr %i.r, align 8
  br label %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit245

bb.em:                                            ; preds = %bb.ek
  %i.tk = load ptr, ptr %0, align 8               ; 4 uses
  %i.tl = ptrtoint ptr %i.tg to i64
  %i.tm = ptrtoint ptr %i.tk to i64
  %i.tn = sub i64 %i.tl, %i.tm                    ; 6 uses
  %i.to = icmp eq i64 %i.tn, 9223372036854775800
  br i1 %i.to, label %bb.en, label %_ZNKSt6vectorIPN6Assimp12BaseImporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i239

bb.en:                                            ; preds = %bb.em
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #14
  unreachable

_ZNKSt6vectorIPN6Assimp12BaseImporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i239: ; preds = %bb.em
  %i.tp = ashr exact i64 %i.tn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i240 = tail call i64 @llvm.umax.i64(i64 %i.tp, i64 1)
  %i.tq = add nsw i64 %.sroa.speculated.i.i.i.i240, %i.tp ; 2 uses
  %i.tr = icmp ult i64 %i.tq, %i.tp
  %i.ts = tail call i64 @llvm.umin.i64(i64 %i.tq, i64 1152921504606846975)
  %i.tt = select i1 %i.tr, i64 1152921504606846975, i64 %i.ts ; 3 uses
  %.not.i.i.i.i241 = icmp ne i64 %i.tt, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i241)
  %i.tu = shl nuw nsw i64 %i.tt, 3
  %i.tv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tu) #11 ; 4 uses
  %i.tw = getelementptr inbounds i8, ptr %i.tv, i64 %i.tn ; 2 uses
  store ptr %i.tf, ptr %i.tw, align 8
  %i.tx = icmp sgt i64 %i.tn, 0
  br i1 %i.tx, label %bb.eo, label %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i242

bb.eo:                                            ; preds = %_ZNKSt6vectorIPN6Assimp12BaseImporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i239
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.tv, ptr align 8 %i.tk, i64 %i.tn, i1 false)
  br label %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i242

_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i242: ; preds = %bb.eo, %_ZNKSt6vectorIPN6Assimp12BaseImporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i239
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tw, i64 8
  %.not.i17.i.i.i243 = icmp eq ptr %i.tk, null
  br i1 %.not.i17.i.i.i243, label %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i244, label %bb.ep

bb.ep:                                            ; preds = %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i242
  tail call void @_ZdlPvm(ptr noundef nonnull %i.tk, i64 noundef %i.tn) #12
  br label %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i244

_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i244: ; preds = %bb.ep, %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i242
  store ptr %i.tv, ptr %0, align 8
  store ptr %i.ty, ptr %i.r, align 8
  %i.tz = getelementptr inbounds nuw [8 x i8], ptr %i.tv, i64 %i.tt
  store ptr %i.tz, ptr %i.a, align 8
  br label %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit245

_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit245: ; preds = %bb.el, %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i244
  %i.ua = tail call noalias noundef nonnull dereferenceable(312) ptr @_Znwm(i64 noundef 312) #11 ; 7 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp23GetImporterInstanceListERSt6vectorIPNS_12BaseImporterESaIS2_EE:bb.a

bb.ja:                                            ; preds = %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit405
  %i.alc = load ptr, ptr %i.r, align 8            ; 3 uses
  %i.ald = load ptr, ptr %i.a, align 8
  %.not.i.i406 = icmp eq ptr %i.alc, %i.ald
  br i1 %.not.i.i406, label %bb.jc, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  store ptr %i.alb, ptr %i.alc, align 8
  %i.ale = load ptr, ptr %i.r, align 8
  %i.alf = getelementptr inbounds nuw i8, ptr %i.ale, i64 8
  store ptr %i.alf, ptr %i.r, align 8
  br label %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit413

bb.jc:                                            ; preds = %bb.ja
  %i.alg = load ptr, ptr %0, align 8              ; 4 uses
  %i.alh = ptrtoint ptr %i.alc to i64
  %i.ali = ptrtoint ptr %i.alg to i64
  %i.alj = sub i64 %i.alh, %i.ali                 ; 6 uses
  %i.alk = icmp eq i64 %i.alj, 9223372036854775800
  br i1 %i.alk, label %bb.jd, label %_ZNKSt6vectorIPN6Assimp12BaseImporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i407

bb.jd:                                            ; preds = %bb.jc
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #14
  unreachable

_ZNKSt6vectorIPN6Assimp12BaseImporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i407: ; preds = %bb.jc
  %i.all = ashr exact i64 %i.alj, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i408 = tail call i64 @llvm.umax.i64(i64 %i.all, i64 1)
  %i.alm = add nsw i64 %.sroa.speculated.i.i.i.i408, %i.all ; 2 uses
  %i.aln = icmp ult i64 %i.alm, %i.all
  %i.alo = tail call i64 @llvm.umin.i64(i64 %i.alm, i64 1152921504606846975)
  %i.alp = select i1 %i.aln, i64 1152921504606846975, i64 %i.alo ; 3 uses
  %.not.i.i.i.i409 = icmp ne i64 %i.alp, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i409)
  %i.alq = shl nuw nsw i64 %i.alp, 3
  %i.alr = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.alq) #11 ; 4 uses
  %i.als = getelementptr inbounds i8, ptr %i.alr, i64 %i.alj ; 2 uses
  store ptr %i.alb, ptr %i.als, align 8
  %i.alt = icmp sgt i64 %i.alj, 0
  br i1 %i.alt, label %bb.je, label %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i410

bb.je:                                            ; preds = %_ZNKSt6vectorIPN6Assimp12BaseImporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i407
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.alr, ptr align 8 %i.alg, i64 %i.alj, i1 false)
  br label %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i410

_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i410: ; preds = %bb.je, %_ZNKSt6vectorIPN6Assimp12BaseImporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i407
  %i.alu = getelementptr inbounds nuw i8, ptr %i.als, i64 8
  %.not.i17.i.i.i411 = icmp eq ptr %i.alg, null
  br i1 %.not.i17.i.i.i411, label %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i412, label %bb.jf

bb.jf:                                            ; preds = %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i410
  tail call void @_ZdlPvm(ptr noundef nonnull %i.alg, i64 noundef %i.alj) #12
  br label %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i412

_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i412: ; preds = %bb.jf, %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i410
  store ptr %i.alr, ptr %0, align 8
  store ptr %i.alu, ptr %i.r, align 8
  %i.alv = getelementptr inbounds nuw [8 x i8], ptr %i.alr, i64 %i.alp
  store ptr %i.alv, ptr %i.a, align 8
  br label %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit413

_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit413: ; preds = %bb.jb, %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i412
  %i.alw = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #11 ; 4 uses
  invoke void @_ZN6Assimp11MMDImporterC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.alw)
          to label %bb.jg unwind label %bb.kw

bb.jg:                                            ; preds = %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit413
  %i.alx = load ptr, ptr %i.r, align 8            ; 3 uses
  %i.aly = load ptr, ptr %i.a, align 8
  %.not.i.i414 = icmp eq ptr %i.alx, %i.aly
  br i1 %.not.i.i414, label %bb.ji, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  store ptr %i.alw, ptr %i.alx, align 8
  %i.alz = load ptr, ptr %i.r, align 8
  %i.ama = getelementptr inbounds nuw i8, ptr %i.alz, i64 8
  store ptr %i.ama, ptr %i.r, align 8
  br label %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit421

bb.ji:                                            ; preds = %bb.jg
  %i.amb = load ptr, ptr %0, align 8              ; 4 uses
  %i.amc = ptrtoint ptr %i.alx to i64
  %i.amd = ptrtoint ptr %i.amb to i64
  %i.ame = sub i64 %i.amc, %i.amd                 ; 6 uses
  %i.amf = icmp eq i64 %i.ame, 9223372036854775800
  br i1 %i.amf, label %bb.jj, label %_ZNKSt6vectorIPN6Assimp12BaseImporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i415

bb.jj:                                            ; preds = %bb.ji
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #14
  unreachable

_ZNKSt6vectorIPN6Assimp12BaseImporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i415: ; preds = %bb.ji
  %i.amg = ashr exact i64 %i.ame, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i416 = tail call i64 @llvm.umax.i64(i64 %i.amg, i64 1)
  %i.amh = add nsw i64 %.sroa.speculated.i.i.i.i416, %i.amg ; 2 uses
  %i.ami = icmp ult i64 %i.amh, %i.amg
  %i.amj = tail call i64 @llvm.umin.i64(i64 %i.amh, i64 1152921504606846975)
  %i.amk = select i1 %i.ami, i64 1152921504606846975, i64 %i.amj ; 3 uses
  %.not.i.i.i.i417 = icmp ne i64 %i.amk, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i417)
  %i.aml = shl nuw nsw i64 %i.amk, 3
  %i.amm = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aml) #11 ; 4 uses
  %i.amn = getelementptr inbounds i8, ptr %i.amm, i64 %i.ame ; 2 uses
  store ptr %i.alw, ptr %i.amn, align 8
  %i.amo = icmp sgt i64 %i.ame, 0
  br i1 %i.amo, label %bb.jk, label %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i418

bb.jk:                                            ; preds = %_ZNKSt6vectorIPN6Assimp12BaseImporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i415
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.amm, ptr align 8 %i.amb, i64 %i.ame, i1 false)
  br label %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i418

_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i418: ; preds = %bb.jk, %_ZNKSt6vectorIPN6Assimp12BaseImporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i415
  %i.amp = getelementptr inbounds nuw i8, ptr %i.amn, i64 8
  %.not.i17.i.i.i419 = icmp eq ptr %i.amb, null
  br i1 %.not.i17.i.i.i419, label %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i420, label %bb.jl

bb.jl:                                            ; preds = %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i418
  tail call void @_ZdlPvm(ptr noundef nonnull %i.amb, i64 noundef %i.ame) #12
  br label %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i420

_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i420: ; preds = %bb.jl, %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i418
  store ptr %i.amm, ptr %0, align 8
  store ptr %i.amp, ptr %i.r, align 8
  %i.amq = getelementptr inbounds nuw [8 x i8], ptr %i.amm, i64 %i.amk
  store ptr %i.amq, ptr %i.a, align 8
  br label %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit421

_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit421: ; preds = %bb.jh, %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i420
  %i.amr = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #11 ; 4 uses
  invoke void @_ZN6Assimp11IQMImporterC1Ev(ptr noundef nonnull align 8 dereferenceable(80) %i.amr)
          to label %bb.jm unwind label %bb.kx

bb.jm:                                            ; preds = %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit421
  %i.ams = load ptr, ptr %i.r, align 8            ; 3 uses
  %i.amt = load ptr, ptr %i.a, align 8
  %.not.i.i422 = icmp eq ptr %i.ams, %i.amt
  br i1 %.not.i.i422, label %bb.jo, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  store ptr %i.amr, ptr %i.ams, align 8
  %i.amu = load ptr, ptr %i.r, align 8
  %i.amv = getelementptr inbounds nuw i8, ptr %i.amu, i64 8
  store ptr %i.amv, ptr %i.r, align 8
  br label %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit429

bb.jo:                                            ; preds = %bb.jm
  %i.amw = load ptr, ptr %0, align 8              ; 4 uses
  %i.amx = ptrtoint ptr %i.ams to i64
  %i.amy = ptrtoint ptr %i.amw to i64
  %i.amz = sub i64 %i.amx, %i.amy                 ; 6 uses
  %i.ana = icmp eq i64 %i.amz, 9223372036854775800
  br i1 %i.ana, label %bb.jp, label %_ZNKSt6vectorIPN6Assimp12BaseImporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i423

bb.jp:                                            ; preds = %bb.jo
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #14
  unreachable

_ZNKSt6vectorIPN6Assimp12BaseImporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i423: ; preds = %bb.jo
  %i.anb = ashr exact i64 %i.amz, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i424 = tail call i64 @llvm.umax.i64(i64 %i.anb, i64 1)
  %i.anc = add nsw i64 %.sroa.speculated.i.i.i.i424, %i.anb ; 2 uses
  %i.and = icmp ult i64 %i.anc, %i.anb
  %i.ane = tail call i64 @llvm.umin.i64(i64 %i.anc, i64 1152921504606846975)
  %i.anf = select i1 %i.and, i64 1152921504606846975, i64 %i.ane ; 3 uses
  %.not.i.i.i.i425 = icmp ne i64 %i.anf, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i425)
  %i.ang = shl nuw nsw i64 %i.anf, 3
  %i.anh = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ang) #11 ; 4 uses
  %i.ani = getelementptr inbounds i8, ptr %i.anh, i64 %i.amz ; 2 uses
  store ptr %i.amr, ptr %i.ani, align 8
  %i.anj = icmp sgt i64 %i.amz, 0
  br i1 %i.anj, label %bb.jq, label %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i426

bb.jq:                                            ; preds = %_ZNKSt6vectorIPN6Assimp12BaseImporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i423
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.anh, ptr align 8 %i.amw, i64 %i.amz, i1 false)
  br label %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i426

_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i426: ; preds = %bb.jq, %_ZNKSt6vectorIPN6Assimp12BaseImporterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i423
  %i.ank = getelementptr inbounds nuw i8, ptr %i.ani, i64 8
  %.not.i17.i.i.i427 = icmp eq ptr %i.amw, null
  br i1 %.not.i17.i.i.i427, label %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i428, label %bb.jr

bb.jr:                                            ; preds = %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i426
  tail call void @_ZdlPvm(ptr noundef nonnull %i.amw, i64 noundef %i.amz) #12
  br label %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i428

_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i428: ; preds = %bb.jr, %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i426
  store ptr %i.anh, ptr %0, align 8
  store ptr %i.ank, ptr %i.r, align 8
  %i.anl = getelementptr inbounds nuw [8 x i8], ptr %i.anh, i64 %i.anf
  store ptr %i.anl, ptr %i.a, align 8
  br label %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit429

_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit429: ; preds = %bb.jn, %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i428
  ret void

bb.js:                                            ; preds = %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit
  %i.anm = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef 136) #12
  br label %bb.ky

bb.jt:                                            ; preds = %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit69
  %i.ann = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef 168) #12
  br label %bb.ky

bb.ju:                                            ; preds = %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit77
  %i.ano = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef 296) #12
  br label %bb.ky

bb.jv:                                            ; preds = %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit85
  %i.anp = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef 104) #12
  br label %bb.ky

bb.jw:                                            ; preds = %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit93
  %i.anq = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.en, i64 noundef 96) #12
  br label %bb.ky

bb.jx:                                            ; preds = %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit101
  %i.anr = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fi, i64 noundef 160) #12
  br label %bb.ky

bb.jy:                                            ; preds = %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit109
  %i.ans = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef 104) #12
  br label %bb.ky

bb.jz:                                            ; preds = %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit117
  %i.ant = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gy, i64 noundef 160) #12
  br label %bb.ky

bb.ka:                                            ; preds = %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit125
  %i.anu = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ht, i64 noundef 232) #12
  br label %bb.ky

bb.kb:                                            ; preds = %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit133
  %i.anv = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.io, i64 noundef 104) #12
  br label %bb.ky

bb.kc:                                            ; preds = %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit141
  %i.anw = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.jj, i64 noundef 144) #12
  br label %bb.ky

bb.kd:                                            ; preds = %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit149
  %i.anx = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ke, i64 noundef 112) #12
  br label %bb.ky

bb.ke:                                            ; preds = %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit157
  %i.any = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.kz, i64 noundef 240) #12
  br label %bb.ky

bb.kf:                                            ; preds = %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit205
  %i.anz = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.pv, i64 noundef 120) #12
  br label %bb.ky

bb.kg:                                            ; preds = %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit213
  %i.aoa = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.qq, i64 noundef 184) #12
  br label %bb.ky

bb.kh:                                            ; preds = %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit229
  %i.aob = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.sk, i64 noundef 192) #12
  br label %bb.ky

bb.ki:                                            ; preds = %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit237
  %i.aoc = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.tf, i64 noundef 72) #12
  br label %bb.ky

bb.kj:                                            ; preds = %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit253
  %i.aod = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ux, i64 noundef 384) #12
  br label %bb.ky

bb.kk:                                            ; preds = %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit261
  %i.aoe = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.vs, i64 noundef 80) #12
  br label %bb.ky

bb.kl:                                            ; preds = %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit269
  %i.aof = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.wn, i64 noundef 80) #12
  br label %bb.ky

bb.km:                                            ; preds = %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit277
  %i.aog = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.xi, i64 noundef 80) #12
  br label %bb.ky

bb.kn:                                            ; preds = %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit285
  %i.aoh = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.yd, i64 noundef 120) #12
  br label %bb.ky

bb.ko:                                            ; preds = %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit301
  %i.aoi = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aab, i64 noundef 776) #12
  br label %bb.ky

bb.kp:                                            ; preds = %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit309
  %i.aoj = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aaw, i64 noundef 80) #12
  br label %bb.ky

bb.kq:                                            ; preds = %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit325
  %i.aok = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.acm, i64 noundef 80) #12
  br label %bb.ky

bb.kr:                                            ; preds = %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit333
  %i.aol = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.adh, i64 noundef 160) #12
  br label %bb.ky

bb.ks:                                            ; preds = %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit357
  %i.aom = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.afx, i64 noundef 88) #12
  br label %bb.ky

bb.kt:                                            ; preds = %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit381
  %i.aon = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aiq, i64 noundef 128) #12
  br label %bb.ky

bb.ku:                                            ; preds = %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit389
  %i.aoo = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ajl, i64 noundef 160) #12
  br label %bb.ky

bb.kv:                                            ; preds = %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit405
  %i.aop = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.alb, i64 noundef 120) #12
  br label %bb.ky

bb.kw:                                            ; preds = %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit413
  %i.aoq = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.alw, i64 noundef 128) #12
  br label %bb.ky

bb.kx:                                            ; preds = %_ZNSt6vectorIPN6Assimp12BaseImporterESaIS2_EE9push_backEOS2_.exit421
  %i.aor = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.amr, i64 noundef 80) #12
  br label %bb.ky

bb.ky:                                            ; preds = %bb.kx, %bb.kw, %bb.kv, %bb.ku, %bb.kt, %bb.ks, %bb.kr, %bb.kq, %bb.kp, %bb.ko, %bb.kn, %bb.km, %bb.kl, %bb.kk, %bb.kj, %bb.ki, %bb.kh, %.body, %bb.kg, %bb.kf, %bb.ke, %bb.kd, %bb.kc, %bb.kb, %bb.ka, %bb.jz, %bb.jy, %bb.jx, %bb.jw, %bb.jv, %bb.ju, %bb.jt, %bb.js
  %.pn = phi { ptr, i32 } [ %i.aor, %bb.kx ], [ %i.aoq, %bb.kw ], [ %i.aop, %bb.kv ], [ %i.aoo, %bb.ku ], [ %i.aon, %bb.kt ], [ %i.ann, %bb.jt ], [ %i.aom, %bb.ks ], [ %i.anm, %bb.js ], [ %i.aol, %bb.kr ], [ %i.aok, %bb.kq ], [ %i.aoj, %bb.kp ], [ %i.aoi, %bb.ko ], [ %i.aoh, %bb.kn ], [ %i.aog, %bb.km ], [ %i.aof, %bb.kl ], [ %i.aoe, %bb.kk ], [ %i.aod, %bb.kj ], [ %i.aoc, %bb.ki ], [ %i.aob, %bb.kh ], [ %i.ro, %.body ], [ %i.aoa, %bb.kg ], [ %i.anz, %bb.kf ], [ %i.any, %bb.ke ], [ %i.anx, %bb.kd ], [ %i.anw, %bb.kc ], [ %i.anv, %bb.kb ], [ %i.anu, %bb.ka ], [ %i.ant, %bb.jz ], [ %i.ans, %bb.jy ], [ %i.anr, %bb.jx ], [ %i.anq, %bb.jw ], [ %i.anp, %bb.jv ], [ %i.ano, %bb.ju ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare void @_ZN6Assimp15ObjFileImporterC1Ev(ptr noundef nonnull align 8 dereferenceable(136)) unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN6Assimp11AMFImporterC1Ev(ptr noundef nonnull align 8 dereferenceable(224)) unnamed_addr #5

declare void @_ZN6Assimp19Discreet3DSImporterC1Ev(ptr noundef nonnull align 8 dereferenceable(168)) unnamed_addr #4

declare void @_ZN6Assimp11MD3ImporterC1Ev(ptr noundef nonnull align 8 dereferenceable(296)) unnamed_addr #4

declare void @_ZN6Assimp11MD2ImporterC1Ev(ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #4

declare void @_ZN6Assimp11PLYImporterC1Ev(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #4

declare void @_ZN6Assimp11MDLImporterC1Ev(ptr noundef nonnull align 8 dereferenceable(159)) unnamed_addr #4

declare void @_ZN6Assimp11ASEImporterC1Ev(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #4

declare void @_ZN6Assimp11HMPImporterC1Ev(ptr noundef nonnull align 8 dereferenceable(159)) unnamed_addr #4

declare void @_ZN6Assimp11SMDImporterC1Ev(ptr noundef nonnull align 8 dereferenceable(226)) unnamed_addr #4

declare void @_ZN6Assimp11MDCImporterC1Ev(ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #4

declare void @_ZN6Assimp11MD5ImporterC1Ev(ptr noundef nonnull align 8 dereferenceable(140)) unnamed_addr #4

declare void @_ZN6Assimp11STLImporterC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #4

declare void @_ZN6Assimp11LWOImporterC1Ev(ptr noundef nonnull align 8 dereferenceable(233)) unnamed_addr #4

declare void @_ZN6Assimp12AC3DImporterC1Ev(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #4

declare void @_ZN6Assimp9BVHLoaderC1Ev(ptr noundef nonnull align 8 dereferenceable(184)) unnamed_addr #4

declare void @_ZN6Assimp11IRRImporterC1Ev(ptr noundef nonnull align 8 dereferenceable(188)) unnamed_addr #4

declare void @_ZN6Assimp11Q3DImporterC1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #4

declare void @_ZN6Assimp13ColladaLoaderC1Ev(ptr noundef nonnull align 8 dereferenceable(384)) unnamed_addr #4

declare void @_ZN6Assimp16TerragenImporterC1Ev(ptr noundef nonnull align 8 dereferenceable(73)) unnamed_addr #4

declare void @_ZN6Assimp11CSMImporterC1Ev(ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #4

declare void @_ZN6Assimp14UnrealImporterC1Ev(ptr noundef nonnull align 8 dereferenceable(77)) unnamed_addr #4

declare void @_ZN6Assimp11LWSImporterC1Ev(ptr noundef nonnull align 8 dereferenceable(113)) unnamed_addr #4

declare void @_ZN6Assimp7OpenGEX15OpenGEXImporterC1Ev(ptr noundef nonnull align 8 dereferenceable(776)) unnamed_addr #4

declare void @_ZN6Assimp12MS3DImporterC1Ev(ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #4

declare void @_ZN6Assimp15BlenderImporterC1Ev(ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #4

declare void @_ZN6Assimp17Q3BSPFileImporterC1Ev(ptr noundef nonnull align 8 dereferenceable(160)) unnamed_addr #4

declare void @_ZN6Assimp11XGLImporterC1Ev(ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #4

declare void @_ZN6Assimp12glTFImporterC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #4

declare void @_ZN6Assimp13glTF2ImporterC1Ev(ptr noundef nonnull align 8 dereferenceable(160)) unnamed_addr #4

declare void @_ZN6Assimp11X3DImporterC1Ev(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #4

declare void @_ZN6Assimp11MMDImporterC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #4

declare void @_ZN6Assimp11IQMImporterC1Ev(ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6Assimp26DeleteImporterInstanceListERSt6vectorIPNS_12BaseImporterESaIS2_EE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.d = phi ptr [ %i.o, %bb.c ], [ %i.c, %bb.a ] ; 2 uses
  %.07 = phi i64 [ %i.m, %bb.c ], [ 0, %bb.a ]    ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.07
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = load ptr, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.f) #13
  %.pre = load ptr, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.k = phi ptr [ %.pre, %bb.b ], [ %i.d, %.lr.ph ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.07
  store ptr null, ptr %i.l, align 8
  %i.m = add nuw i64 %.07, 1                      ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = load ptr, ptr %0, align 8                ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 3
  %i.t = icmp ult i64 %i.m, %i.s
  br i1 %i.t, label %.lr.ph, label %._crit_edge, !llvm.loop !3
}

; Function Attrs: nounwind
declare void @_ZN6Assimp12BaseImporterC2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6Assimp12BaseImporterD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6Assimp12BaseImporterE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #13
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  %i.g = load i64, ptr %i.e, align 8
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

declare void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { builtin allocsize(0) }
attributes #12 = { builtin nounwind }
attributes #13 = { nounwind }
attributes #14 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
end_hunk_1
