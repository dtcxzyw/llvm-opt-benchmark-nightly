Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MachineBlockFrequencyInfo?download=true
inline.NumInlined: 3712
inline.NumDeleted: 1933
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4llvm15GraphWriterBaseIPNS_25MachineBlockFrequencyInfoENS_11GraphWriterIS2_EEE11writeHeaderERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

_ZN4llvm11raw_ostreamlsEPKc.exit25:               ; preds = %bb.v, %bb.w
  %.0.i.i24 = phi ptr [ %i.df, %bb.v ], [ %i.cw, %bb.w ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZN4llvm3DOT12EscapeStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %1) #22
  %i.di = load ptr, ptr %5, align 8, !tbaa !76
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !75
  %i.dl = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i24, ptr noundef %i.di, i64 noundef %i.dk) #22 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !40
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 32 ; 3 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !41 ; 2 uses
  %i.dq = ptrtoint ptr %i.dn to i64
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = icmp ult i64 %i.ds, 3
  br i1 %i.dt, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit25
  %i.du = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.dl, ptr noundef nonnull @.str.49, i64 noundef 3) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit28

bb.y:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.dp, ptr noundef nonnull align 1 dereferenceable(3) @.str.49, i64 3, i1 false)
  %i.dv = load ptr, ptr %i.do, align 8, !tbaa !41
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 3
  store ptr %i.dw, ptr %i.do, align 8, !tbaa !41
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit28

_ZN4llvm11raw_ostreamlsEPKc.exit28:               ; preds = %bb.x, %bb.y
  %i.dx = load ptr, ptr %5, align 8, !tbaa !76    ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dz = icmp eq ptr %i.dx, %i.dy
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit28
  %i.ea = load i64, ptr %i.dy, align 8, !tbaa !42
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.eb) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.af

bb.z:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit19
  %i.ec = load i64, ptr %i.t, align 8, !tbaa !75
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %bb.af, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !476, !nonnull !32, !align !35 ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !40
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 32 ; 3 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !41 ; 2 uses
  %i.ek = ptrtoint ptr %i.eh to i64
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = sub i64 %i.ek, %i.el
  %i.en = icmp ult i64 %i.em, 8
  br i1 %i.en, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.eo = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ef, ptr noundef nonnull @.str.48, i64 noundef 8) #22
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit34

bb.ac:                                            ; preds = %bb.aa
  store i64 2467247353566948361, ptr %i.ej, align 1
  %i.ep = load ptr, ptr %i.ei, align 8, !tbaa !41
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store ptr %i.eq, ptr %i.ei, align 8, !tbaa !41
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit34

_ZN4llvm11raw_ostreamlsEPKc.exit34:               ; preds = %bb.ab, %bb.ac
  %.0.i.i33 = phi ptr [ %i.eo, %bb.ab ], [ %i.ef, %bb.ac ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @_ZN4llvm3DOT12EscapeStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %2) #22
  %i.er = load ptr, ptr %6, align 8, !tbaa !76
  %i.es = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.et = load i64, ptr %i.es, align 8, !tbaa !75
  %i.eu = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i33, ptr noundef %i.er, i64 noundef %i.et) #22 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !40
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 32 ; 3 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !41 ; 2 uses
  %i.ez = ptrtoint ptr %i.ew to i64
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = sub i64 %i.ez, %i.fa
  %i.fc = icmp ult i64 %i.fb, 3
  br i1 %i.fc, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit34
  %i.fd = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.eu, ptr noundef nonnull @.str.49, i64 noundef 3) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit37

bb.ae:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ey, ptr noundef nonnull align 1 dereferenceable(3) @.str.49, i64 3, i1 false)
  %i.fe = load ptr, ptr %i.ex, align 8, !tbaa !41
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 3
  store ptr %i.ff, ptr %i.ex, align 8, !tbaa !41
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit37

_ZN4llvm11raw_ostreamlsEPKc.exit37:               ; preds = %bb.ad, %bb.ae
  %i.fg = load ptr, ptr %6, align 8, !tbaa !76    ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.fi = icmp eq ptr %i.fg, %i.fh
  br i1 %i.fi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit37
  %i.fj = load i64, ptr %i.fh, align 8, !tbaa !42
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fk) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.af

bb.af:                                            ; preds = %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !476, !nonnull !32, !align !35
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.fn = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.fn, ptr %7, align 8, !tbaa !310, !alias.scope !896
  %i.fo = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.fo, align 8, !tbaa !75, !alias.scope !896
  store i8 0, ptr %i.fn, align 8, !tbaa !42, !alias.scope !896
  %i.fp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.fm, ptr noundef nonnull %i.fn, i64 noundef 0) #22 ; 0 uses
  %i.fq = load ptr, ptr %7, align 8, !tbaa !76    ; 2 uses
  %i.fr = icmp eq ptr %i.fq, %i.fn
  br i1 %i.fr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %bb.af
  %i.fs = load i64, ptr %i.fn, align 8, !tbaa !42
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %i.fq, i64 noundef %i.ft) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.fu = load ptr, ptr %i.fl, align 8, !tbaa !476, !nonnull !32, !align !35 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !40
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 32 ; 3 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !41 ; 2 uses
  %i.fz = icmp eq ptr %i.fw, %i.fy
  br i1 %i.fz, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  %i.ga = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.fu, ptr noundef nonnull @.str.27, i64 noundef 1) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit46

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  store i8 10, ptr %i.fy, align 1
  %i.gb = load ptr, ptr %i.fx, align 8, !tbaa !41
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 1
  store ptr %i.gc, ptr %i.fx, align 8, !tbaa !41
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit46

_ZN4llvm11raw_ostreamlsEPKc.exit46:               ; preds = %bb.ag, %bb.ah
  %i.gd = load ptr, ptr %2, align 8, !tbaa !76    ; 2 uses
  %i.ge = icmp eq ptr %i.gd, %i.k
  br i1 %i.ge, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit46
  %i.gf = load i64, ptr %i.k, align 8, !tbaa !42
  %i.gg = add i64 %i.gf, 1
  call void @_ZdlPvm(ptr noundef %i.gd, i64 noundef %i.gg) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void
}

declare void @_ZN4llvm3DOT12EscapeStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #14

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm15GraphWriterBaseIPNS_25MachineBlockFrequencyInfoENS_11GraphWriterIS2_EEE9writeNodeEPKNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %9 = alloca %"class.llvm::raw_string_ostream", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !475, !nonnull !32, !align !35
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !309
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm18ViewHotFreqPercentE, i64 120), align 8, !tbaa !450, !noalias !907
  call void @_ZN4llvm21BFIDOTGraphTraitsBaseINS_25MachineBlockFrequencyInfoENS_28MachineBranchProbabilityInfoEE17getNodeAttributesB5cxx11EPKNS_17MachineBasicBlockEPKS1_j(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %1, ptr noundef %i.d, i32 noundef %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !476, !nonnull !32, !align !35 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !41   ; 2 uses
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = icmp ult i64 %i.n, 5
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull @.str.51, i64 noundef 5) #22
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.k, ptr noundef nonnull align 1 dereferenceable(5) @.str.51, i64 5, i1 false)
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 5
  store ptr %i.r, ptr %i.j, align 8, !tbaa !41
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.p, %bb.b ], [ %i.g, %bb.c ]
  %i.s = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKv(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, ptr noundef %1) #22 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !40
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !41   ; 2 uses
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = icmp ult i64 %i.z, 8
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.ab = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr noundef nonnull @.str.52, i64 noundef 8) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit62

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  store i64 4424065772627909408, ptr %i.w, align 1
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !41
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.ad, ptr %i.v, align 8, !tbaa !41
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit62

_ZN4llvm11raw_ostreamlsEPKc.exit62:               ; preds = %bb.d, %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !474, !range !31, !noundef !32
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = load ptr, ptr %i.f, align 8, !tbaa !476, !nonnull !32, !align !35 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 32 ; 5 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !41 ; 3 uses
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 2 uses
  br i1 %i.ag, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit62
  %i.ap = icmp ult i64 %i.ao, 5
  br i1 %i.ap, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ah, ptr noundef nonnull @.str.53, i64 noundef 5) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit65

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.al, ptr noundef nonnull align 1 dereferenceable(5) @.str.53, i64 5, i1 false)
  %i.ar = load ptr, ptr %i.ak, align 8, !tbaa !41
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 5
  store ptr %i.as, ptr %i.ak, align 8, !tbaa !41
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit65

bb.i:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit62
  %i.at = icmp ult i64 %i.ao, 7
  br i1 %i.at, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.au = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ah, ptr noundef nonnull @.str.54, i64 noundef 7) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit65

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.al, ptr noundef nonnull align 1 dereferenceable(7) @.str.54, i64 7, i1 false)
  %i.av = load ptr, ptr %i.ak, align 8, !tbaa !41
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 7
  store ptr %i.aw, ptr %i.ak, align 8, !tbaa !41
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit65

_ZN4llvm11raw_ostreamlsEPKc.exit65:               ; preds = %bb.k, %bb.j, %bb.h, %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !75 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %_ZN4llvm11raw_ostreamlsEPKc.exit71, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit65
  %i.ba = load ptr, ptr %i.f, align 8, !tbaa !476, !nonnull !32, !align !35
  %i.bb = load ptr, ptr %4, align 8, !tbaa !76
  %i.bc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ba, ptr noundef %i.bb, i64 noundef %i.ay) #22 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !40
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 32 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !41 ; 2 uses
  %i.bh = icmp eq ptr %i.be, %i.bg
  br i1 %i.bh, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bi = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bc, ptr noundef nonnull @.str.55, i64 noundef 1) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit71

bb.n:                                             ; preds = %bb.l
  store i8 44, ptr %i.bg, align 1
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !41
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  store ptr %i.bk, ptr %i.bf, align 8, !tbaa !41
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit71

_ZN4llvm11raw_ostreamlsEPKc.exit71:               ; preds = %bb.n, %bb.m, %_ZN4llvm11raw_ostreamlsEPKc.exit65
  %i.bl = load ptr, ptr %i.f, align 8, !tbaa !476, !nonnull !32, !align !35 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !40
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 32 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !41 ; 2 uses
  %i.bq = ptrtoint ptr %i.bn to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = icmp ult i64 %i.bs, 6
  br i1 %i.bt, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit71
  %i.bu = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bl, ptr noundef nonnull @.str.56, i64 noundef 6) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit74

bb.p:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.bp, ptr noundef nonnull align 1 dereferenceable(6) @.str.56, i64 6, i1 false)
  %i.bv = load ptr, ptr %i.bo, align 8, !tbaa !41
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 6
  store ptr %i.bw, ptr %i.bo, align 8, !tbaa !41
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit74

_ZN4llvm11raw_ostreamlsEPKc.exit74:               ; preds = %bb.o, %bb.p
  %i.bx = load i8, ptr %i.ae, align 8, !tbaa !474, !range !31, !noundef !32
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.q, label %bb.x

bb.q:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit74
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %11 = load ptr, ptr %10, align 8, !tbaa !25     ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !64 ; 2 uses
  %12 = zext i32 %i.ca to i64
  %.idx = shl nuw nsw i64 %12, 3                  ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %11, i64 %.idx ; 3 uses
  %.not218 = icmp eq i32 %i.ca, 0
  br i1 %.not218, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.q
  %14 = add nsw i64 %.idx, -8                     ; 3 uses
  %15 = lshr exact i64 %14, 3
  %umin = call i64 @llvm.umin.i64(i64 %15, i64 63)
  %16 = add nuw nsw i64 %umin, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %14, 24
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check251 = icmp ult i64 %14, 248
  br i1 %min.iters.check251, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %17 = and i64 %16, 28
  %n.vec = and i64 %16, 96                        ; 5 uses
  %18 = shl nuw nsw i64 %n.vec, 3
  %19 = getelementptr i8, ptr %11, i64 %18        ; 2 uses
  %20 = trunc nuw nsw i64 %n.vec to i32           ; 2 uses
  %broadcast.splatinsert = insertelement <16 x ptr> poison, ptr %13, i64 0
  %broadcast.splat = shufflevector <16 x ptr> %broadcast.splatinsert, <16 x ptr> poison, <16 x i32> zeroinitializer
  %21 = icmp eq i64 %n.vec, 32
  %ptr.ind = getelementptr i8, ptr %11, i64 256
  %pointer.phi.lcssa = select i1 %21, ptr %11, ptr %ptr.ind
  %vector.gep = getelementptr i8, ptr %pointer.phi.lcssa, <16 x i64> <i64 0, i64 8, i64 16, i64 24, i64 32, i64 40, i64 48, i64 56, i64 64, i64 72, i64 80, i64 88, i64 96, i64 104, i64 112, i64 120>
  %wide.gep = getelementptr i8, <16 x ptr> %vector.gep, i64 136
  %22 = icmp ne <16 x ptr> %wide.gep, %broadcast.splat
  %23 = extractelement <16 x i1> %22, i64 15
  %cmp.n = icmp eq i64 %16, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %vector.ph
  %min.epilog.iters.check = icmp eq i64 %17, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !908

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi ptr [ %19, %vec.epilog.iter.check ], [ %11, %vector.main.loop.iter.check ]
  %n.vec252 = and i64 %16, 124                    ; 4 uses
  %24 = shl nuw nsw i64 %n.vec252, 3
  %25 = getelementptr i8, ptr %11, i64 %24
  %26 = trunc nuw nsw i64 %n.vec252 to i32        ; 2 uses
  %broadcast.splatinsert253 = insertelement <4 x ptr> poison, ptr %13, i64 0
  %broadcast.splat254 = shufflevector <4 x ptr> %broadcast.splatinsert253, <4 x ptr> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index255 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next258, %vec.epilog.vector.body ]
  %pointer.phi256 = phi ptr [ %bc.resume.val, %vec.epilog.ph ], [ %ptr.ind259, %vec.epilog.vector.body ] ; 2 uses
  %index.next258 = add nuw i64 %index255, 4       ; 2 uses
  %ptr.ind259 = getelementptr i8, ptr %pointer.phi256, i64 32
  %27 = icmp eq i64 %index.next258, %n.vec252
  br i1 %27, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !899

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %vector.gep257 = getelementptr i8, ptr %pointer.phi256, <4 x i64> <i64 0, i64 8, i64 16, i64 24>
  %wide.gep260 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep257, i64 8
  %28 = icmp ne <4 x ptr> %wide.gep260, %broadcast.splat254
  %29 = extractelement <4 x i1> %28, i64 3
  %cmp.n261 = icmp eq i64 %16, %n.vec252
  br i1 %cmp.n261, label %._crit_edge.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.054208.ph = phi ptr [ %11, %iter.check ], [ %19, %vec.epilog.iter.check ], [ %25, %vec.epilog.middle.block ]
  %.055207.ph = phi i32 [ 0, %iter.check ], [ %20, %vec.epilog.iter.check ], [ %26, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.054208 = phi ptr [ %30, %.lr.ph ], [ %.054208.ph, %.lr.ph.preheader ]
  %.055207 = phi i32 [ %31, %.lr.ph ], [ %.055207.ph, %.lr.ph.preheader ]
  %30 = getelementptr inbounds nuw i8, ptr %.054208, i64 8 ; 2 uses
  %31 = add nuw nsw i32 %.055207, 1               ; 3 uses
  %32 = icmp ne ptr %30, %13                      ; 2 uses
  %33 = icmp ne i32 %31, 64
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !900

._crit_edge.loopexit:                             ; preds = %.lr.ph, %vec.epilog.middle.block, %vector.ph
  %.lcssa250 = phi i32 [ %26, %vec.epilog.middle.block ], [ %20, %vector.ph ], [ %31, %.lr.ph ]
  %.lcssa249 = phi i1 [ %29, %vec.epilog.middle.block ], [ %23, %vector.ph ], [ %32, %.lr.ph ]
  %35 = zext i1 %.lcssa249 to i32
  %36 = add nuw i32 %.lcssa250, %35
  %37 = zext i32 %36 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.q
  %spec.select = phi i64 [ 1, %bb.q ], [ %37, %._crit_edge.loopexit ]
  %i.cb = load ptr, ptr %i.f, align 8, !tbaa !476, !nonnull !32, !align !35 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !40
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 32 ; 3 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !41 ; 2 uses
  %i.cg = ptrtoint ptr %i.cd to i64
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = icmp ult i64 %i.ci, 49
  br i1 %i.cj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge
  %i.ck = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.cb, ptr noundef nonnull @.str.57, i64 noundef 49) #22 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !41
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit77

bb.s:                                             ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.cf, ptr noundef nonnull align 1 dereferenceable(49) @.str.57, i64 49, i1 false)
  %i.cl = load ptr, ptr %i.ce, align 8, !tbaa !41
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 49 ; 2 uses
  store ptr %i.cm, ptr %i.ce, align 8, !tbaa !41
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit77

_ZN4llvm11raw_ostreamlsEPKc.exit77:               ; preds = %bb.r, %bb.s
  %i.cn = phi ptr [ %.pre, %bb.r ], [ %i.cm, %bb.s ] ; 2 uses
  %.0.i.i76 = phi ptr [ %i.ck, %bb.r ], [ %i.cb, %bb.s ] ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i.i76, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !40
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %i.cn to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = icmp ult i64 %i.cs, 47
  br i1 %i.ct, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit77
  %i.cu = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i76, ptr noundef nonnull @.str.58, i64 noundef 47) #22
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit80

bb.u:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit77
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.i.i76, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %i.cn, ptr noundef nonnull align 1 dereferenceable(47) @.str.58, i64 47, i1 false)
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !41
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 47
  store ptr %i.cx, ptr %i.cv, align 8, !tbaa !41
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit80

_ZN4llvm11raw_ostreamlsEPKc.exit80:               ; preds = %bb.t, %bb.u
  %.0.i.i79 = phi ptr [ %i.cu, %bb.t ], [ %.0.i.i76, %bb.u ]
  %i.cy = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i79, i64 noundef %spec.select) #22 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !40
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 32 ; 3 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !41 ; 2 uses
  %i.dd = ptrtoint ptr %i.da to i64
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = sub i64 %i.dd, %i.de
  %i.dg = icmp ult i64 %i.df, 2
  br i1 %i.dg, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit80
  %i.dh = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.cy, ptr noundef nonnull @.str.59, i64 noundef 2) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit83

bb.w:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit80
  store i16 15906, ptr %i.dc, align 1
  %i.di = load ptr, ptr %i.db, align 8, !tbaa !41
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 2
  store ptr %i.dj, ptr %i.db, align 8, !tbaa !41
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit83

bb.x:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit74
  %i.dk = load ptr, ptr %i.f, align 8, !tbaa !476, !nonnull !32, !align !35 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !40
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 32 ; 3 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !41 ; 2 uses
  %i.dp = ptrtoint ptr %i.dm to i64
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = icmp ult i64 %i.dr, 2
  br i1 %i.ds, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dt = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.dk, ptr noundef nonnull @.str.60, i64 noundef 2) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit83

bb.z:                                             ; preds = %bb.x
  store i16 31522, ptr %i.do, align 1
  %i.du = load ptr, ptr %i.dn, align 8, !tbaa !41
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 2
  store ptr %i.dv, ptr %i.dn, align 8, !tbaa !41
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit83

_ZN4llvm11raw_ostreamlsEPKc.exit83:               ; preds = %bb.v, %bb.w, %bb.y, %bb.z
  %i.dw = load i8, ptr %i.ae, align 8, !tbaa !474, !range !31, !noundef !32
  %i.dx = trunc nuw i8 %i.dw to i1
  %i.dy = load ptr, ptr %i.f, align 8, !tbaa !476, !nonnull !32, !align !35 ; 2 uses
  br i1 %i.dx, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit83
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.dz = load ptr, ptr %i.b, align 8, !tbaa !475, !nonnull !32, !align !35
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !309
  call void @_ZN4llvm14DOTGraphTraitsIPNS_25MachineBlockFrequencyInfoEE12getNodeLabelB5cxx11EPKNS_17MachineBasicBlockEPKS1_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %1, ptr noundef %i.ea)
  %i.eb = load ptr, ptr %5, align 8, !tbaa !76
  %i.ec = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !75
  %i.ee = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.dy, ptr noundef %i.eb, i64 noundef %i.ed) #22 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !40
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 32 ; 3 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !41 ; 2 uses
  %i.ej = ptrtoint ptr %i.eg to i64
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = sub i64 %i.ej, %i.ek
  %i.em = icmp ult i64 %i.el, 5
  br i1 %i.em, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.en = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ee, ptr noundef nonnull @.str.61, i64 noundef 5) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit89

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.ei, ptr noundef nonnull align 1 dereferenceable(5) @.str.61, i64 5, i1 false)
  %i.eo = load ptr, ptr %i.eh, align 8, !tbaa !41
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 5
  store ptr %i.ep, ptr %i.eh, align 8, !tbaa !41
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit89

_ZN4llvm11raw_ostreamlsEPKc.exit89:               ; preds = %bb.ab, %bb.ac
  %i.eq = load ptr, ptr %5, align 8, !tbaa !76    ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.es = icmp eq ptr %i.eq, %i.er
  br i1 %i.es, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit89
  %i.et = load i64, ptr %i.er, align 8, !tbaa !42
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.eu) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit89, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.ae

bb.ad:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit83
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.ev = load ptr, ptr %i.b, align 8, !tbaa !475, !nonnull !32, !align !35
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !309
  call void @_ZN4llvm14DOTGraphTraitsIPNS_25MachineBlockFrequencyInfoEE12getNodeLabelB5cxx11EPKNS_17MachineBasicBlockEPKS1_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %1, ptr noundef %i.ew)
  call void @_ZN4llvm3DOT12EscapeStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7) #22
  %i.ex = load ptr, ptr %6, align 8, !tbaa !76
  %i.ey = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !75
  %i.fa = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.dy, ptr noundef %i.ex, i64 noundef %i.ez) #22 ; 0 uses
  %i.fb = load ptr, ptr %6, align 8, !tbaa !76    ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.fd = icmp eq ptr %i.fb, %i.fc
  br i1 %i.fd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90: ; preds = %bb.ad
  %i.fe = load i64, ptr %i.fc, align 8, !tbaa !42
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.ff) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90
  %i.fg = load ptr, ptr %7, align 8, !tbaa !76    ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.fi = icmp eq ptr %i.fg, %i.fh
  br i1 %i.fi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92
  %i.fj = load i64, ptr %i.fh, align 8, !tbaa !42
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fk) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.fl = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.fl, ptr %8, align 8, !tbaa !310
  %i.fm = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.fm, align 8, !tbaa !75
  store i8 0, ptr %i.fl, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.fn = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 0, ptr %i.fn, align 8, !tbaa !480
  %i.fo = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i8 0, ptr %i.fo, align 8, !tbaa !481
  %i.fp = getelementptr inbounds nuw i8, ptr %9, i64 44
  store i32 1, ptr %i.fp, align 4, !tbaa !482
  %i.fq = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fq, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %9, align 8, !tbaa !20
  %i.fr = getelementptr inbounds nuw i8, ptr %9, i64 48
  store ptr %8, ptr %i.fr, align 8, !tbaa !484
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef null, i64 noundef 0, i32 noundef 0) #22
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.fu = load i8, ptr %i.ae, align 8, !tbaa !474, !range !31, !noundef !32
  %i.fv = trunc nuw i8 %i.fu to i1
  br i1 %i.fv, label %bb.af, label %_ZN4llvm15GraphWriterBaseIPNS_25MachineBlockFrequencyInfoENS_11GraphWriterIS2_EEE19getEdgeSourceLabelsERNS_11raw_ostreamEPKNS_17MachineBasicBlockE.exit

bb.af:                                            ; preds = %bb.ae
  %i.fw = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !40
  %i.fy = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !41 ; 2 uses
  %i.ga = ptrtoint ptr %i.fx to i64
  %i.gb = ptrtoint ptr %i.fz to i64
  %i.gc = sub i64 %i.ga, %i.gb
  %i.gd = icmp ult i64 %i.gc, 9
  br i1 %i.gd, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ge = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str.76, i64 noundef 9) #22 ; 0 uses
  br label %_ZN4llvm15GraphWriterBaseIPNS_25MachineBlockFrequencyInfoENS_11GraphWriterIS2_EEE19getEdgeSourceLabelsERNS_11raw_ostreamEPKNS_17MachineBasicBlockE.exit

bb.ah:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.fz, ptr noundef nonnull align 1 dereferenceable(9) @.str.76, i64 9, i1 false)
  %i.gf = load ptr, ptr %i.fy, align 8, !tbaa !41
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 9
  store ptr %i.gg, ptr %i.fy, align 8, !tbaa !41
  br label %_ZN4llvm15GraphWriterBaseIPNS_25MachineBlockFrequencyInfoENS_11GraphWriterIS2_EEE19getEdgeSourceLabelsERNS_11raw_ostreamEPKNS_17MachineBasicBlockE.exit

_ZN4llvm15GraphWriterBaseIPNS_25MachineBlockFrequencyInfoENS_11GraphWriterIS2_EEE19getEdgeSourceLabelsERNS_11raw_ostreamEPKNS_17MachineBasicBlockE.exit: ; preds = %bb.ae, %bb.ag, %bb.ah
  %i.gh = load i8, ptr %i.ae, align 8, !tbaa !474, !range !31, !noundef !32
  %i.gi = trunc nuw i8 %i.gh to i1
  %i.gj = load ptr, ptr %i.f, align 8, !tbaa !476, !nonnull !32, !align !35 ; 4 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 24
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !40
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 32 ; 5 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !41 ; 3 uses
  %i.go = ptrtoint ptr %i.gl to i64
  %i.gp = ptrtoint ptr %i.gn to i64
  %i.gq = sub i64 %i.go, %i.gp                    ; 2 uses
  br i1 %i.gi, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %_ZN4llvm15GraphWriterBaseIPNS_25MachineBlockFrequencyInfoENS_11GraphWriterIS2_EEE19getEdgeSourceLabelsERNS_11raw_ostreamEPKNS_17MachineBasicBlockE.exit
  %i.gr = icmp ult i64 %i.gq, 14
  br i1 %i.gr, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.gs = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.gj, ptr noundef nonnull @.str.69, i64 noundef 14) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit185

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.gn, ptr noundef nonnull align 1 dereferenceable(14) @.str.69, i64 14, i1 false)
  %i.gt = load ptr, ptr %i.gm, align 8, !tbaa !41
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 14
  store ptr %i.gu, ptr %i.gm, align 8, !tbaa !41
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit185

bb.al:                                            ; preds = %_ZN4llvm15GraphWriterBaseIPNS_25MachineBlockFrequencyInfoENS_11GraphWriterIS2_EEE19getEdgeSourceLabelsERNS_11raw_ostreamEPKNS_17MachineBasicBlockE.exit
  %i.gv = icmp ult i64 %i.gq, 2
  br i1 %i.gv, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.gw = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.gj, ptr noundef nonnull @.str.70, i64 noundef 2) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit185

bb.an:                                            ; preds = %bb.al
  store i16 8829, ptr %i.gn, align 1
  %i.gx = load ptr, ptr %i.gm, align 8, !tbaa !41
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 2
  store ptr %i.gy, ptr %i.gm, align 8, !tbaa !41
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit185

_ZN4llvm11raw_ostreamlsEPKc.exit185:              ; preds = %bb.an, %bb.am, %bb.ak, %bb.aj
  %i.gz = load ptr, ptr %i.f, align 8, !tbaa !476, !nonnull !32, !align !35 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !40
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 32 ; 3 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !41 ; 2 uses
  %i.he = ptrtoint ptr %i.hb to i64
  %i.hf = ptrtoint ptr %i.hd to i64
  %i.hg = sub i64 %i.he, %i.hf
  %i.hh = icmp ult i64 %i.hg, 3
  br i1 %i.hh, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit185
  %i.hi = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.gz, ptr noundef nonnull @.str.71, i64 noundef 3) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit191

bb.ap:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit185
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.hd, ptr noundef nonnull align 1 dereferenceable(3) @.str.71, i64 3, i1 false)
  %i.hj = load ptr, ptr %i.hc, align 8, !tbaa !41
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 3
  store ptr %i.hk, ptr %i.hc, align 8, !tbaa !41
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit191

_ZN4llvm11raw_ostreamlsEPKc.exit191:              ; preds = %bb.ao, %bb.ap
  %i.hl = load ptr, ptr %i.fs, align 8, !tbaa !25 ; 3 uses
  %i.hm = load i32, ptr %i.ft, align 8, !tbaa !64 ; 2 uses
  %i.hn = zext i32 %i.hm to i64
  %.idx220 = shl nuw nsw i64 %i.hn, 3
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 %.idx220 ; 3 uses
  %.not219 = icmp eq i32 %i.hm, 0
  br i1 %.not219, label %.preheader, label %.lr.ph212

.lr.ph212:                                        ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit191
  %i.hp = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %bb.aq

.preheader:                                       ; preds = %_ZN4llvm15GraphWriterBaseIPNS_25MachineBlockFrequencyInfoENS_11GraphWriterIS2_EEE9writeEdgeEPKNS_17MachineBasicBlockEjPKPS6_.exit, %_ZN4llvm11raw_ostreamlsEPKc.exit191
  %.052.lcssa = phi ptr [ %i.hl, %_ZN4llvm11raw_ostreamlsEPKc.exit191 ], [ %i.id, %_ZN4llvm15GraphWriterBaseIPNS_25MachineBlockFrequencyInfoENS_11GraphWriterIS2_EEE9writeEdgeEPKNS_17MachineBasicBlockEjPKPS6_.exit ] ; 2 uses
  %.not214 = icmp eq ptr %.052.lcssa, %i.ho
  br i1 %.not214, label %._crit_edge217, label %.lr.ph216

.lr.ph216:                                        ; preds = %.preheader
  %i.hq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.as

bb.aq:                                            ; preds = %.lr.ph212, %_ZN4llvm15GraphWriterBaseIPNS_25MachineBlockFrequencyInfoENS_11GraphWriterIS2_EEE9writeEdgeEPKNS_17MachineBasicBlockEjPKPS6_.exit
  %.0211 = phi i32 [ 0, %.lr.ph212 ], [ %i.ie, %_ZN4llvm15GraphWriterBaseIPNS_25MachineBlockFrequencyInfoENS_11GraphWriterIS2_EEE9writeEdgeEPKNS_17MachineBasicBlockEjPKPS6_.exit ]
  %.052210 = phi ptr [ %i.hl, %.lr.ph212 ], [ %i.id, %_ZN4llvm15GraphWriterBaseIPNS_25MachineBlockFrequencyInfoENS_11GraphWriterIS2_EEE9writeEdgeEPKNS_17MachineBasicBlockEjPKPS6_.exit ] ; 3 uses
  %i.hr = load ptr, ptr %.052210, align 8, !tbaa !329 ; 2 uses
  %.not.i192 = icmp eq ptr %i.hr, null
  br i1 %.not.i192, label %_ZN4llvm15GraphWriterBaseIPNS_25MachineBlockFrequencyInfoENS_11GraphWriterIS2_EEE9writeEdgeEPKNS_17MachineBasicBlockEjPKPS6_.exit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.hs = load ptr, ptr %i.b, align 8, !tbaa !475, !nonnull !32, !align !35
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !309 ; 2 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !44, !noalias !911 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.hu, null
  br i1 %.not.i.i.i, label %_ZN4llvm14DOTGraphTraitsIPNS_25MachineBlockFrequencyInfoEE17getEdgeAttributesB5cxx11EPKNS_17MachineBasicBlockEPKPS4_PKS1_.exit.i, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 112
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !118, !noalias !911
  br label %_ZN4llvm14DOTGraphTraitsIPNS_25MachineBlockFrequencyInfoEE17getEdgeAttributesB5cxx11EPKNS_17MachineBasicBlockEPKPS4_PKS1_.exit.i

_ZN4llvm14DOTGraphTraitsIPNS_25MachineBlockFrequencyInfoEE17getEdgeAttributesB5cxx11EPKNS_17MachineBasicBlockEPKPS4_PKS1_.exit.i: ; preds = %bb.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.hx = phi ptr [ %i.hw, %bb.ar ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  %i.hy = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm18ViewHotFreqPercentE, i64 120), align 8, !tbaa !450, !noalias !911
  call void @_ZN4llvm21BFIDOTGraphTraitsBaseINS_25MachineBlockFrequencyInfoENS_28MachineBranchProbabilityInfoEE17getEdgeAttributesB5cxx11EPKNS_17MachineBasicBlockEPKPS4_PKS1_PKS2_j(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %1, ptr noundef nonnull %.052210, ptr noundef nonnull %i.ht, ptr noundef %i.hx, i32 noundef %i.hy)
  call void @_ZN4llvm15GraphWriterBaseIPNS_25MachineBlockFrequencyInfoENS_11GraphWriterIS2_EEE8emitEdgeEPKviS7_iRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i32 noundef -1, ptr noundef nonnull %i.hr, i32 noundef -1, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.hz = load ptr, ptr %3, align 8, !tbaa !76    ; 2 uses
  %i.ia = icmp eq ptr %i.hz, %i.hp
  br i1 %i.ia, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i: ; preds = %_ZN4llvm14DOTGraphTraitsIPNS_25MachineBlockFrequencyInfoEE17getEdgeAttributesB5cxx11EPKNS_17MachineBasicBlockEPKPS4_PKS1_.exit.i
  %i.ib = load i64, ptr %i.hp, align 8, !tbaa !42
  %i.ic = add i64 %i.ib, 1
  call void @_ZdlPvm(ptr noundef %i.hz, i64 noundef %i.ic) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i: ; preds = %_ZN4llvm14DOTGraphTraitsIPNS_25MachineBlockFrequencyInfoEE17getEdgeAttributesB5cxx11EPKNS_17MachineBasicBlockEPKPS4_PKS1_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZN4llvm15GraphWriterBaseIPNS_25MachineBlockFrequencyInfoENS_11GraphWriterIS2_EEE9writeEdgeEPKNS_17MachineBasicBlockEjPKPS6_.exit

_ZN4llvm15GraphWriterBaseIPNS_25MachineBlockFrequencyInfoENS_11GraphWriterIS2_EEE9writeEdgeEPKNS_17MachineBasicBlockEjPKPS6_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i, %bb.aq
  %i.id = getelementptr inbounds nuw i8, ptr %.052210, i64 8 ; 3 uses
  %i.ie = add nuw nsw i32 %.0211, 1               ; 2 uses
  %i.if = icmp ne ptr %i.id, %i.ho
  %i.ig = icmp ne i32 %i.ie, 64
  %i.ih = select i1 %i.if, i1 %i.ig, i1 false
  br i1 %i.ih, label %bb.aq, label %.preheader, !llvm.loop !903

bb.as:                                            ; preds = %.lr.ph216, %_ZN4llvm15GraphWriterBaseIPNS_25MachineBlockFrequencyInfoENS_11GraphWriterIS2_EEE9writeEdgeEPKNS_17MachineBasicBlockEjPKPS6_.exit200
  %.1215 = phi ptr [ %.052.lcssa, %.lr.ph216 ], [ %i.iu, %_ZN4llvm15GraphWriterBaseIPNS_25MachineBlockFrequencyInfoENS_11GraphWriterIS2_EEE9writeEdgeEPKNS_17MachineBasicBlockEjPKPS6_.exit200 ] ; 3 uses
  %i.ii = load ptr, ptr %.1215, align 8, !tbaa !329 ; 2 uses
  %.not.i193 = icmp eq ptr %i.ii, null
  br i1 %.not.i193, label %_ZN4llvm15GraphWriterBaseIPNS_25MachineBlockFrequencyInfoENS_11GraphWriterIS2_EEE9writeEdgeEPKNS_17MachineBasicBlockEjPKPS6_.exit200, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i194

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i194: ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.ij = load ptr, ptr %i.b, align 8, !tbaa !475, !nonnull !32, !align !35
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !309 ; 2 uses
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !44, !noalias !912 ; 2 uses
  %.not.i.i.i195 = icmp eq ptr %i.il, null
  br i1 %.not.i.i.i195, label %_ZN4llvm14DOTGraphTraitsIPNS_25MachineBlockFrequencyInfoEE17getEdgeAttributesB5cxx11EPKNS_17MachineBasicBlockEPKPS4_PKS1_.exit.i196, label %bb.at

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i194
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 112
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !118, !noalias !912
  br label %_ZN4llvm14DOTGraphTraitsIPNS_25MachineBlockFrequencyInfoEE17getEdgeAttributesB5cxx11EPKNS_17MachineBasicBlockEPKPS4_PKS1_.exit.i196

_ZN4llvm14DOTGraphTraitsIPNS_25MachineBlockFrequencyInfoEE17getEdgeAttributesB5cxx11EPKNS_17MachineBasicBlockEPKPS4_PKS1_.exit.i196: ; preds = %bb.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i194
  %i.io = phi ptr [ %i.in, %bb.at ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i194 ]
  %i.ip = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm18ViewHotFreqPercentE, i64 120), align 8, !tbaa !450, !noalias !912
  call void @_ZN4llvm21BFIDOTGraphTraitsBaseINS_25MachineBlockFrequencyInfoENS_28MachineBranchProbabilityInfoEE17getEdgeAttributesB5cxx11EPKNS_17MachineBasicBlockEPKPS4_PKS1_PKS2_j(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %1, ptr noundef nonnull %.1215, ptr noundef nonnull %i.ik, ptr noundef %i.io, i32 noundef %i.ip)
  call void @_ZN4llvm15GraphWriterBaseIPNS_25MachineBlockFrequencyInfoENS_11GraphWriterIS2_EEE8emitEdgeEPKviS7_iRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i32 noundef -1, ptr noundef nonnull %i.ii, i32 noundef -1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.iq = load ptr, ptr %2, align 8, !tbaa !76    ; 2 uses
  %i.ir = icmp eq ptr %i.iq, %i.hq
  br i1 %i.ir, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i198, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i197

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i197: ; preds = %_ZN4llvm14DOTGraphTraitsIPNS_25MachineBlockFrequencyInfoEE17getEdgeAttributesB5cxx11EPKNS_17MachineBasicBlockEPKPS4_PKS1_.exit.i196
  %i.is = load i64, ptr %i.hq, align 8, !tbaa !42
  %i.it = add i64 %i.is, 1
  call void @_ZdlPvm(ptr noundef %i.iq, i64 noundef %i.it) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i198

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i198: ; preds = %_ZN4llvm14DOTGraphTraitsIPNS_25MachineBlockFrequencyInfoEE17getEdgeAttributesB5cxx11EPKNS_17MachineBasicBlockEPKPS4_PKS1_.exit.i196, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i197
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %_ZN4llvm15GraphWriterBaseIPNS_25MachineBlockFrequencyInfoENS_11GraphWriterIS2_EEE9writeEdgeEPKNS_17MachineBasicBlockEjPKPS6_.exit200

_ZN4llvm15GraphWriterBaseIPNS_25MachineBlockFrequencyInfoENS_11GraphWriterIS2_EEE9writeEdgeEPKNS_17MachineBasicBlockEjPKPS6_.exit200: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i198, %bb.as
  %i.iu = getelementptr inbounds nuw i8, ptr %.1215, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.iu, %i.ho
  br i1 %.not, label %._crit_edge217, label %bb.as, !llvm.loop !906

._crit_edge217:                                   ; preds = %_ZN4llvm15GraphWriterBaseIPNS_25MachineBlockFrequencyInfoENS_11GraphWriterIS2_EEE9writeEdgeEPKNS_17MachineBasicBlockEjPKPS6_.exit200, %.preheader
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.iv = load ptr, ptr %8, align 8, !tbaa !76    ; 2 uses
  %i.iw = icmp eq ptr %i.iv, %i.fl
  br i1 %i.iw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201: ; preds = %._crit_edge217
  %i.ix = load i64, ptr %i.fl, align 8, !tbaa !42
  %i.iy = add i64 %i.ix, 1
  call void @_ZdlPvm(ptr noundef %i.iv, i64 noundef %i.iy) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203: ; preds = %._crit_edge217, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.iz = load ptr, ptr %4, align 8, !tbaa !76    ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.jb = icmp eq ptr %i.iz, %i.ja
  br i1 %i.jb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203
  %i.jc = load i64, ptr %i.ja, align 8, !tbaa !42
  %i.jd = add i64 %i.jc, 1
  call void @_ZdlPvm(ptr noundef %i.iz, i64 noundef %i.jd) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKv(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm14DOTGraphTraitsIPNS_25MachineBlockFrequencyInfoEE12getNodeLabelB5cxx11EPKNS_17MachineBasicBlockEPKS1_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !329
  %i.c = load i8, ptr %1, align 8, !tbaa !914, !range !31, !noundef !32
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !915  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !916  ; 2 uses
  %.not = icmp ne ptr %i.h, null                  ; 2 uses
  %.not10 = icmp eq ptr %i.f, %i.h
  %or.cond = and i1 %.not, %.not10
  br i1 %or.cond, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.not, label %bb.d, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E5clearEv.exit

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !485  ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E5clearEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = shl i32 %i.k, 2
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.o = load i32, ptr %i.n, align 4, !tbaa !477  ; 3 uses
  %i.p = icmp ult i32 %i.m, %i.o
  %i.q = icmp ugt i32 %i.o, 64
  %or.cond.i = and i1 %i.p, %i.q
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E16shrink_and_clearEv(ptr noundef nonnull align 1 dereferenceable(1) %i.i)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E5clearEv.exit

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !486
  %i.t = zext i32 %i.o to i64
  %i.u = add nuw nsw i64 %i.t, 31
  %i.v = lshr i64 %i.u, 3
  %i.w = and i64 %i.v, 1073741820
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.s, i8 0, i64 %i.w, i1 false)
  store i32 0, ptr %i.j, align 8, !tbaa !485
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E5clearEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E5clearEv.exit: ; preds = %bb.g, %bb.f, %bb.d, %bb.c
  store ptr %i.f, ptr %i.g, align 8, !tbaa !916
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 304
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 296 ; 2 uses
  %.sroa.013.017 = load ptr, ptr %i.x, align 8, !tbaa !256 ; 2 uses
  %.not1618 = icmp eq ptr %.sroa.013.017, %i.y
  br i1 %.not1618, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E5clearEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.h
  %.sroa.013.020 = phi ptr [ %.sroa.013.017, %.lr.ph ], [ %.sroa.013.0, %bb.h ] ; 2 uses
  %.019 = phi i32 [ 0, %.lr.ph ], [ %i.ad, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store ptr %.sroa.013.020, ptr %i.b, align 8, !tbaa !329
  %i.aa = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.aa, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  store i32 %.019, ptr %i.ab, align 4, !tbaa !307
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.013.020, i64 8
  %i.ad = add nuw nsw i32 %.019, 1
  %.sroa.013.0 = load ptr, ptr %i.ac, align 8, !tbaa !256 ; 2 uses
  %.not16 = icmp eq ptr %.sroa.013.0, %i.y
  br i1 %.not16, label %.loopexit, label %bb.h, !llvm.loop !913

.loopexit:                                        ; preds = %bb.h, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E5clearEv.exit, %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i12 = extractvalue { ptr, i8 } %i.af, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i12, i64 8
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !307
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !329
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %bb.a
  %i.ai = phi ptr [ %2, %bb.a ], [ %.pre, %.loopexit ]
  %.08 = phi i32 [ -1, %bb.a ], [ %i.ah, %.loopexit ]
  %i.aj = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm22ViewBlockLayoutWithBFIE, i64 120), align 8, !tbaa !72 ; 2 uses
  %.not.i = icmp eq i32 %i.aj, 0
  %i.ak = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL34ViewMachineBlockFreqPropagationDAG, i64 120), align 8
  %spec.select.i = select i1 %.not.i, i32 %i.ak, i32 %i.aj
  call void @_ZN4llvm21BFIDOTGraphTraitsBaseINS_25MachineBlockFrequencyInfoENS_28MachineBranchProbabilityInfoEE12getNodeLabelB5cxx11EPKNS_17MachineBasicBlockEPKS1_NS_9GVDAGTypeEi(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.ai, ptr noundef %3, i32 noundef %spec.select.i, i32 noundef %.08)
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm21BFIDOTGraphTraitsBaseINS_25MachineBlockFrequencyInfoENS_28MachineBranchProbabilityInfoEE17getNodeAttributesB5cxx11EPKNS_17MachineBasicBlockEPKS1_j(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %5 = alloca %"struct.llvm::BlockFrequencyInfoImplBase::BlockNode", align 4 ; 4 uses
  %6 = alloca %"struct.llvm::BlockFrequencyInfoImplBase::BlockNode", align 4 ; 4 uses
  %7 = alloca %"class.llvm::BlockFrequency", align 8 ; 4 uses
  %8 = alloca %"class.llvm::raw_string_ostream", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !310
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !75
  store i8 0, ptr %i.a, align 8, !tbaa !42
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !487  ; 2 uses
  %.not11 = icmp eq i64 %i.d, 0
  %.pre30 = load ptr, ptr %3, align 8, !tbaa !44  ; 3 uses
  br i1 %.not11, label %_ZN4llvm11GraphTraitsIPNS_25MachineBlockFrequencyInfoEE9nodes_endEPKS1_.exit, label %.loopexit

_ZN4llvm11GraphTraitsIPNS_25MachineBlockFrequencyInfoEE9nodes_endEPKS1_.exit: ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.pre30, i64 128
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !120  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 304
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 296 ; 2 uses
  %.sroa.022.026 = load ptr, ptr %i.g, align 8, !tbaa !256 ; 2 uses
  %.not2527 = icmp eq ptr %.sroa.022.026, %i.h
  br i1 %.not2527, label %.loopexit.thread, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %_ZN4llvm11GraphTraitsIPNS_25MachineBlockFrequencyInfoEE9nodes_endEPKS1_.exit, %_ZNK4llvm25MachineBlockFrequencyInfo12getBlockFreqEPKNS_17MachineBasicBlockE.exit
  %i.i = phi i64 [ %.sroa.speculated, %_ZNK4llvm25MachineBlockFrequencyInfo12getBlockFreqEPKNS_17MachineBasicBlockE.exit ], [ 0, %_ZN4llvm11GraphTraitsIPNS_25MachineBlockFrequencyInfoEE9nodes_endEPKS1_.exit ]
  %.sroa.022.028 = phi ptr [ %.sroa.022.0, %_ZNK4llvm25MachineBlockFrequencyInfo12getBlockFreqEPKNS_17MachineBasicBlockE.exit ], [ %.sroa.022.026, %_ZN4llvm11GraphTraitsIPNS_25MachineBlockFrequencyInfoEE9nodes_endEPKS1_.exit ] ; 2 uses
  %i.j = load ptr, ptr %3, align 8, !tbaa !44     ; 4 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZNK4llvm25MachineBlockFrequencyInfo12getBlockFreqEPKNS_17MachineBasicBlockE.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.022.028, i64 220
  %i.l = load i32, ptr %i.k, align 4, !tbaa !306  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 168
  %i.n = load i32, ptr %i.m, align 8, !tbaa !64
  %i.o = icmp ugt i32 %i.n, %i.l
  br i1 %i.o, label %bb.d, label %_ZNK4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE12getBlockFreqEPKS1_.exit.i

bb.d:                                             ; preds = %bb.c
  %i.p = zext i32 %i.l to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 160
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !25
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.p
  %i.t = load i32, ptr %i.s, align 4, !tbaa !307
  br label %_ZNK4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE12getBlockFreqEPKS1_.exit.i

_ZNK4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE12getBlockFreqEPKS1_.exit.i: ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i = phi i32 [ %i.t, %bb.d ], [ -1, %bb.c ]
  store i32 %.sroa.0.0.i.i.i, ptr %6, align 4
  %i.u = call i64 @_ZNK4llvm26BlockFrequencyInfoImplBase12getBlockFreqERKNS0_9BlockNodeE(ptr noundef nonnull align 8 dereferenceable(180) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %.pre = load i64, ptr %i.c, align 8, !tbaa !51
  %i.v = call i64 @llvm.umax.i64(i64 %.pre, i64 %i.u)
  br label %_ZNK4llvm25MachineBlockFrequencyInfo12getBlockFreqEPKNS_17MachineBasicBlockE.exit

_ZNK4llvm25MachineBlockFrequencyInfo12getBlockFreqEPKNS_17MachineBasicBlockE.exit: ; preds = %.lr.ph.split, %_ZNK4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE12getBlockFreqEPKS1_.exit.i
  %.sroa.speculated = phi i64 [ %i.v, %_ZNK4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE12getBlockFreqEPKS1_.exit.i ], [ %i.i, %.lr.ph.split ] ; 3 uses
  store i64 %.sroa.speculated, ptr %i.c, align 8, !tbaa !487
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.022.028, i64 8
  %.sroa.022.0 = load ptr, ptr %i.w, align 8, !tbaa !256 ; 2 uses
  %.not25 = icmp eq ptr %.sroa.022.0, %i.h
  br i1 %.not25, label %.loopexit.loopexit, label %.lr.ph.split, !llvm.loop !917

.loopexit.loopexit:                               ; preds = %_ZNK4llvm25MachineBlockFrequencyInfo12getBlockFreqEPKNS_17MachineBasicBlockE.exit
  %.pre29 = load ptr, ptr %3, align 8, !tbaa !44
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b
  %i.x = phi i64 [ %.sroa.speculated, %.loopexit.loopexit ], [ %i.d, %bb.b ]
  %i.y = phi ptr [ %.pre29, %.loopexit.loopexit ], [ %.pre30, %bb.b ] ; 2 uses
  %.not.i14 = icmp eq ptr %i.y, null
  br i1 %.not.i14, label %_ZNK4llvm25MachineBlockFrequencyInfo12getBlockFreqEPKNS_17MachineBasicBlockE.exit18, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %_ZN4llvm11GraphTraitsIPNS_25MachineBlockFrequencyInfoEE9nodes_endEPKS1_.exit, %.loopexit
  %i.z = phi ptr [ %i.y, %.loopexit ], [ %.pre30, %_ZN4llvm11GraphTraitsIPNS_25MachineBlockFrequencyInfoEE9nodes_endEPKS1_.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 220
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !306 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 168
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !64
  %i.ae = icmp ugt i32 %i.ad, %i.ab
  br i1 %i.ae, label %bb.e, label %_ZNK4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE12getBlockFreqEPKS1_.exit.i15

bb.e:                                             ; preds = %.loopexit.thread
  %i.af = zext i32 %i.ab to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 160
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !25
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.af
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !307
  br label %_ZNK4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE12getBlockFreqEPKS1_.exit.i15

_ZNK4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE12getBlockFreqEPKS1_.exit.i15: ; preds = %bb.e, %.loopexit.thread
  %.sroa.0.0.i.i.i16 = phi i32 [ %i.aj, %bb.e ], [ -1, %.loopexit.thread ]
  store i32 %.sroa.0.0.i.i.i16, ptr %5, align 4
  %i.ak = call i64 @_ZNK4llvm26BlockFrequencyInfoImplBase12getBlockFreqERKNS0_9BlockNodeE(ptr noundef nonnull align 8 dereferenceable(180) %i.z, ptr noundef nonnull align 4 dereferenceable(4) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %.pre31 = load i64, ptr %i.c, align 8, !tbaa !487
  br label %_ZNK4llvm25MachineBlockFrequencyInfo12getBlockFreqEPKNS_17MachineBasicBlockE.exit18

_ZNK4llvm25MachineBlockFrequencyInfo12getBlockFreqEPKNS_17MachineBasicBlockE.exit18: ; preds = %.loopexit, %_ZNK4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE12getBlockFreqEPKS1_.exit.i15
  %i.al = phi i64 [ %.pre31, %_ZNK4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE12getBlockFreqEPKS1_.exit.i15 ], [ %i.x, %.loopexit ]
  %.sroa.0.0.i17 = phi i64 [ %i.ak, %_ZNK4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE12getBlockFreqEPKS1_.exit.i15 ], [ 0, %.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store i64 %i.al, ptr %7, align 8, !tbaa !489
  %i.am = zext i32 %4 to i64
  %i.an = call i32 @_ZN4llvm17BranchProbability20getBranchProbabilityEmm(i64 noundef %i.am, i64 noundef 100) #22
  %i.ao = call i64 @_ZNK4llvm14BlockFrequencymlENS_17BranchProbabilityE(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 %i.an) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.ap = icmp ult i64 %.sroa.0.0.i17, %i.ao
  br i1 %i.ap, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZNK4llvm25MachineBlockFrequencyInfo12getBlockFreqEPKNS_17MachineBasicBlockE.exit18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 0, ptr %i.aq, align 8, !tbaa !480
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i8 0, ptr %i.ar, align 8, !tbaa !481
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 44
  store i32 1, ptr %i.as, align 4, !tbaa !482
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %8, align 8, !tbaa !20
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 48
  store ptr %0, ptr %i.au, align 8, !tbaa !484
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef null, i64 noundef 0, i32 noundef 0) #22
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !40
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !41 ; 2 uses
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = icmp ult i64 %i.bb, 11
  br i1 %i.bc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bd = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull @.str.72, i64 noundef 11) #22 ; 0 uses
  br label %_ZN4llvmlsINS_18raw_string_ostreamEA12_cEENSt9enable_ifIXaantsr3stdE14is_reference_vIT_Esr3stdE12is_base_of_vINS_11raw_ostreamES4_EEOS4_E4typeES6_RKT0_.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.ay, ptr noundef nonnull align 1 dereferenceable(11) @.str.72, i64 11, i1 false)
  %i.be = load ptr, ptr %i.ax, align 8, !tbaa !41
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 11
  store ptr %i.bf, ptr %i.ax, align 8, !tbaa !41
  br label %_ZN4llvmlsINS_18raw_string_ostreamEA12_cEENSt9enable_ifIXaantsr3stdE14is_reference_vIT_Esr3stdE12is_base_of_vINS_11raw_ostreamES4_EEOS4_E4typeES6_RKT0_.exit

_ZN4llvmlsINS_18raw_string_ostreamEA12_cEENSt9enable_ifIXaantsr3stdE14is_reference_vIT_Esr3stdE12is_base_of_vINS_11raw_ostreamES4_EEOS4_E4typeES6_RKT0_.exit: ; preds = %bb.g, %bb.h
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.i

bb.i:                                             ; preds = %_ZN4llvmlsINS_18raw_string_ostreamEA12_cEENSt9enable_ifIXaantsr3stdE14is_reference_vIT_Esr3stdE12is_base_of_vINS_11raw_ostreamES4_EEOS4_E4typeES6_RKT0_.exit, %_ZNK4llvm25MachineBlockFrequencyInfo12getBlockFreqEPKNS_17MachineBasicBlockE.exit18, %bb.a
  ret void
}

declare i32 @_ZN4llvm17BranchProbability20getBranchProbabilityEmm(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm21BFIDOTGraphTraitsBaseINS_25MachineBlockFrequencyInfoENS_28MachineBranchProbabilityInfoEE12getNodeLabelB5cxx11EPKNS_17MachineBasicBlockEPKS1_NS_9GVDAGTypeEi(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %6 = alloca %"struct.llvm::BlockFrequencyInfoImplBase::BlockNode", align 4 ; 4 uses
  %7 = alloca %"struct.llvm::BlockFrequencyInfoImplBase::BlockNode", align 4 ; 4 uses
  %8 = alloca %"struct.llvm::BlockFrequencyInfoImplBase::BlockNode", align 4 ; 4 uses
  %9 = alloca %"class.llvm::raw_string_ostream", align 8 ; 22 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !310
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !75
  store i8 0, ptr %i.a, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 0, ptr %i.c, align 8, !tbaa !480
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i8 0, ptr %i.d, align 8, !tbaa !481
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 44
  store i32 1, ptr %i.e, align 4, !tbaa !482
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %9, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 48
  store ptr %0, ptr %i.g, align 8, !tbaa !484
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef null, i64 noundef 0, i32 noundef 0) #22
  %.not = icmp eq i32 %5, -1
  %i.h = call { ptr, i64 } @_ZNK4llvm17MachineBasicBlock7getNameEv(ptr noundef nonnull align 8 dereferenceable(360) %2) #22 ; 2 uses
  %i.i = extractvalue { ptr, i64 } %i.h, 0        ; 4 uses
  %i.j = extractvalue { ptr, i64 } %i.h, 1        ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !40
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 8 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !41   ; 5 uses
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = icmp ugt i64 %i.j, %i.q                  ; 2 uses
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef %i.i, i64 noundef %i.j) #22 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !41
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.d:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.i, i64 %i.j, i1 false)
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.j ; 2 uses
  store ptr %i.u, ptr %i.m, align 8, !tbaa !41
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.c, %bb.d, %bb.e
  %i.v = phi ptr [ %.pre, %bb.c ], [ %i.u, %bb.e ], [ %i.n, %bb.d ] ; 2 uses
  %.0.i = phi ptr [ %i.s, %bb.c ], [ %9, %bb.e ], [ %9, %bb.d ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !40
  %i.y = icmp eq ptr %i.x, %i.v
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.z = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i, ptr noundef nonnull @.str.24, i64 noundef 1) #22
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.g:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i, i64 32 ; 2 uses
  store i8 91, ptr %i.v, align 1
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !41
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !41
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.f, %bb.g
  %.0.i.i = phi ptr [ %i.z, %bb.f ], [ %.0.i, %bb.g ]
  %i.ad = sext i32 %5 to i64
  %i.ae = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, i64 noundef %i.ad) #22 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !40
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !41 ; 2 uses
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = icmp ult i64 %i.al, 4
  br i1 %i.am, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.an = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef nonnull @.str.73, i64 noundef 4) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit15

bb.i:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  store i32 540680285, ptr %i.ai, align 1
  %i.ao = load ptr, ptr %i.ah, align 8, !tbaa !41
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store ptr %i.ap, ptr %i.ah, align 8, !tbaa !41
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit15

bb.j:                                             ; preds = %bb.a
  br i1 %i.r, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef %i.i, i64 noundef %i.j) #22 ; 2 uses
  %.phi.trans.insert35 = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %.pre36 = load ptr, ptr %.phi.trans.insert35, align 8, !tbaa !41
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit18

bb.l:                                             ; preds = %bb.j
  %.not.i16 = icmp eq i64 %i.j, 0
  br i1 %.not.i16, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit18, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.i, i64 %i.j, i1 false)
  %i.ar = load ptr, ptr %i.m, align 8, !tbaa !41
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.j ; 2 uses
  store ptr %i.as, ptr %i.m, align 8, !tbaa !41
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit18

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit18:    ; preds = %bb.k, %bb.l, %bb.m
  %i.at = phi ptr [ %.pre36, %bb.k ], [ %i.as, %bb.m ], [ %i.n, %bb.l ] ; 2 uses
  %.0.i17 = phi ptr [ %i.aq, %bb.k ], [ %9, %bb.m ], [ %9, %bb.l ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i17, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !40
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = icmp ult i64 %i.ay, 3
  br i1 %i.az, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit18
  %i.ba = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i17, ptr noundef nonnull @.str.74, i64 noundef 3) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit15

bb.o:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit18
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i17, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.at, ptr noundef nonnull align 1 dereferenceable(3) @.str.74, i64 3, i1 false)
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !41
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 3
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !41
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit15

_ZN4llvm11raw_ostreamlsEPKc.exit15:               ; preds = %bb.o, %bb.n, %bb.i, %bb.h
  switch i32 %4, label %_ZN4llvm11raw_ostreamlsEPKc.exit29 [
    i32 1, label %bb.p
    i32 2, label %bb.t
    i32 3, label %bb.w
  ]

bb.p:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit15
  %i.be = load ptr, ptr %3, align 8, !tbaa !44    ; 4 uses
  %.not.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i, label %"_ZNSt17_Function_handlerIFvRN4llvm11raw_ostreamEEZNS0_14printBlockFreqERKNS0_25MachineBlockFrequencyInfoENS0_14BlockFrequencyEE3$_0E9_M_invokeERKSt9_Any_dataS2_.exit", label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22, !noalias !921
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 220
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !306, !noalias !921 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 168
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !64, !noalias !921
  %i.bj = icmp ugt i32 %i.bi, %i.bg
  br i1 %i.bj, label %bb.r, label %_ZN4llvm9PrintableD2Ev.exit

bb.r:                                             ; preds = %bb.q
  %i.bk = zext i32 %i.bg to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 160
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !25, !noalias !921
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bk
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !307, !noalias !921
  br label %_ZN4llvm9PrintableD2Ev.exit

_ZN4llvm9PrintableD2Ev.exit:                      ; preds = %bb.q, %bb.r
  %.sroa.0.0.i.i.i.i = phi i32 [ %i.bo, %bb.r ], [ -1, %bb.q ]
  store i32 %.sroa.0.0.i.i.i.i, ptr %8, align 4, !noalias !921
  %i.bp = call i64 @_ZNK4llvm26BlockFrequencyInfoImplBase12getBlockFreqERKNS0_9BlockNodeE(ptr noundef nonnull align 8 dereferenceable(180) %i.be, ptr noundef nonnull align 4 dereferenceable(4) %8) #22, !noalias !921 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22, !noalias !921
  %.val.val.i.pr = load ptr, ptr %3, align 8, !tbaa !44 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.val.val.i.pr, null
  br i1 %.not.i.i.i.i.i, label %"_ZNSt17_Function_handlerIFvRN4llvm11raw_ostreamEEZNS0_14printBlockFreqERKNS0_25MachineBlockFrequencyInfoENS0_14BlockFrequencyEE3$_0E9_M_invokeERKSt9_Any_dataS2_.exit", label %bb.s

bb.s:                                             ; preds = %_ZN4llvm9PrintableD2Ev.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %.val.val.i.pr, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !315
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !318
  br label %"_ZNSt17_Function_handlerIFvRN4llvm11raw_ostreamEEZNS0_14printBlockFreqERKNS0_25MachineBlockFrequencyInfoENS0_14BlockFrequencyEE3$_0E9_M_invokeERKSt9_Any_dataS2_.exit"

"_ZNSt17_Function_handlerIFvRN4llvm11raw_ostreamEEZNS0_14printBlockFreqERKNS0_25MachineBlockFrequencyInfoENS0_14BlockFrequencyEE3$_0E9_M_invokeERKSt9_Any_dataS2_.exit": ; preds = %bb.p, %_ZN4llvm9PrintableD2Ev.exit, %bb.s
  %.sroa.0.0.i.i50 = phi i64 [ %i.bp, %bb.s ], [ %i.bp, %_ZN4llvm9PrintableD2Ev.exit ], [ 0, %bb.p ]
  %.sroa.0.0.i.i.i.i.i = phi i64 [ %i.bt, %bb.s ], [ 0, %_ZN4llvm9PrintableD2Ev.exit ], [ 0, %bb.p ]
  call void @_ZN4llvm22printRelativeBlockFreqERNS_11raw_ostreamENS_14BlockFrequencyES2_(ptr noundef nonnull align 8 dereferenceable(48) %9, i64 %.sroa.0.0.i.i.i.i.i, i64 %.sroa.0.0.i.i50) #22
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit29

bb.t:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit15
  %i.bu = load ptr, ptr %3, align 8, !tbaa !44    ; 4 uses
  %.not.i23 = icmp eq ptr %i.bu, null
  br i1 %.not.i23, label %_ZNK4llvm25MachineBlockFrequencyInfo12getBlockFreqEPKNS_17MachineBasicBlockE.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 220
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !306 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 168
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !64
  %i.bz = icmp ugt i32 %i.by, %i.bw
  br i1 %i.bz, label %bb.v, label %_ZNK4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE12getBlockFreqEPKS1_.exit.i

bb.v:                                             ; preds = %bb.u
  %i.ca = zext i32 %i.bw to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 160
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !25
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.ca
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !307
  br label %_ZNK4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE12getBlockFreqEPKS1_.exit.i

_ZNK4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE12getBlockFreqEPKS1_.exit.i: ; preds = %bb.v, %bb.u
  %.sroa.0.0.i.i.i = phi i32 [ %i.ce, %bb.v ], [ -1, %bb.u ]
  store i32 %.sroa.0.0.i.i.i, ptr %7, align 4
  %i.cf = call i64 @_ZNK4llvm26BlockFrequencyInfoImplBase12getBlockFreqERKNS0_9BlockNodeE(ptr noundef nonnull align 8 dereferenceable(180) %i.bu, ptr noundef nonnull align 4 dereferenceable(4) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %_ZNK4llvm25MachineBlockFrequencyInfo12getBlockFreqEPKNS_17MachineBasicBlockE.exit

_ZNK4llvm25MachineBlockFrequencyInfo12getBlockFreqEPKNS_17MachineBasicBlockE.exit: ; preds = %bb.t, %_ZNK4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE12getBlockFreqEPKS1_.exit.i
  %.sroa.0.0.i = phi i64 [ %i.cf, %_ZNK4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE12getBlockFreqEPKS1_.exit.i ], [ 0, %bb.t ]
  %i.cg = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %9, i64 noundef %.sroa.0.0.i) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit29

bb.w:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit15
  %i.ch = load ptr, ptr %3, align 8, !tbaa !44    ; 5 uses
  %.not.i24 = icmp eq ptr %i.ch, null
  br i1 %.not.i24, label %_ZNK4llvm25MachineBlockFrequencyInfo20getBlockProfileCountEPKNS_17MachineBasicBlockE.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 128
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !120
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !237, !nonnull !32, !align !35
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 220
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !306 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 168
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !64
  %i.cp = icmp ugt i32 %i.co, %i.cm
  br i1 %i.cp, label %bb.y, label %_ZNK4llvm25MachineBlockFrequencyInfo20getBlockProfileCountEPKNS_17MachineBasicBlockE.exit

bb.y:                                             ; preds = %bb.x
  %i.cq = zext i32 %i.cm to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ch, i64 160
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !25
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.cq
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !307
  br label %_ZNK4llvm25MachineBlockFrequencyInfo20getBlockProfileCountEPKNS_17MachineBasicBlockE.exit

_ZNK4llvm25MachineBlockFrequencyInfo20getBlockProfileCountEPKNS_17MachineBasicBlockE.exit: ; preds = %bb.x, %bb.y
  %.sroa.0.0.i.i.i25 = phi i32 [ %i.cu, %bb.y ], [ -1, %bb.x ]
  store i32 %.sroa.0.0.i.i.i25, ptr %6, align 4
  %i.cv = call { i64, i8 } @_ZNK4llvm26BlockFrequencyInfoImplBase20getBlockProfileCountERKNS_8FunctionERKNS0_9BlockNodeE(ptr noundef nonnull align 8 dereferenceable(180) %i.ch, ptr noundef nonnull align 8 dereferenceable(140) %i.ck, ptr noundef nonnull align 4 dereferenceable(4) %6) #22 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.cw = extractvalue { i64, i8 } %i.cv, 1
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %bb.z, label %_ZNK4llvm25MachineBlockFrequencyInfo20getBlockProfileCountEPKNS_17MachineBasicBlockE.exit.thread

bb.z:                                             ; preds = %_ZNK4llvm25MachineBlockFrequencyInfo20getBlockProfileCountEPKNS_17MachineBasicBlockE.exit
  %i.cy = extractvalue { i64, i8 } %i.cv, 0
  %i.cz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %9, i64 noundef %i.cy) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit29

_ZNK4llvm25MachineBlockFrequencyInfo20getBlockProfileCountEPKNS_17MachineBasicBlockE.exit.thread: ; preds = %bb.w, %_ZNK4llvm25MachineBlockFrequencyInfo20getBlockProfileCountEPKNS_17MachineBasicBlockE.exit
  %i.da = load ptr, ptr %i.k, align 8, !tbaa !40
  %i.db = load ptr, ptr %i.m, align 8, !tbaa !41  ; 2 uses
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = icmp ult i64 %i.de, 7
  br i1 %i.df, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZNK4llvm25MachineBlockFrequencyInfo20getBlockProfileCountEPKNS_17MachineBasicBlockE.exit.thread
  %i.dg = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str.75, i64 noundef 7) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit29

bb.ab:                                            ; preds = %_ZNK4llvm25MachineBlockFrequencyInfo20getBlockProfileCountEPKNS_17MachineBasicBlockE.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.db, ptr noundef nonnull align 1 dereferenceable(7) @.str.75, i64 7, i1 false)
  %i.dh = load ptr, ptr %i.m, align 8, !tbaa !41
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 7
  store ptr %i.di, ptr %i.m, align 8, !tbaa !41
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit29

_ZN4llvm11raw_ostreamlsEPKc.exit29:               ; preds = %bb.z, %bb.aa, %bb.ab, %_ZNK4llvm25MachineBlockFrequencyInfo12getBlockFreqEPKNS_17MachineBasicBlockE.exit, %"_ZNSt17_Function_handlerIFvRN4llvm11raw_ostreamEEZNS0_14printBlockFreqERKNS0_25MachineBlockFrequencyInfoENS0_14BlockFrequencyEE3$_0E9_M_invokeERKSt9_Any_dataS2_.exit", %_ZN4llvm11raw_ostreamlsEPKc.exit15
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E16shrink_and_clearEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !485  ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZNK4llvm8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEE18planShrinkAndClearEv.exit.thread, label %_ZNK4llvm8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEE18planShrinkAndClearEv.exit

_ZNK4llvm8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEE18planShrinkAndClearEv.exit: ; preds = %bb.a
  %i.c = add i32 %i.b, -1
  %i.d = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.c, i1 false)
  %i.e = sub nuw nsw i32 33, %i.d
  %i.f = shl nuw i32 1, %i.e
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.f, i32 64) ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !477  ; 3 uses
  %.not = icmp eq i32 %.sroa.speculated.i, %i.h
  br i1 %.not, label %bb.b, label %bb.c

_ZNK4llvm8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEE18planShrinkAndClearEv.exit.thread: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !477  ; 2 uses
  %.not8 = icmp eq i32 %i.j, 0
  br i1 %.not8, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E9initEmptyEv.exit, label %.thread16

bb.b:                                             ; preds = %_ZNK4llvm8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEE18planShrinkAndClearEv.exit
  store i32 0, ptr %i.a, align 8, !tbaa !485
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !486
  %i.m = zext i32 %.sroa.speculated.i to i64
  %i.n = add nuw nsw i64 %i.m, 31
  %i.o = lshr i64 %i.n, 3
  %i.p = and i64 %i.o, 1073741820
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 0, i64 %i.p, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E9initEmptyEv.exit

bb.c:                                             ; preds = %_ZNK4llvm8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEE18planShrinkAndClearEv.exit
  %.sroa.39.0.insert.ext.i = zext i32 %.sroa.speculated.i to i64 ; 2 uses
  %i.q = icmp eq i32 %i.h, 0
  br i1 %i.q, label %_ZN4llvm8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEE17deallocateBucketsEv.exit, label %.thread16

.thread16:                                        ; preds = %_ZNK4llvm8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEE18planShrinkAndClearEv.exit.thread, %bb.c
  %i.r = phi ptr [ %i.g, %bb.c ], [ %i.i, %_ZNK4llvm8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEE18planShrinkAndClearEv.exit.thread ] ; 2 uses
  %i.s = phi i32 [ %i.h, %bb.c ], [ %i.j, %_ZNK4llvm8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEE18planShrinkAndClearEv.exit.thread ]
  %spec.select10.i1221 = phi i32 [ %.sroa.speculated.i, %bb.c ], [ 0, %_ZNK4llvm8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEE18planShrinkAndClearEv.exit.thread ]
  %.sroa.39.0.insert.ext.i1319 = phi i64 [ %.sroa.39.0.insert.ext.i, %bb.c ], [ 0, %_ZNK4llvm8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEE18planShrinkAndClearEv.exit.thread ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !478
  %i.u = zext i32 %i.s to i64                     ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 4
  %i.w = add nuw nsw i64 %i.u, 31
  %i.x = lshr i64 %i.w, 3
  %i.y = and i64 %i.x, 1073741820
  %i.z = add nuw nsw i64 %i.y, %i.v
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.t, i64 noundef %i.z, i64 noundef 8) #22
  store i32 0, ptr %i.r, align 4, !tbaa !477
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEE17deallocateBucketsEv.exit: ; preds = %bb.c, %.thread16
  %i.aa = phi ptr [ %i.g, %bb.c ], [ %i.r, %.thread16 ] ; 2 uses
  %spec.select10.i1222 = phi i32 [ %.sroa.speculated.i, %bb.c ], [ %spec.select10.i1221, %.thread16 ] ; 2 uses
  %.sroa.39.0.insert.ext.i1320 = phi i64 [ %.sroa.39.0.insert.ext.i, %bb.c ], [ %.sroa.39.0.insert.ext.i1319, %.thread16 ] ; 2 uses
  store i32 %spec.select10.i1222, ptr %i.aa, align 4, !tbaa !477
  %.not.i4 = icmp eq i32 %spec.select10.i1222, 0
  br i1 %.not.i4, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEE17deallocateBucketsEv.exit
  %i.ab = shl nuw nsw i64 %.sroa.39.0.insert.ext.i1320, 4
  %i.ac = add nuw nsw i64 %.sroa.39.0.insert.ext.i1320, 31
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = and i64 %i.ad, 1073741820
  %i.af = add nuw nsw i64 %i.ae, %i.ab
  %i.ag = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.af, i64 noundef 8) #22 ; 2 uses
  %i.ah = load i32, ptr %i.aa, align 4, !tbaa !477 ; 2 uses
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aj ; 2 uses
  store ptr %i.ag, ptr %0, align 8, !tbaa !478
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !486
  store i32 0, ptr %i.a, align 8, !tbaa !485
  %.not.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E9initEmptyEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = add nuw nsw i64 %i.ai, 31
  %i.an = lshr i64 %i.am, 3
  %i.ao = and i64 %i.an, 1073741820
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ak, i8 0, i64 %i.ao, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E9initEmptyEv.exit

bb.f:                                             ; preds = %_ZN4llvm8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEE17deallocateBucketsEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E9initEmptyEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E9initEmptyEv.exit: ; preds = %_ZNK4llvm8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEE18planShrinkAndClearEv.exit.thread, %bb.f, %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !478, !noalias !926 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !486, !noalias !926 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !477, !noalias !926 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !329    ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !307
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !390

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !329
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit, label %bb.c, !prof !327

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !307
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !391, !llvm.loop !10

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !490
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !485
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit, label %bb.d, !prof !327

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !490
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !486
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !478
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !307
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !307
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !485
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !485
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !329
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !329
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 0, ptr %i.bi, align 8, !tbaa !307
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !478, !noalias !931 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !486, !noalias !931 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !477, !noalias !931 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !329    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !307
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !390

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !329
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !327

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !307
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !391, !llvm.loop !10

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !490
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.518", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !477
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #22 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !478
  store ptr %i.y, ptr %i.q, align 8, !tbaa !486
  store i32 0, ptr %i.p, align 16, !tbaa !485
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !47
  %i.aa = load ptr, ptr %0, align 8, !tbaa !490
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !47
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !47
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !47
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !307 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !307
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !307
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !307
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !307
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #22
  br label %_ZN4llvm8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !478    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !486
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !477  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !486  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !478
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !477
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i15 = icmp eq i64 %i.n, 0
  br i1 %.not.i15, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_iEEEES7_iS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph18

.lr.ph18:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !307  ; 2 uses
  %.not11.i13 = icmp eq i32 %i.p, 0
  br i1 %.not11.i13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph18
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i14 = phi i32 [ %i.p, %.lr.ph ], [ %i.bb, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i14, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !329  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !307
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E8moveFromERSA_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.015.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.015.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !307
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !932

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa14.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa14.i ; 2 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !329
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !307
  store i32 %i.aw, ptr %i.au, align 8, !tbaa !307
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = load i32, ptr %i.as, align 4, !tbaa !307
  %i.az = or i32 %i.ay, %i.ax
  store i32 %i.az, ptr %i.as, align 4, !tbaa !307
  %i.ba = add i32 %.0.i14, -1
  %i.bb = and i32 %i.ba, %.0.i14                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bb, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !933

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_iEEEES7_iS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph18, !llvm.loop !934

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_iEEEES7_iS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !477
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_iEEEES7_iS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_iEEEES7_iS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_iEEEES7_iS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bc = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_iEEEES7_iS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !485
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !485
  %i.bg = icmp eq i32 %i.bc, 0
  br i1 %i.bg, label %_ZN4llvm8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_iEEEES7_iS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bh = zext i32 %i.bc to i64                   ; 2 uses
  %i.bi = shl nuw nsw i64 %i.bh, 4
  %i.bj = add nuw nsw i64 %i.bh, 31
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = and i64 %i.bk, 1073741820
  %i.bm = add nuw nsw i64 %i.bl, %i.bi
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bm, i64 noundef 8) #22
  store i32 0, ptr %i.d, align 4, !tbaa !477
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEE4killEv.exit

_ZN4llvm8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_iEEEES7_iS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !478, !noalias !939 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !486, !noalias !939 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !477, !noalias !939 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !329    ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !307
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !390

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !329
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit, label %bb.c, !prof !327

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !307
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !391, !llvm.loop !10

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !490
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !485
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit, label %bb.d, !prof !327

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !490
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !486
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !478
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !307
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !307
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !485
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !485
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !329
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !329
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 0, ptr %i.bi, align 8, !tbaa !307
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef) local_unnamed_addr #4

declare void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm15GraphWriterBaseIPNS_25MachineBlockFrequencyInfoENS_11GraphWriterIS2_EEE8emitEdgeEPKviS7_iRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(32) %5) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = icmp sgt i32 %2, 64
  br i1 %i.a, label %_ZN4llvm11raw_ostreamlsEPKc.exit24, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !476, !nonnull !32, !align !35 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !41   ; 2 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp ult i64 %i.j, 5
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull @.str.51, i64 noundef 5) #22
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.g, ptr noundef nonnull align 1 dereferenceable(5) @.str.51, i64 5, i1 false)
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !41
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 5
  store ptr %i.n, ptr %i.f, align 8, !tbaa !41
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.l, %bb.c ], [ %i.c, %bb.d ]
  %i.o = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKv(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, ptr noundef %1) #22 ; 0 uses
  %i.p = icmp sgt i32 %2, -1
  br i1 %i.p, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !476, !nonnull !32, !align !35 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !40
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !41   ; 2 uses
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = icmp ult i64 %i.x, 2
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull @.str.81, i64 noundef 2) #22
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit9

bb.g:                                             ; preds = %bb.e
  store i16 29498, ptr %i.u, align 1
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !41
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  store ptr %i.ab, ptr %i.t, align 8, !tbaa !41
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit9

_ZN4llvm11raw_ostreamlsEPKc.exit9:                ; preds = %bb.f, %bb.g
  %.0.i.i8 = phi ptr [ %i.z, %bb.f ], [ %i.q, %bb.g ]
  %i.ac = zext nneg i32 %2 to i64
  %i.ad = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i8, i64 noundef %i.ac) #22 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit9, %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !476, !nonnull !32, !align !35 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !40
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !41 ; 2 uses
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = icmp ult i64 %i.al, 8
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.an = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef nonnull @.str.82, i64 noundef 8) #22
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit12

bb.j:                                             ; preds = %bb.h
  store i64 7306086876840865056, ptr %i.ai, align 1
  %i.ao = load ptr, ptr %i.ah, align 8, !tbaa !41
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.ap, ptr %i.ah, align 8, !tbaa !41
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit12

_ZN4llvm11raw_ostreamlsEPKc.exit12:               ; preds = %bb.i, %bb.j
  %.0.i.i11 = phi ptr [ %i.an, %bb.i ], [ %i.ae, %bb.j ]
  %i.aq = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKv(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i11, ptr noundef %3) #22 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !75
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_ZN4llvm11raw_ostreamlsEPKc.exit21, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit12
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !476, !nonnull !32, !align !35 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !40
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 32 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !41 ; 2 uses
  %i.az = icmp eq ptr %i.aw, %i.ay
  br i1 %i.az, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ba = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.au, ptr noundef nonnull @.str.24, i64 noundef 1) #22
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit18

bb.m:                                             ; preds = %bb.k
  store i8 91, ptr %i.ay, align 1
  %i.bb = load ptr, ptr %i.ax, align 8, !tbaa !41
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  store ptr %i.bc, ptr %i.ax, align 8, !tbaa !41
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit18

_ZN4llvm11raw_ostreamlsEPKc.exit18:               ; preds = %bb.l, %bb.m
  %.0.i.i17 = phi ptr [ %i.ba, %bb.l ], [ %i.au, %bb.m ]
  %i.bd = load ptr, ptr %5, align 8, !tbaa !76
  %i.be = load i64, ptr %i.ar, align 8, !tbaa !75
  %i.bf = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i17, ptr noundef %i.bd, i64 noundef %i.be) #22 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !40
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 32 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !41 ; 2 uses
  %i.bk = icmp eq ptr %i.bh, %i.bj
  br i1 %i.bk, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit18
  %i.bl = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bf, ptr noundef nonnull @.str.25, i64 noundef 1) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit21

bb.o:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit18
  store i8 93, ptr %i.bj, align 1
  %i.bm = load ptr, ptr %i.bi, align 8, !tbaa !41
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  store ptr %i.bn, ptr %i.bi, align 8, !tbaa !41
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit21

_ZN4llvm11raw_ostreamlsEPKc.exit21:               ; preds = %bb.o, %bb.n, %_ZN4llvm11raw_ostreamlsEPKc.exit12
  %i.bo = load ptr, ptr %i.b, align 8, !tbaa !476, !nonnull !32, !align !35 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !40
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 32 ; 3 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !41 ; 2 uses
  %i.bt = ptrtoint ptr %i.bq to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = icmp ult i64 %i.bv, 2
  br i1 %i.bw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit21
  %i.bx = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bo, ptr noundef nonnull @.str.84, i64 noundef 2) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit24

bb.q:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit21
  store i16 2619, ptr %i.bs, align 1
  %i.by = load ptr, ptr %i.br, align 8, !tbaa !41
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 2
  store ptr %i.bz, ptr %i.br, align 8, !tbaa !41
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit24

_ZN4llvm11raw_ostreamlsEPKc.exit24:               ; preds = %bb.q, %bb.p, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm21BFIDOTGraphTraitsBaseINS_25MachineBlockFrequencyInfoENS_28MachineBranchProbabilityInfoEE17getEdgeAttributesB5cxx11EPKNS_17MachineBasicBlockEPKPS4_PKS1_PKS2_j(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %7 = alloca %"struct.llvm::BlockFrequencyInfoImplBase::BlockNode", align 4 ; 4 uses
  %8 = alloca %class.anon.535, align 8            ; 4 uses
  %9 = alloca %"class.llvm::raw_string_ostream", align 8 ; 14 uses
  %10 = alloca %"class.llvm::format_object", align 8 ; 3 uses
  %11 = alloca %"class.llvm::BlockFrequency", align 8 ; 4 uses
  %12 = alloca %"class.llvm::BlockFrequency", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !310
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !75
  store i8 0, ptr %i.a, align 8, !tbaa !42
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.e = ptrtoint ptr %3 to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  %i.i = trunc i64 %i.h to i32
  %i.j = tail call i32 @_ZNK4llvm28MachineBranchProbabilityInfo18getEdgeProbabilityEPKNS_17MachineBasicBlockEj(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %2, i32 noundef %i.i) #22 ; 2 uses
  %i.k = uitofp i32 %i.j to double
  %i.l = fmul nnan double %i.k, 1.000000e+02
  %i.m = fmul nnan double %i.l, f0x3E00000000000000
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 0, ptr %i.n, align 8, !tbaa !480
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i8 0, ptr %i.o, align 8, !tbaa !481
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 44
  store i32 1, ptr %i.p, align 4, !tbaa !482
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %9, align 8, !tbaa !20
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 48
  store ptr %0, ptr %i.r, align 8, !tbaa !484
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef null, i64 noundef 0, i32 noundef 0) #22
  store ptr @.str.85, ptr %10, align 8, !tbaa !495, !alias.scope !942
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 8
  store double %i.m, ptr %i.s, align 8, !tbaa !943, !alias.scope !942
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr %10, ptr %8, align 8, !tbaa !944
  %i.t = ptrtoint ptr %8 to i64
  %i.u = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_12function_refIFiPcmEEE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr nonnull @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJdEEERNS_11raw_ostreamES7_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m, i64 %i.t) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %.not16 = icmp eq i32 %6, 0
  br i1 %.not16, label %_ZN4llvm11raw_ostreamlsEPKc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.v = load ptr, ptr %4, align 8, !tbaa !44     ; 4 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %_ZNK4llvm25MachineBlockFrequencyInfo12getBlockFreqEPKNS_17MachineBasicBlockE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 220
  %i.x = load i32, ptr %i.w, align 4, !tbaa !306  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 168
  %i.z = load i32, ptr %i.y, align 8, !tbaa !64
  %i.aa = icmp ugt i32 %i.z, %i.x
  br i1 %i.aa, label %bb.e, label %_ZNK4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE12getBlockFreqEPKS1_.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ab = zext i32 %i.x to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 160
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !25
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ab
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !307
  br label %_ZNK4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE12getBlockFreqEPKS1_.exit.i

_ZNK4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE12getBlockFreqEPKS1_.exit.i: ; preds = %bb.e, %bb.d
  %.sroa.0.0.i.i.i = phi i32 [ %i.af, %bb.e ], [ -1, %bb.d ]
  store i32 %.sroa.0.0.i.i.i, ptr %7, align 4
  %i.ag = call i64 @_ZNK4llvm26BlockFrequencyInfoImplBase12getBlockFreqERKNS0_9BlockNodeE(ptr noundef nonnull align 8 dereferenceable(180) %i.v, ptr noundef nonnull align 4 dereferenceable(4) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %_ZNK4llvm25MachineBlockFrequencyInfo12getBlockFreqEPKNS_17MachineBasicBlockE.exit

_ZNK4llvm25MachineBlockFrequencyInfo12getBlockFreqEPKNS_17MachineBasicBlockE.exit: ; preds = %bb.c, %_ZNK4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE12getBlockFreqEPKS1_.exit.i
  %.sroa.0.0.i = phi i64 [ %i.ag, %_ZNK4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEE12getBlockFreqEPKS1_.exit.i ], [ 0, %bb.c ]
  store i64 %.sroa.0.0.i, ptr %11, align 8
  %i.ah = call i64 @_ZNK4llvm14BlockFrequencymlENS_17BranchProbabilityE(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 %i.j) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !487
  store i64 %i.aj, ptr %12, align 8, !tbaa !489
  %i.ak = zext i32 %6 to i64
  %i.al = shl nuw nsw i64 %i.ak, 31
  %i.am = or disjoint i64 %i.al, 48
  %i.an = udiv i64 %i.am, 100
  %i.ao = trunc i64 %i.an to i32
  %i.ap = call i64 @_ZNK4llvm14BlockFrequencymlENS_17BranchProbabilityE(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 %i.ao) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %.not20 = icmp ult i64 %i.ah, %i.ap
  br i1 %.not20, label %_ZN4llvm11raw_ostreamlsEPKc.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK4llvm25MachineBlockFrequencyInfo12getBlockFreqEPKNS_17MachineBasicBlockE.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !40
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !41 ; 2 uses
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = icmp ult i64 %i.aw, 12
  br i1 %i.ax, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ay = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str.86, i64 noundef 12) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.at, ptr noundef nonnull align 1 dereferenceable(12) @.str.86, i64 12, i1 false)
  %i.az = load ptr, ptr %i.as, align 8, !tbaa !41
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store ptr %i.ba, ptr %i.as, align 8, !tbaa !41
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %_ZNK4llvm25MachineBlockFrequencyInfo12getBlockFreqEPKNS_17MachineBasicBlockE.exit, %bb.g, %bb.h, %bb.b
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.i

bb.i:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_12function_refIFiPcmEEE(ptr noundef nonnull align 8 dereferenceable(48), ptr, i64) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJdEEERNS_11raw_ostreamES7_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m(i64 noundef %0, ptr noundef %1, i64 noundef %2) #3 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !946, !nonnull !32, !align !35 ; 2 uses
  %i.c = and i64 %2, 4294967295
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !495
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !947
  %i.g = tail call noundef i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %i.c, ptr noundef %i.d, double noundef %i.f) #22
  ret i32 %i.g
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #17

declare i64 @_ZNK4llvm26BlockFrequencyInfoImplBase12getBlockFreqERKNS0_9BlockNodeE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

declare { i64, i8 } @_ZNK4llvm26BlockFrequencyInfoImplBase23getProfileCountFromFreqERKNS_8FunctionENS_14BlockFrequencyE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(140), i64) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN4llvm26BlockFrequencyInfoImplBase15isIrrLoopHeaderERKNS0_9BlockNodeE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

declare void @_ZN4llvm26BlockFrequencyInfoImplBase12setBlockFreqERKNS0_9BlockNodeENS_14BlockFrequencyE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 4 dereferenceable(4), i64) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFvRN4llvm11raw_ostreamEEZNS0_14printBlockFreqERKNS0_25MachineBlockFrequencyInfoENS0_14BlockFrequencyEE3$_0E9_M_invokeERKSt9_Any_dataS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #3 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !949
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load i64, ptr %i.a, align 8
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !44 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.val.val, null
  br i1 %.not.i.i.i.i, label %"_ZSt10__invoke_rIvRZN4llvm14printBlockFreqERKNS0_25MachineBlockFrequencyInfoENS0_14BlockFrequencyEE3$_0JRNS0_11raw_ostreamEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val.val, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !315
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !318
  br label %"_ZSt10__invoke_rIvRZN4llvm14printBlockFreqERKNS0_25MachineBlockFrequencyInfoENS0_14BlockFrequencyEE3$_0JRNS0_11raw_ostreamEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit"

"_ZSt10__invoke_rIvRZN4llvm14printBlockFreqERKNS0_25MachineBlockFrequencyInfoENS0_14BlockFrequencyEE3$_0JRNS0_11raw_ostreamEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit": ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i.i.i = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN4llvm22printRelativeBlockFreqERNS_11raw_ostreamENS_14BlockFrequencyES2_(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 %.sroa.0.0.i.i.i.i, i64 %.val2) #22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRN4llvm11raw_ostreamEEZNS0_14printBlockFreqERKNS0_25MachineBlockFrequencyInfoENS0_14BlockFrequencyEE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #6 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN4llvm14printBlockFreqERKNS1_25MachineBlockFrequencyInfoENS1_14BlockFrequencyEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !47
  br label %"_ZNSt14_Function_base13_Base_managerIZN4llvm14printBlockFreqERKNS1_25MachineBlockFrequencyInfoENS1_14BlockFrequencyEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !951
  br label %"_ZNSt14_Function_base13_Base_managerIZN4llvm14printBlockFreqERKNS1_25MachineBlockFrequencyInfoENS1_14BlockFrequencyEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !952
  br label %"_ZNSt14_Function_base13_Base_managerIZN4llvm14printBlockFreqERKNS1_25MachineBlockFrequencyInfoENS1_14BlockFrequencyEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN4llvm14printBlockFreqERKNS1_25MachineBlockFrequencyInfoENS1_14BlockFrequencyEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare void @_ZN4llvm22printRelativeBlockFreqERNS_11raw_ostreamENS_14BlockFrequencyES2_(ptr noundef nonnull align 8 dereferenceable(48), i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_MachineBlockFrequencyInfo.cpp() #18 section ".text.startup" {
bb.a:
  %0 = alloca %"class.llvm::cl::ValuesClass", align 8 ; 27 uses
  %1 = alloca %"class.llvm::cl::ValuesClass", align 8 ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !25, !alias.scope !957
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 4, ptr %i.c, align 4, !tbaa !65, !alias.scope !957
  store ptr @.str.2, ptr %i.a, align 8
  %.sroa.445.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 4, ptr %.sroa.445.0..sroa_idx.i, align 8
  %.sroa.546.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 0, ptr %.sroa.546.0..sroa_idx.i, align 8
  %.sroa.748.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr @.str.3, ptr %.sroa.748.0..sroa_idx.i, align 8
  %.sroa.849.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 22, ptr %.sroa.849.0..sroa_idx.i, align 8
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr @.str.4, ptr %.sroa.9.0..sroa_idx.i, align 8
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 8, ptr %.sroa.10.0..sroa_idx.i, align 8
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i32 1, ptr %.sroa.11.0..sroa_idx.i, align 8
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr @.str.5, ptr %.sroa.13.0..sroa_idx.i, align 8
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i64 68, ptr %.sroa.14.0..sroa_idx.i, align 8
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr @.str.6, ptr %.sroa.15.0..sroa_idx.i, align 8
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i64 7, ptr %.sroa.16.0..sroa_idx.i, align 8
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 2, ptr %.sroa.17.0..sroa_idx.i, align 8
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 120
  store ptr @.str.7, ptr %.sroa.19.0..sroa_idx.i, align 8
  %.sroa.20.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i64 80, ptr %.sroa.20.0..sroa_idx.i, align 8
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 136
  store ptr @.str.8, ptr %.sroa.21.0..sroa_idx.i, align 8
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i64 5, ptr %.sroa.22.0..sroa_idx.i, align 8
  %.sroa.2350.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 152
  store i32 3, ptr %.sroa.2350.0..sroa_idx.i, align 8
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 160
  store ptr @.str.9, ptr %.sroa.25.0..sroa_idx.i, align 8
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 168
  store i64 58, ptr %.sroa.26.0..sroa_idx.i, align 8
  store i32 4, ptr %i.b, align 8, !tbaa !64, !alias.scope !957
  call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL34ViewMachineBlockFreqPropagationDAG, i32 noundef 0, i32 noundef 0) #22
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL34ViewMachineBlockFreqPropagationDAG, i64 120), align 8, !tbaa !72
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL34ViewMachineBlockFreqPropagationDAG, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueINS_9GVDAGTypeEEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL34ViewMachineBlockFreqPropagationDAG, i64 128), align 8, !tbaa !20
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optINS_9GVDAGTypeELb0ENS0_6parserIS2_EEEE, i64 16), ptr @_ZL34ViewMachineBlockFreqPropagationDAG, align 8, !tbaa !20
  store ptr @_ZL34ViewMachineBlockFreqPropagationDAG, ptr getelementptr inbounds nuw (i8, ptr @_ZL34ViewMachineBlockFreqPropagationDAG, i64 152), align 8, !tbaa !958
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm2cl6parserINS_9GVDAGTypeEEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL34ViewMachineBlockFreqPropagationDAG, i64 144), align 8, !tbaa !20
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL34ViewMachineBlockFreqPropagationDAG, i64 176), ptr getelementptr inbounds nuw (i8, ptr @_ZL34ViewMachineBlockFreqPropagationDAG, i64 160), align 8, !tbaa !25
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL34ViewMachineBlockFreqPropagationDAG, i64 168), align 8, !tbaa !64
  store i32 8, ptr getelementptr inbounds nuw (i8, ptr @_ZL34ViewMachineBlockFreqPropagationDAG, i64 172), align 4, !tbaa !65
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL34ViewMachineBlockFreqPropagationDAG, i64 560), i8 0, i64 32, i1 false)
  call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(592) @_ZL34ViewMachineBlockFreqPropagationDAG, ptr nonnull align 1 dereferenceable(41) @.str, i64 40) #22
  %i.d = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL34ViewMachineBlockFreqPropagationDAG, i64 10), align 2
  %i.e = and i16 %i.d, -97
  %i.f = or disjoint i16 %i.e, 32
  store i16 %i.f, ptr getelementptr inbounds nuw (i8, ptr @_ZL34ViewMachineBlockFreqPropagationDAG, i64 10), align 2
  store ptr @.str.1, ptr getelementptr inbounds nuw (i8, ptr @_ZL34ViewMachineBlockFreqPropagationDAG, i64 32), align 8, !tbaa !49
  store i64 97, ptr getelementptr inbounds nuw (i8, ptr @_ZL34ViewMachineBlockFreqPropagationDAG, i64 40), align 8, !tbaa !51
  call void @_ZNK4llvm2cl11ValuesClass5applyINS0_3optINS_9GVDAGTypeELb0ENS0_6parserIS4_EEEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(592) @_ZL34ViewMachineBlockFreqPropagationDAG)
  call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(592) @_ZL34ViewMachineBlockFreqPropagationDAG) #22
  %i.g = load ptr, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.a
  br i1 %i.h, label %__cxx_global_var_init.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @free(ptr noundef %i.g) #22
  br label %__cxx_global_var_init.exit

__cxx_global_var_init.exit:                       ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  %i.i = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optINS_9GVDAGTypeELb0ENS0_6parserIS2_EEED2Ev, ptr nonnull @_ZL34ViewMachineBlockFreqPropagationDAG, ptr nonnull @__dso_handle) #22 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !25, !alias.scope !959
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 4, ptr %i.l, align 4, !tbaa !65, !alias.scope !959
  store ptr @.str.2, ptr %i.j, align 8
  %.sroa.445.0..sroa_idx.i1 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 4, ptr %.sroa.445.0..sroa_idx.i1, align 8
  %.sroa.546.0..sroa_idx.i2 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %.sroa.546.0..sroa_idx.i2, align 8
  %.sroa.748.0..sroa_idx.i3 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @.str.3, ptr %.sroa.748.0..sroa_idx.i3, align 8
  %.sroa.849.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 22, ptr %.sroa.849.0..sroa_idx.i4, align 8
  %.sroa.9.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @.str.4, ptr %.sroa.9.0..sroa_idx.i5, align 8
  %.sroa.10.0..sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 8, ptr %.sroa.10.0..sroa_idx.i6, align 8
  %.sroa.11.0..sroa_idx.i7 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 1, ptr %.sroa.11.0..sroa_idx.i7, align 8
  %.sroa.13.0..sroa_idx.i8 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr @.str.5, ptr %.sroa.13.0..sroa_idx.i8, align 8
  %.sroa.14.0..sroa_idx.i9 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 68, ptr %.sroa.14.0..sroa_idx.i9, align 8
  %.sroa.15.0..sroa_idx.i10 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr @.str.6, ptr %.sroa.15.0..sroa_idx.i10, align 8
  %.sroa.16.0..sroa_idx.i11 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 7, ptr %.sroa.16.0..sroa_idx.i11, align 8
  %.sroa.17.0..sroa_idx.i12 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 2, ptr %.sroa.17.0..sroa_idx.i12, align 8
  %.sroa.19.0..sroa_idx.i13 = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr @.str.7, ptr %.sroa.19.0..sroa_idx.i13, align 8
  %.sroa.20.0..sroa_idx.i14 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 80, ptr %.sroa.20.0..sroa_idx.i14, align 8
  %.sroa.21.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr @.str.8, ptr %.sroa.21.0..sroa_idx.i15, align 8
  %.sroa.22.0..sroa_idx.i16 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 5, ptr %.sroa.22.0..sroa_idx.i16, align 8
  %.sroa.2350.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 3, ptr %.sroa.2350.0..sroa_idx.i17, align 8
  %.sroa.25.0..sroa_idx.i18 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr @.str.9, ptr %.sroa.25.0..sroa_idx.i18, align 8
  %.sroa.26.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 58, ptr %.sroa.26.0..sroa_idx.i19, align 8
  store i32 4, ptr %i.k, align 8, !tbaa !64, !alias.scope !959
  call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZN4llvm22ViewBlockLayoutWithBFIE, i32 noundef 0, i32 noundef 0) #22
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm22ViewBlockLayoutWithBFIE, i64 120), align 8, !tbaa !72
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm22ViewBlockLayoutWithBFIE, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueINS_9GVDAGTypeEEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm22ViewBlockLayoutWithBFIE, i64 128), align 8, !tbaa !20
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optINS_9GVDAGTypeELb0ENS0_6parserIS2_EEEE, i64 16), ptr @_ZN4llvm22ViewBlockLayoutWithBFIE, align 8, !tbaa !20
  store ptr @_ZN4llvm22ViewBlockLayoutWithBFIE, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm22ViewBlockLayoutWithBFIE, i64 152), align 8, !tbaa !958
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm2cl6parserINS_9GVDAGTypeEEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm22ViewBlockLayoutWithBFIE, i64 144), align 8, !tbaa !20
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm22ViewBlockLayoutWithBFIE, i64 176), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm22ViewBlockLayoutWithBFIE, i64 160), align 8, !tbaa !25
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm22ViewBlockLayoutWithBFIE, i64 168), align 8, !tbaa !64
  store i32 8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm22ViewBlockLayoutWithBFIE, i64 172), align 4, !tbaa !65
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4llvm22ViewBlockLayoutWithBFIE, i64 560), i8 0, i64 32, i1 false)
  call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(592) @_ZN4llvm22ViewBlockLayoutWithBFIE, ptr nonnull align 1 dereferenceable(27) @.str.11, i64 26) #22
  %i.m = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm22ViewBlockLayoutWithBFIE, i64 10), align 2
  %i.n = and i16 %i.m, -97
  %i.o = or disjoint i16 %i.n, 32
  store i16 %i.o, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm22ViewBlockLayoutWithBFIE, i64 10), align 2
  store ptr @.str.12, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm22ViewBlockLayoutWithBFIE, i64 32), align 8, !tbaa !49
  store i64 96, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm22ViewBlockLayoutWithBFIE, i64 40), align 8, !tbaa !51
  call void @_ZNK4llvm2cl11ValuesClass5applyINS0_3optINS_9GVDAGTypeELb0ENS0_6parserIS4_EEEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(592) @_ZN4llvm22ViewBlockLayoutWithBFIE)
  call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(592) @_ZN4llvm22ViewBlockLayoutWithBFIE) #22
  %i.p = load ptr, ptr %0, align 8, !tbaa !25     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.j
  br i1 %i.q, label %__cxx_global_var_init.10.exit, label %bb.c

bb.c:                                             ; preds = %__cxx_global_var_init.exit
  call void @free(ptr noundef %i.p) #22
  br label %__cxx_global_var_init.10.exit

__cxx_global_var_init.10.exit:                    ; preds = %__cxx_global_var_init.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  %i.r = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optINS_9GVDAGTypeELb0ENS0_6parserIS2_EEED2Ev, ptr nonnull @_ZN4llvm22ViewBlockLayoutWithBFIE, ptr nonnull @__dso_handle) #22 ; 0 uses
  call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL21PrintMachineBlockFreq, i32 noundef 0, i32 noundef 0) #22
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL21PrintMachineBlockFreq, i64 120), align 8, !tbaa !85
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL21PrintMachineBlockFreq, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL21PrintMachineBlockFreq, i64 128), align 8, !tbaa !20
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZL21PrintMachineBlockFreq, align 8, !tbaa !20
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL21PrintMachineBlockFreq, i64 144), align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL21PrintMachineBlockFreq, i64 152), i8 0, i64 32, i1 false)
  call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL21PrintMachineBlockFreq, ptr nonnull align 1 dereferenceable(18) @.str.14, i64 17) #22
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL21PrintMachineBlockFreq, i64 120), align 8, !tbaa !85
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL21PrintMachineBlockFreq, i64 137), align 1, !tbaa !336
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL21PrintMachineBlockFreq, i64 136), align 8, !tbaa !960
  %i.s = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL21PrintMachineBlockFreq, i64 10), align 2
  %i.t = and i16 %i.s, -97
  %i.u = or disjoint i16 %i.t, 32
  store i16 %i.u, ptr getelementptr inbounds nuw (i8, ptr @_ZL21PrintMachineBlockFreq, i64 10), align 2
  store ptr @.str.15, ptr getelementptr inbounds nuw (i8, ptr @_ZL21PrintMachineBlockFreq, i64 32), align 8, !tbaa !49
  store i64 39, ptr getelementptr inbounds nuw (i8, ptr @_ZL21PrintMachineBlockFreq, i64 40), align 8, !tbaa !51
  call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL21PrintMachineBlockFreq) #22
  %i.v = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZL21PrintMachineBlockFreq, ptr nonnull @__dso_handle) #22 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #21

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nounwind }
attributes #23 = { noreturn nounwind }
attributes #24 = { builtin nounwind allocsize(0) }
attributes #25 = { builtin nounwind }
attributes #26 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!11, !12}
!llvm.ident = !{!13}
!llvm.errno.tbaa = !{!18}

!0 = distinct !{null}
!1 = distinct !{null, null, null}
!2 = distinct !{!2, !123}
!3 = distinct !{!3, !123}
!4 = distinct !{!4, !123}
!5 = distinct !{!5, !123}
!6 = distinct !{!6, !123}
!7 = distinct !{!7, !123}
!8 = distinct !{!8, !123}
!9 = distinct !{!9, !123}
!10 = distinct !{!10, !123}
!11 = !{i32 8, !"PIC Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 2}
!13 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!14 = !{!"Simple C++ TBAA"}
!15 = !{!"omnipotent char", !14, i64 0}
!16 = !{!"int", !15, i64 0}
!17 = !{!"__libc_errno", !16, i64 0}
!18 = !{!17, !16, i64 0}
!19 = !{!"vtable pointer", !14, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"any pointer", !15, i64 0}
!22 = !{!"_ZTSSt14_Function_base", !15, i64 0, !21, i64 16}
!23 = !{!22, !21, i64 16}
!24 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !21, i64 0, !16, i64 8, !16, i64 12}
!25 = !{!24, !21, i64 0}
!26 = !{ptr @_ZN4llvm2cl6parserINS_9GVDAGTypeEED2Ev}
!27 = !{!"any p2 pointer", !21, i64 0}
!28 = !{!"bool", !15, i64 0}
!29 = !{!"_ZTSN4llvm19SmallPtrSetImplBaseE", !27, i64 0, !16, i64 8, !16, i64 12, !28, i64 16}
!30 = !{!29, !28, i64 16}
!31 = !{i8 0, i8 2}
!32 = !{}
!33 = !{!29, !27, i64 0}
!34 = !{!"p1 _ZTSN4llvm11raw_ostreamE", !21, i64 0}
!35 = !{i64 8}
!36 = !{!"_ZTSN4llvm11raw_ostream11OStreamKindE", !15, i64 0}
!37 = !{!"p1 omnipotent char", !21, i64 0}
!38 = !{!"_ZTSN4llvm11raw_ostream10BufferKindE", !15, i64 0}
!39 = !{!"_ZTSN4llvm11raw_ostreamE", !36, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !28, i64 40, !38, i64 44}
!40 = !{!39, !37, i64 24}
!41 = !{!39, !37, i64 32}
!42 = !{!15, !15, i64 0}
!43 = !{!"p1 _ZTSN4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEEE", !21, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!29, !16, i64 8}
!46 = !{!29, !16, i64 12}
!47 = !{!21, !21, i64 0}
!48 = !{!"p1 _ZTSSt17reference_wrapperIN4llvm12PassRegistryEE", !21, i64 0}
!49 = !{!37, !37, i64 0}
!50 = !{!"long", !15, i64 0}
!51 = !{!50, !50, i64 0}
!52 = !{!"_ZTSN4llvm9StringRefE", !37, i64 0, !50, i64 8}
!53 = !{!"p1 _ZTSN4llvm16AnalysisResolverE", !21, i64 0}
!54 = !{!"_ZTSN4llvm8PassKindE", !15, i64 0}
!55 = !{!"_ZTSN4llvm4PassE", !53, i64 8, !21, i64 16, !54, i64 24}
!56 = !{!55, !53, i64 8}
!57 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm22BlockFrequencyInfoImplINS0_17MachineBasicBlockEEELb0EE", !43, i64 0}
!58 = !{!57, !43, i64 0}
!59 = !{!"p1 _ZTSNSt8__detail15_List_node_baseE", !21, i64 0}
!60 = !{!"_ZTSNSt8__detail15_List_node_baseE", !59, i64 0, !59, i64 8}
!61 = !{!60, !59, i64 8}
!62 = !{!60, !59, i64 0}
!63 = !{!"_ZTSNSt8__detail17_List_node_headerE", !60, i64 0, !50, i64 16}
!64 = !{!24, !16, i64 8}
!65 = !{!24, !16, i64 12}
!66 = !{!"_ZTSN4llvm9GVDAGTypeE", !15, i64 0}
!67 = !{!"_ZTSN4llvm2cl18GenericOptionValueE"}
!68 = !{!"_ZTSN4llvm2cl15OptionValueCopyINS_9GVDAGTypeEEE", !67, i64 0, !66, i64 8, !28, i64 12}
!69 = !{!"_ZTSN4llvm2cl15OptionValueBaseINS_9GVDAGTypeELb0EEE", !68, i64 0}
!70 = !{!"_ZTSN4llvm2cl11OptionValueINS_9GVDAGTypeEEE", !69, i64 0}
!71 = !{!"_ZTSN4llvm2cl11opt_storageINS_9GVDAGTypeELb0ELb0EEE", !66, i64 0, !70, i64 8}
!72 = !{!71, !66, i64 0}
!73 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !37, i64 0}
!74 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !73, i64 0, !50, i64 8, !15, i64 16}
!75 = !{!74, !50, i64 8}
!76 = !{!74, !37, i64 0}
!77 = !{!"_ZTSN4llvm5Twine8NodeKindE", !15, i64 0}
!78 = !{!"_ZTSN4llvm5TwineE", !15, i64 0, !15, i64 16, !77, i64 32, !77, i64 33}
!79 = !{!78, !77, i64 32}
!80 = !{!78, !77, i64 33}
!81 = !{!"_ZTSN4llvm2cl15OptionValueCopyIbEE", !67, i64 0, !28, i64 8, !28, i64 9}
!82 = !{!"_ZTSN4llvm2cl15OptionValueBaseIbLb0EEE", !81, i64 0}
!83 = !{!"_ZTSN4llvm2cl11OptionValueIbEE", !82, i64 0}
!84 = !{!"_ZTSN4llvm2cl11opt_storageIbLb0ELb0EEE", !28, i64 0, !83, i64 8}
!85 = !{!84, !28, i64 0}
!86 = !{!"p1 _ZTSN4llvm26BlockFrequencyInfoImplBase13FrequencyDataE", !21, i64 0}
!87 = !{!"_ZTSNSt12_Vector_baseIN4llvm26BlockFrequencyInfoImplBase13FrequencyDataESaIS2_EE17_Vector_impl_dataE", !86, i64 0, !86, i64 8, !86, i64 16}
!88 = !{!"_ZTSNSt12_Vector_baseIN4llvm26BlockFrequencyInfoImplBase13FrequencyDataESaIS2_EE12_Vector_implE", !87, i64 0}
!89 = !{!"_ZTSSt12_Vector_baseIN4llvm26BlockFrequencyInfoImplBase13FrequencyDataESaIS2_EE", !88, i64 0}
!90 = !{!"_ZTSSt6vectorIN4llvm26BlockFrequencyInfoImplBase13FrequencyDataESaIS2_EE", !89, i64 0}
!91 = !{!"_ZTSNSt7__cxx1110_List_baseIN4llvm22SparseBitVectorElementILj128EEESaIS3_EE10_List_implE", !63, i64 0}
!92 = !{!"_ZTSNSt7__cxx1110_List_baseIN4llvm22SparseBitVectorElementILj128EEESaIS3_EEE", !91, i64 0}
!93 = !{!"_ZTSNSt7__cxx114listIN4llvm22SparseBitVectorElementILj128EEESaIS3_EEE", !92, i64 0}
!94 = !{!"_ZTSSt14_List_iteratorIN4llvm22SparseBitVectorElementILj128EEEE", !59, i64 0}
!95 = !{!"_ZTSN4llvm15SparseBitVectorILj128EEE", !93, i64 0, !94, i64 24}
!96 = !{!"p1 _ZTSN4llvm26BlockFrequencyInfoImplBase11WorkingDataE", !21, i64 0}
!97 = !{!"_ZTSNSt12_Vector_baseIN4llvm26BlockFrequencyInfoImplBase11WorkingDataESaIS2_EE17_Vector_impl_dataE", !96, i64 0, !96, i64 8, !96, i64 16}
!98 = !{!"_ZTSNSt12_Vector_baseIN4llvm26BlockFrequencyInfoImplBase11WorkingDataESaIS2_EE12_Vector_implE", !97, i64 0}
!99 = !{!"_ZTSSt12_Vector_baseIN4llvm26BlockFrequencyInfoImplBase11WorkingDataESaIS2_EE", !98, i64 0}
!100 = !{!"_ZTSSt6vectorIN4llvm26BlockFrequencyInfoImplBase11WorkingDataESaIS2_EE", !99, i64 0}
!101 = !{!"_ZTSNSt7__cxx1110_List_baseIN4llvm26BlockFrequencyInfoImplBase8LoopDataESaIS3_EE10_List_implE", !63, i64 0}
!102 = !{!"_ZTSNSt7__cxx1110_List_baseIN4llvm26BlockFrequencyInfoImplBase8LoopDataESaIS3_EEE", !101, i64 0}
!103 = !{!"_ZTSNSt7__cxx114listIN4llvm26BlockFrequencyInfoImplBase8LoopDataESaIS3_EEE", !102, i64 0}
!104 = !{!"_ZTSN4llvm26BlockFrequencyInfoImplBaseE", !90, i64 8, !95, i64 32, !100, i64 64, !103, i64 88}
!105 = !{!"p1 _ZTSN4llvm28MachineBranchProbabilityInfoE", !21, i64 0}
!106 = !{!"p1 _ZTSN4llvm15MachineLoopInfoE", !21, i64 0}
!107 = !{!"p1 _ZTSN4llvm15MachineFunctionE", !21, i64 0}
!108 = !{!"p2 _ZTSN4llvm17MachineBasicBlockE", !27, i64 0}
!109 = !{!"_ZTSNSt12_Vector_baseIPKN4llvm17MachineBasicBlockESaIS3_EE17_Vector_impl_dataE", !108, i64 0, !108, i64 8, !108, i64 16}
!110 = !{!"_ZTSNSt12_Vector_baseIPKN4llvm17MachineBasicBlockESaIS3_EE12_Vector_implE", !109, i64 0}
!111 = !{!"_ZTSSt12_Vector_baseIPKN4llvm17MachineBasicBlockESaIS3_EE", !110, i64 0}
!112 = !{!"_ZTSSt6vectorIPKN4llvm17MachineBasicBlockESaIS3_EE", !111, i64 0}
!113 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_26BlockFrequencyInfoImplBase9BlockNodeEvEE", !24, i64 0}
!114 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_26BlockFrequencyInfoImplBase9BlockNodeELb1EEE", !113, i64 0}
!115 = !{!"_ZTSN4llvm15SmallVectorImplINS_26BlockFrequencyInfoImplBase9BlockNodeEEE", !114, i64 0}
!116 = !{!"_ZTSN4llvm11SmallVectorINS_26BlockFrequencyInfoImplBase9BlockNodeELj0EEE", !115, i64 0}
!117 = !{!"_ZTSN4llvm22BlockFrequencyInfoImplINS_17MachineBasicBlockEEE", !104, i64 0, !105, i64 112, !106, i64 120, !107, i64 128, !112, i64 136, !116, i64 160, !16, i64 176}
!118 = !{!117, !105, i64 112}
!119 = !{!117, !106, i64 120}
!120 = !{!117, !107, i64 128}
!121 = !{!109, !108, i64 0}
!122 = !{!109, !108, i64 8}
!123 = !{!"llvm.loop.mustprogress"}
!124 = !{!"p1 _ZTSN4llvm8FunctionE", !21, i64 0}
!125 = !{!"p1 _ZTSN4llvm13TargetMachineE", !21, i64 0}
!126 = !{!"p1 _ZTSN4llvm19TargetSubtargetInfoE", !21, i64 0}
!127 = !{!"p1 _ZTSN4llvm9MCContextE", !21, i64 0}
!128 = !{!"p1 _ZTSN4llvm19MachineRegisterInfoE", !21, i64 0}
!129 = !{!"p1 _ZTSN4llvm19MachineFunctionInfoE", !21, i64 0}
!130 = !{!"p1 _ZTSN4llvm16MachineFrameInfoE", !21, i64 0}
!131 = !{!"p1 _ZTSN4llvm19MachineConstantPoolE", !21, i64 0}
!132 = !{!"p1 _ZTSN4llvm20MachineJumpTableInfoE", !21, i64 0}
!133 = !{!"p1 _ZTSN4llvm9MCSectionE", !21, i64 0}
!134 = !{!"p1 _ZTSN4llvm13WinEHFuncInfoE", !21, i64 0}
!135 = !{!"_ZTSNSt12_Vector_baseIPN4llvm17MachineBasicBlockESaIS2_EE17_Vector_impl_dataE", !108, i64 0, !108, i64 8, !108, i64 16}
end_hunk_0
begin_hunk_1_@llvm.smin.i16
!699 = distinct !{!699, !698, !"_ZSt19__relocate_object_aIN4llvm26BlockFrequencyInfoImplBase13FrequencyDataES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!700 = distinct !{!700, !698, !"_ZSt19__relocate_object_aIN4llvm26BlockFrequencyInfoImplBase13FrequencyDataES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!701 = !{!700, !699}
!702 = distinct !{!702, i1 true, !"_ZN4llvm6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEE5beginEv"}
!703 = distinct !{!703, !702, !"_ZN4llvm6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEE5beginEv: argument 0"}
!704 = distinct !{!704, i1 true, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E5beginEv"}
!705 = distinct !{!705, !704, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E5beginEv: argument 0"}
!706 = distinct !{!706, i1 true, !"_ZN4llvm6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEE6insertERKj"}
!707 = distinct !{!707, !706, !"_ZN4llvm6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjvEENS0_12DenseSetPairIjEEEEE6insertERKj: argument 0"}
!708 = distinct !{!708, i1 true, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E11try_emplaceIJEEESt4pairINS_16DenseMapIteratorIjS3_S5_S7_Lb0EEEbERKjDpOT_"}
!709 = distinct !{!709, !708, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E11try_emplaceIJEEESt4pairINS_16DenseMapIteratorIjS3_S5_S7_Lb0EEEbERKjDpOT_: argument 0"}
!710 = distinct !{!710, i1 true, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E16try_emplace_implIRKjJEEESt4pairINS_16DenseMapIteratorIjS3_S5_S7_Lb0EEEbEOT_DpOT0_"}
!711 = distinct !{!711, !710, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E16try_emplace_implIRKjJEEESt4pairINS_16DenseMapIteratorIjS3_S5_S7_Lb0EEEbEOT_DpOT0_: argument 0"}
!712 = distinct !{!712, !123}
!713 = distinct !{!713, i1 true, !"_ZN4llvm16DenseMapIteratorIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEELb0EE9makeBeginEPS6_PKjjbRKNS_14DebugEpochBaseE"}
!714 = distinct !{!714, !713, !"_ZN4llvm16DenseMapIteratorIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEELb0EE9makeBeginEPS6_PKjjbRKNS_14DebugEpochBaseE: argument 0"}
!715 = distinct !{!715, !123}
!716 = !{!705, !703}
!717 = !{!711, !709, !707}
!718 = !{!714, !705, !703}
!719 = distinct !{!719, !123}
!720 = distinct !{!720, !123}
!721 = !{!411, !411, i64 0}
!722 = !{!413, !412, i64 0}
!723 = !{!413, !412, i64 8}
!724 = !{!418, !415, i64 0}
!725 = !{!418, !415, i64 40}
!726 = !{!418, !415, i64 72}
!727 = !{!416, !416, i64 0}
!728 = !{!418, !50, i64 8}
!729 = !{!413, !412, i64 16}
!730 = distinct !{!730, !123}
!731 = distinct !{!731, !123}
!732 = !{!94, !59, i64 0}
!733 = !{!"_ZTSN4llvm22SparseBitVectorElementILj128EEE", !16, i64 0, !15, i64 8}
!734 = !{!733, !16, i64 0}
!735 = !{!59, !59, i64 0}
!736 = !{!92, !50, i64 16}
!737 = distinct !{!737, !123}
!738 = distinct !{!738, !123}
!739 = distinct !{!739, !123}
!740 = distinct !{!740, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E6getRepEv"}
!741 = distinct !{!741, !740, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E6getRepEv: argument 0"}
!742 = distinct !{!742, i1 true, !"_ZNK4llvm8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE6getRepEv"}
!743 = distinct !{!743, !742, !"_ZNK4llvm8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE6getRepEv: argument 0"}
!744 = !{!743, !741}
!745 = distinct !{!745, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E6getRepEv"}
!746 = distinct !{!746, !745, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E6getRepEv: argument 0"}
!747 = distinct !{!747, i1 true, !"_ZNK4llvm8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE6getRepEv"}
!748 = distinct !{!748, !747, !"_ZNK4llvm8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE6getRepEv: argument 0"}
!749 = !{!748, !746}
!750 = distinct !{!750, !123}
!751 = !{!424, !412, i64 16}
!752 = distinct !{!752, i1 true, !"_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjPNS_10bfi_detail16IrreducibleGraph7IrrNodeELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E4findERKj"}
!753 = distinct !{!753, !752, !"_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjPNS_10bfi_detail16IrreducibleGraph7IrrNodeELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E4findERKj: argument 0"}
!754 = distinct !{!754, i1 true, !"_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjPNS_10bfi_detail16IrreducibleGraph7IrrNodeELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E7find_asIjEENS_16DenseMapIteratorIjS5_S7_SA_Lb0EEERKT_"}
!755 = distinct !{!755, !754, !"_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjPNS_10bfi_detail16IrreducibleGraph7IrrNodeELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E7find_asIjEENS_16DenseMapIteratorIjS5_S7_SA_Lb0EEERKT_: argument 0"}
!756 = distinct !{!756, i1 true, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIjPNS_10bfi_detail16IrreducibleGraph7IrrNodeELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E6getRepEv"}
!757 = distinct !{!757, !756, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIjPNS_10bfi_detail16IrreducibleGraph7IrrNodeELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E6getRepEv: argument 0"}
!758 = distinct !{!758, i1 true, !"_ZNK4llvm13SmallDenseMapIjPNS_10bfi_detail16IrreducibleGraph7IrrNodeELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEE6getRepEv"}
!759 = distinct !{!759, !758, !"_ZNK4llvm13SmallDenseMapIjPNS_10bfi_detail16IrreducibleGraph7IrrNodeELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEE6getRepEv: argument 0"}
!760 = !{!759, !757, !755, !753}
!761 = !{!755, !753}
!762 = !{!"_ZTSSt4pairIjPN4llvm10bfi_detail16IrreducibleGraph7IrrNodeEE", !16, i64 0, !412, i64 8}
!763 = !{!762, !412, i64 8}
!764 = !{!"_ZTSNSt11_Deque_baseIPKN4llvm10bfi_detail16IrreducibleGraph7IrrNodeESaIS5_EE11_Deque_implE", !418, i64 0}
!765 = !{!"_ZTSSt11_Deque_baseIPKN4llvm10bfi_detail16IrreducibleGraph7IrrNodeESaIS5_EE", !764, i64 0}
!766 = !{!"_ZTSSt5dequeIPKN4llvm10bfi_detail16IrreducibleGraph7IrrNodeESaIS5_EE", !765, i64 0}
!767 = !{!"_ZTSN4llvm10bfi_detail16IrreducibleGraph7IrrNodeE", !312, i64 0, !16, i64 4, !766, i64 8}
!768 = !{!767, !16, i64 0}
!769 = distinct !{!769, i1 true, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIjPNS_10bfi_detail16IrreducibleGraph7IrrNodeELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E6getRepEv"}
!770 = distinct !{!770, !769, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIjPNS_10bfi_detail16IrreducibleGraph7IrrNodeELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E6getRepEv: argument 0"}
!771 = distinct !{!771, i1 true, !"_ZNK4llvm13SmallDenseMapIjPNS_10bfi_detail16IrreducibleGraph7IrrNodeELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEE6getRepEv"}
!772 = distinct !{!772, !771, !"_ZNK4llvm13SmallDenseMapIjPNS_10bfi_detail16IrreducibleGraph7IrrNodeELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEE6getRepEv: argument 0"}
!773 = !{!772, !770}
!774 = distinct !{!774, i1 true, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIjPNS_10bfi_detail16IrreducibleGraph7IrrNodeELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E6getRepEv"}
!775 = distinct !{!775, !774, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIjPNS_10bfi_detail16IrreducibleGraph7IrrNodeELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E6getRepEv: argument 0"}
!776 = distinct !{!776, i1 true, !"_ZNK4llvm13SmallDenseMapIjPNS_10bfi_detail16IrreducibleGraph7IrrNodeELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEE6getRepEv"}
!777 = distinct !{!777, !776, !"_ZNK4llvm13SmallDenseMapIjPNS_10bfi_detail16IrreducibleGraph7IrrNodeELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEE6getRepEv: argument 0"}
!778 = !{!777, !775}
!779 = !{!194, !194, i64 0}
!780 = !{i64 0, i64 8, !428, i64 8, i64 8, !779, i64 16, i64 4, !307}
!781 = distinct !{!781, !123}
!782 = distinct !{!782, !123}
!783 = distinct !{!783, !123}
!784 = distinct !{!784, i1 true, !"_ZN4llvm15SmallPtrSetImplIPKNS_17MachineBasicBlockEE6insertES3_"}
!785 = distinct !{!785, !784, !"_ZN4llvm15SmallPtrSetImplIPKNS_17MachineBasicBlockEE6insertES3_: argument 0"}
!786 = distinct !{!786, !123}
!787 = distinct !{!787, i1 true, !"_ZN4llvm15SmallPtrSetImplIPKNS_17MachineBasicBlockEE6insertES3_"}
!788 = distinct !{!788, !787, !"_ZN4llvm15SmallPtrSetImplIPKNS_17MachineBasicBlockEE6insertES3_: argument 0"}
!789 = distinct !{!789, i1 true, !"_ZN4llvm15SmallPtrSetImplIPKNS_17MachineBasicBlockEE6insertES3_"}
!790 = distinct !{!790, !789, !"_ZN4llvm15SmallPtrSetImplIPKNS_17MachineBasicBlockEE6insertES3_: argument 0"}
!791 = distinct !{!791, !123}
!792 = distinct !{!792, i1 true, !"_ZN4llvm15SmallPtrSetImplIPKNS_17MachineBasicBlockEE6insertES3_"}
!793 = distinct !{!793, !792, !"_ZN4llvm15SmallPtrSetImplIPKNS_17MachineBasicBlockEE6insertES3_: argument 0"}
!794 = distinct !{!794, !123}
!795 = !{!431, !108, i64 16}
!796 = !{!785}
!797 = !{!431, !108, i64 32}
!798 = !{!431, !108, i64 24}
!799 = !{!788}
!800 = !{!431, !108, i64 64}
!801 = !{!790}
!802 = !{!793}
!803 = distinct !{!803, !123}
!804 = distinct !{!804, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E4findES4_"}
!805 = distinct !{!805, !804, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E4findES4_: argument 0"}
!806 = distinct !{!806, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E7find_asIS4_EENS_16DenseMapIteratorIS4_mS6_S9_Lb1EEERKT_"}
!807 = distinct !{!807, !806, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E7find_asIS4_EENS_16DenseMapIteratorIS4_mS6_S9_Lb1EEERKT_: argument 0"}
!808 = distinct !{!808, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E6getRepEv"}
!809 = distinct !{!809, !808, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E6getRepEv: argument 0"}
!810 = distinct !{!810, i1 true, !"_ZNK4llvm8DenseMapIPKNS_17MachineBasicBlockEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEE6getRepEv"}
!811 = distinct !{!811, !810, !"_ZNK4llvm8DenseMapIPKNS_17MachineBasicBlockEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEE6getRepEv: argument 0"}
!812 = distinct !{!812, i1 true, !"_ZN4llvm15SmallPtrSetImplIPKNS_17MachineBasicBlockEE6insertES3_"}
!813 = distinct !{!813, !812, !"_ZN4llvm15SmallPtrSetImplIPKNS_17MachineBasicBlockEE6insertES3_: argument 0"}
!814 = distinct !{!814, i1 true, !"_ZSt19__relocate_object_aISt4pairImN4llvm12ScaledNumberImEEES4_SaIS4_EEvPT_PT0_RT1_"}
!815 = distinct !{!815, !814, !"_ZSt19__relocate_object_aISt4pairImN4llvm12ScaledNumberImEEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!816 = distinct !{!816, !814, !"_ZSt19__relocate_object_aISt4pairImN4llvm12ScaledNumberImEEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!817 = distinct !{!817, !123}
!818 = distinct !{!818, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E4findES4_"}
!819 = distinct !{!819, !818, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E4findES4_: argument 0"}
!820 = distinct !{!820, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E7find_asIS4_EENS_16DenseMapIteratorIS4_mS6_S9_Lb1EEERKT_"}
!821 = distinct !{!821, !820, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E7find_asIS4_EENS_16DenseMapIteratorIS4_mS6_S9_Lb1EEERKT_: argument 0"}
!822 = distinct !{!822, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E6getRepEv"}
!823 = distinct !{!823, !822, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E6getRepEv: argument 0"}
!824 = distinct !{!824, i1 true, !"_ZNK4llvm8DenseMapIPKNS_17MachineBasicBlockEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEE6getRepEv"}
!825 = distinct !{!825, !824, !"_ZNK4llvm8DenseMapIPKNS_17MachineBasicBlockEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEE6getRepEv: argument 0"}
!826 = distinct !{!826, i1 true, !"_ZSt19__relocate_object_aISt4pairImN4llvm12ScaledNumberImEEES4_SaIS4_EEvPT_PT0_RT1_"}
!827 = distinct !{!827, !826, !"_ZSt19__relocate_object_aISt4pairImN4llvm12ScaledNumberImEEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!828 = distinct !{!828, !826, !"_ZSt19__relocate_object_aISt4pairImN4llvm12ScaledNumberImEEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!829 = distinct !{!829, !123}
!830 = distinct !{!830, i1 true, !"_ZSt19__relocate_object_aISt4pairImN4llvm12ScaledNumberImEEES4_SaIS4_EEvPT_PT0_RT1_"}
!831 = distinct !{!831, !830, !"_ZSt19__relocate_object_aISt4pairImN4llvm12ScaledNumberImEEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!832 = distinct !{!832, !830, !"_ZSt19__relocate_object_aISt4pairImN4llvm12ScaledNumberImEEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!833 = distinct !{!833, !123}
!834 = !{!811, !809, !807, !805}
!835 = !{!807, !805}
!836 = !{!813}
!837 = !{!381, !380, i64 8}
!838 = !{!816, !815}
!839 = !{!825, !823, !821, !819}
!840 = !{!821, !819}
!841 = !{!828, !827}
!842 = !{!832, !831}
!843 = distinct !{!843, !123}
!844 = distinct !{!844, !123}
!845 = distinct !{!845, !123}
!846 = distinct !{!846, !123}
!847 = distinct !{!847, !123}
!848 = !{!"_ZTSN4llvm2cl15OptionValueCopyIdEE", !67, i64 0, !445, i64 8, !28, i64 16}
!849 = !{!"_ZTSN4llvm2cl15OptionValueBaseIdLb0EEE", !848, i64 0}
!850 = !{!"_ZTSN4llvm2cl11OptionValueIdEE", !849, i64 0}
!851 = !{!"_ZTSN4llvm2cl11opt_storageIdLb0ELb0EEE", !445, i64 0, !850, i64 8}
!852 = !{!851, !445, i64 0}
!853 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonImvEE", !24, i64 0}
!854 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseImLb1EEE", !853, i64 0}
!855 = !{!"_ZTSN4llvm15SmallVectorImplImEE", !854, i64 0}
!856 = !{!"_ZTSN4llvm18SmallVectorStorageImLj6EEE", !15, i64 0}
!857 = !{!"_ZTSN4llvm11SmallVectorImLj6EEE", !855, i64 0, !856, i64 16}
!858 = !{!"_ZTSN4llvm9BitVectorE", !857, i64 0, !16, i64 64}
!859 = !{!858, !16, i64 64}
!860 = !{!454, !452, i64 16}
!861 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !452, i64 0, !452, i64 8, !452, i64 16}
!862 = !{!861, !452, i64 8}
!863 = !{!861, !452, i64 16}
!864 = !{!861, !452, i64 0}
!865 = !{!454, !452, i64 64}
!866 = !{!454, !452, i64 32}
!867 = !{!454, !452, i64 24}
!868 = distinct !{!868, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E6getRepEv"}
!869 = distinct !{!869, !868, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E6getRepEv: argument 0"}
!870 = distinct !{!870, i1 true, !"_ZNK4llvm8DenseMapIPKNS_17MachineBasicBlockEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEE6getRepEv"}
!871 = distinct !{!871, !870, !"_ZNK4llvm8DenseMapIPKNS_17MachineBasicBlockEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEE6getRepEv: argument 0"}
!872 = !{!871, !869}
!873 = distinct !{!873, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E6getRepEv"}
!874 = distinct !{!874, !873, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E6getRepEv: argument 0"}
!875 = distinct !{!875, i1 true, !"_ZNK4llvm8DenseMapIPKNS_17MachineBasicBlockEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEE6getRepEv"}
!876 = distinct !{!876, !875, !"_ZNK4llvm8DenseMapIPKNS_17MachineBasicBlockEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEE6getRepEv: argument 0"}
!877 = !{!876, !874}
!878 = distinct !{!878, !123}
!879 = distinct !{!879, !123}
!880 = distinct !{!880, !123}
!881 = distinct !{null}
!882 = !{!"p1 _ZTSNSt3_V214error_categoryE", !21, i64 0}
!883 = !{!882, !882, i64 0}
!884 = !{!"_ZTSSt15error_condition", !16, i64 0, !882, i64 8}
!885 = !{!884, !882, i64 8}
!886 = !{!884, !16, i64 0}
!887 = !{!"_ZTSSt10error_code", !16, i64 0, !882, i64 8}
!888 = !{!887, !16, i64 0}
!889 = distinct !{!889, i1 true, !"_ZN4llvm5nodesIPNS_25MachineBlockFrequencyInfoEEENS_14iterator_rangeINS_11GraphTraitsIT_E14nodes_iteratorEEERKS5_"}
!890 = distinct !{!890, !889, !"_ZN4llvm5nodesIPNS_25MachineBlockFrequencyInfoEEENS_14iterator_rangeINS_11GraphTraitsIT_E14nodes_iteratorEEERKS5_: argument 0"}
!891 = !{!34, !34, i64 0}
!892 = !{!467, !467, i64 0}
!893 = !{!890}
!894 = distinct !{!894, i1 true, !"_ZN4llvm21DefaultDOTGraphTraits18getGraphPropertiesIPNS_25MachineBlockFrequencyInfoEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_"}
!895 = distinct !{!895, !894, !"_ZN4llvm21DefaultDOTGraphTraits18getGraphPropertiesIPNS_25MachineBlockFrequencyInfoEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_: argument 0"}
!896 = !{!895}
!897 = distinct !{!897, i1 true, !"_ZN4llvm14DOTGraphTraitsIPNS_25MachineBlockFrequencyInfoEE17getNodeAttributesB5cxx11EPKNS_17MachineBasicBlockEPKS1_"}
!898 = distinct !{!898, !897, !"_ZN4llvm14DOTGraphTraitsIPNS_25MachineBlockFrequencyInfoEE17getNodeAttributesB5cxx11EPKNS_17MachineBasicBlockEPKS1_: argument 0"}
!899 = distinct !{!899, !123, !909, !910}
!900 = distinct !{!900, !123, !910, !909}
!901 = distinct !{!901, i1 true, !"_ZN4llvm14DOTGraphTraitsIPNS_25MachineBlockFrequencyInfoEE17getEdgeAttributesB5cxx11EPKNS_17MachineBasicBlockEPKPS4_PKS1_"}
!902 = distinct !{!902, !901, !"_ZN4llvm14DOTGraphTraitsIPNS_25MachineBlockFrequencyInfoEE17getEdgeAttributesB5cxx11EPKNS_17MachineBasicBlockEPKPS4_PKS1_: argument 0"}
!903 = distinct !{!903, !123}
!904 = distinct !{!904, i1 true, !"_ZN4llvm14DOTGraphTraitsIPNS_25MachineBlockFrequencyInfoEE17getEdgeAttributesB5cxx11EPKNS_17MachineBasicBlockEPKPS4_PKS1_"}
!905 = distinct !{!905, !904, !"_ZN4llvm14DOTGraphTraitsIPNS_25MachineBlockFrequencyInfoEE17getEdgeAttributesB5cxx11EPKNS_17MachineBasicBlockEPKPS4_PKS1_: argument 0"}
!906 = distinct !{!906, !123}
!907 = !{!898}
!908 = !{!"branch_weights", i32 4, i32 28}
!909 = !{!"llvm.loop.isvectorized", i32 1}
!910 = !{!"llvm.loop.unroll.runtime.disable"}
!911 = !{!902}
!912 = !{!905}
!913 = distinct !{!913, !123}
!914 = !{!468, !28, i64 0}
!915 = !{!305, !107, i64 32}
!916 = !{!472, !107, i64 16}
!917 = distinct !{!917, !123, !918}
!918 = !{!"llvm.loop.unswitch.partial.disable"}
!919 = distinct !{!919, i1 true, !"_ZN4llvm14printBlockFreqERKNS_25MachineBlockFrequencyInfoERKNS_17MachineBasicBlockE"}
!920 = distinct !{!920, !919, !"_ZN4llvm14printBlockFreqERKNS_25MachineBlockFrequencyInfoERKNS_17MachineBasicBlockE: argument 0"}
!921 = !{!920}
!922 = distinct !{!922, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E6getRepEv"}
!923 = distinct !{!923, !922, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E6getRepEv: argument 0"}
!924 = distinct !{!924, i1 true, !"_ZNK4llvm8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEE6getRepEv"}
!925 = distinct !{!925, !924, !"_ZNK4llvm8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEE6getRepEv: argument 0"}
!926 = !{!925, !923}
!927 = distinct !{!927, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E6getRepEv"}
!928 = distinct !{!928, !927, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E6getRepEv: argument 0"}
!929 = distinct !{!929, i1 true, !"_ZNK4llvm8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEE6getRepEv"}
!930 = distinct !{!930, !929, !"_ZNK4llvm8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEE6getRepEv: argument 0"}
!931 = !{!930, !928}
!932 = distinct !{!932, !123}
!933 = distinct !{!933, !123}
!934 = distinct !{!934, !123}
!935 = distinct !{!935, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E6getRepEv"}
!936 = distinct !{!936, !935, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E6getRepEv: argument 0"}
!937 = distinct !{!937, i1 true, !"_ZNK4llvm8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEE6getRepEv"}
!938 = distinct !{!938, !937, !"_ZNK4llvm8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEE6getRepEv: argument 0"}
!939 = !{!938, !936}
!940 = distinct !{!940, i1 true, !"_ZN4llvm6formatIJdEEENS_13format_objectIJDpT_EEEPKcDpRKS2_"}
!941 = distinct !{!941, !940, !"_ZN4llvm6formatIJdEEENS_13format_objectIJDpT_EEEPKcDpRKS2_: argument 0"}
!942 = !{!941}
!943 = !{!491, !445, i64 0}
!944 = !{!496, !496, i64 0}
!945 = !{!"_ZTSZN4llvmlsIJdEEERNS_11raw_ostreamES2_NS_13format_objectIJDpT_EEEEUlPcmE_", !496, i64 0}
!946 = !{!945, !496, i64 0}
!947 = !{!445, !445, i64 0}
!948 = !{!"_ZTSZN4llvm14printBlockFreqERKNS_25MachineBlockFrequencyInfoENS_14BlockFrequencyEE3$_0", !308, i64 0, !488, i64 8}
!949 = !{!948, !308, i64 0}
!950 = !{!"p1 _ZTSSt9type_info", !21, i64 0}
!951 = !{!950, !950, i64 0}
!952 = !{i64 0, i64 8, !309, i64 8, i64 8, !51}
!953 = distinct !{!953, i1 true, !"_ZN4llvm2cl6valuesIJNS0_15OptionEnumValueES2_S2_S2_EEENS0_11ValuesClassEDpT_"}
!954 = distinct !{!954, !953, !"_ZN4llvm2cl6valuesIJNS0_15OptionEnumValueES2_S2_S2_EEENS0_11ValuesClassEDpT_: argument 0"}
!955 = distinct !{!955, i1 true, !"_ZN4llvm2cl6valuesIJNS0_15OptionEnumValueES2_S2_S2_EEENS0_11ValuesClassEDpT_"}
!956 = distinct !{!956, !955, !"_ZN4llvm2cl6valuesIJNS0_15OptionEnumValueES2_S2_S2_EEENS0_11ValuesClassEDpT_: argument 0"}
!957 = !{!954}
!958 = !{!321, !321, i64 0}
!959 = !{!956}
!960 = !{!81, !28, i64 8}
end_hunk_1
