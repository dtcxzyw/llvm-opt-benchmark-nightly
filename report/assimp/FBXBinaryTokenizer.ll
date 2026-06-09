inline.NumInlined: 348
inline.NumDeleted: 140
begin_hunk_0_@_ZN6Assimp3FBX12_GLOBAL__N_19ReadScopeERSt6vectorIPKNS0_5TokenESaIS5_EERNS_14StackAllocatorEPKcRSC_SC_b:bb.a
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i173, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i172: ; preds = %bb.ae
  %i.by = load i64, ptr %i.bw, align 8
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.bz) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i173

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i173: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i172
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #20
  br label %common.resume

bb.af:                                            ; preds = %bb.x
  %.0.copyload.i166 = load i64, ptr %i.ae, align 1
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 4 uses
  store ptr %i.ca, ptr %3, align 8
  %i.cb = icmp ugt ptr %i.ca, %4
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub i64 %i.ah, %i.cc
  %i.ce = icmp ult i64 %i.cd, 8
  %i.cf = or i1 %i.cb, %i.ce
  br i1 %i.cf, label %bb.ag, label %_ZN6Assimp3FBX12_GLOBAL__N_114ReadDoubleWordEPKcRS3_S3_.exit180

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %27)
  %i.cg = load ptr, ptr %3, align 8
  invoke fastcc void @_ZN6Assimp3FBX12_GLOBAL__N_113TokenizeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef %2, ptr noundef %i.cg) #21
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.ch = landingpad { ptr, i32 }
          cleanup
  %i.ci = load ptr, ptr %26, align 8              ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i178, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i177: ; preds = %bb.ai
  %i.cl = load i64, ptr %i.cj, align 8
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i178

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i178: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i177
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20
  br label %common.resume

_ZN6Assimp3FBX12_GLOBAL__N_114ReadDoubleWordEPKcRS3_S3_.exit180: ; preds = %bb.af
  %.0.copyload.i176 = load i64, ptr %i.ca, align 1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %i.cn, ptr %3, align 8
  br label %bb.an

bb.aj:                                            ; preds = %bb.ab
  %.0.copyload.i171 = load i32, ptr %i.ae, align 1
  %i.co = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 4 uses
  store ptr %i.co, ptr %3, align 8
  %i.cp = icmp ugt ptr %i.co, %4
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.ah, %i.cq
  %i.cs = icmp ult i64 %i.cr, 4
  %i.ct = or i1 %i.cp, %i.cs
  br i1 %i.ct, label %bb.ak, label %_ZN6Assimp3FBX12_GLOBAL__N_18ReadWordEPKcRS3_S3_.exit185

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %25)
  %i.cu = load ptr, ptr %3, align 8
  invoke fastcc void @_ZN6Assimp3FBX12_GLOBAL__N_113TokenizeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef %2, ptr noundef %i.cu) #21
          to label %bb.al unwind label %bb.am

bb.al:                                            ; preds = %bb.ak
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.cv = landingpad { ptr, i32 }
          cleanup
  %i.cw = load ptr, ptr %24, align 8              ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i183, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i182

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i182: ; preds = %bb.am
  %i.cz = load i64, ptr %i.cx, align 8
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i183

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i183: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i182
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  br label %common.resume

_ZN6Assimp3FBX12_GLOBAL__N_18ReadWordEPKcRS3_S3_.exit185: ; preds = %bb.aj
  %i.db = zext i32 %.0.copyload.i171 to i64
  %.0.copyload.i181 = load i32, ptr %i.co, align 1
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.dc, ptr %3, align 8
  %i.dd = zext i32 %.0.copyload.i181 to i64
  br label %bb.an

bb.an:                                            ; preds = %_ZN6Assimp3FBX12_GLOBAL__N_18ReadWordEPKcRS3_S3_.exit185, %_ZN6Assimp3FBX12_GLOBAL__N_114ReadDoubleWordEPKcRS3_S3_.exit180
  %i.de = phi i64 [ %.0.copyload.i166, %_ZN6Assimp3FBX12_GLOBAL__N_114ReadDoubleWordEPKcRS3_S3_.exit180 ], [ %i.db, %_ZN6Assimp3FBX12_GLOBAL__N_18ReadWordEPKcRS3_S3_.exit185 ] ; 3 uses
  %i.df = phi i64 [ %.0.copyload.i176, %_ZN6Assimp3FBX12_GLOBAL__N_114ReadDoubleWordEPKcRS3_S3_.exit180 ], [ %i.dd, %_ZN6Assimp3FBX12_GLOBAL__N_18ReadWordEPKcRS3_S3_.exit185 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  call fastcc void @_ZN6Assimp3FBX12_GLOBAL__N_110ReadStringERPKcS4_S3_S4_S3_bb(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4, i1 noundef zeroext false, i1 noundef zeroext false)
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 10 uses
  %i.dh = load i64, ptr %i.dg, align 8            ; 2 uses
  %i.di = add i64 %i.dh, 40                       ; 2 uses
  %i.dj = load i64, ptr %1, align 8               ; 2 uses
  %i.dk = icmp ugt i64 %i.di, %i.dj
  br i1 %i.dk, label %bb.ao, label %bb.au

bb.ao:                                            ; preds = %bb.an
  %i.dl = shl i64 %i.dj, 1
  %i.dm = tail call i64 @llvm.umax.i64(i64 %i.dl, i64 40)
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.dm, i64 67108864) ; 2 uses
  store i64 %.sroa.speculated.i, ptr %1, align 8
  %i.dn = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %.sroa.speculated.i) #25 ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.dq = load ptr, ptr %i.dp, align 8            ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8
  %.not.i.i = icmp eq ptr %i.dq, %i.ds
  br i1 %.not.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store ptr %i.dn, ptr %i.dq, align 8
  %i.dt = load ptr, ptr %i.dp, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store ptr %i.du, ptr %i.dp, align 8
  br label %_ZN6Assimp14StackAllocator8AllocateEm.exit

bb.aq:                                            ; preds = %bb.ao
  %i.dv = load ptr, ptr %i.do, align 8            ; 4 uses
  %i.dw = ptrtoint ptr %i.dq to i64
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = sub i64 %i.dw, %i.dx                    ; 6 uses
  %i.dz = icmp eq i64 %i.dy, 9223372036854775800
  br i1 %i.dz, label %bb.ar, label %_ZNKSt6vectorIPhSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ar:                                            ; preds = %bb.aq
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #21
  unreachable

_ZNKSt6vectorIPhSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.aq
  %i.ea = ashr exact i64 %i.dy, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ea, i64 1)
  %i.eb = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ea ; 2 uses
  %i.ec = icmp ult i64 %i.eb, %i.ea
  %i.ed = tail call i64 @llvm.umin.i64(i64 %i.eb, i64 1152921504606846975)
  %i.ee = select i1 %i.ec, i64 1152921504606846975, i64 %i.ed ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ee, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ef = shl nuw nsw i64 %i.ee, 3
  %i.eg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ef) #25 ; 4 uses
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 %i.dy ; 2 uses
  store ptr %i.dn, ptr %i.eh, align 8
  %i.ei = icmp sgt i64 %i.dy, 0
  br i1 %i.ei, label %bb.as, label %_ZNSt6vectorIPhSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

bb.as:                                            ; preds = %_ZNKSt6vectorIPhSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eg, ptr align 8 %i.dv, i64 %i.dy, i1 false)
  br label %_ZNSt6vectorIPhSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

_ZNSt6vectorIPhSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i: ; preds = %bb.as, %_ZNKSt6vectorIPhSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.dv, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIPhSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef %i.dy) #22
  br label %_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i

_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i: ; preds = %bb.at, %_ZNSt6vectorIPhSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i
  store ptr %i.eg, ptr %i.do, align 8
  store ptr %i.ej, ptr %i.dp, align 8
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.ee
  store ptr %i.ek, ptr %i.dr, align 8
  br label %_ZN6Assimp14StackAllocator8AllocateEm.exit

bb.au:                                            ; preds = %bb.an
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = getelementptr inbounds i8, ptr %i.em, i64 -8
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.dh
  br label %_ZN6Assimp14StackAllocator8AllocateEm.exit

_ZN6Assimp14StackAllocator8AllocateEm.exit:       ; preds = %bb.ap, %_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, %bb.au
  %storemerge.i = phi i64 [ %i.di, %bb.au ], [ 40, %_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ], [ 40, %bb.ap ]
  %.0.i186 = phi ptr [ %i.ep, %bb.au ], [ %i.dn, %_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ], [ %i.dn, %bb.ap ] ; 7 uses
  store i64 %storemerge.i, ptr %i.dg, align 8
  %i.eq = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.er = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.es = load ptr, ptr %3, align 8               ; 2 uses
  %i.et = icmp ugt ptr %2, %i.es
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = sub i64 %i.eu, %i.ai
  %.0.i187 = select i1 %i.et, i64 0, i64 %i.ev
  store ptr %i.eq, ptr %.0.i186, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %.0.i186, i64 8
  store ptr %i.er, ptr %i.ew, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %.0.i186, i64 16
  store i32 5, ptr %i.ex, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %.0.i186, i64 24
  store i64 %.0.i187, ptr %i.ey, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %.0.i186, i64 32
  store i32 -1, ptr %i.ez, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 20 uses
  %i.fb = load ptr, ptr %i.fa, align 8            ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.fd = load ptr, ptr %i.fc, align 8
  %.not.i.i188 = icmp eq ptr %i.fb, %i.fd
  br i1 %.not.i.i188, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %_ZN6Assimp14StackAllocator8AllocateEm.exit
  store ptr %.0.i186, ptr %i.fb, align 8
  %i.fe = load ptr, ptr %i.fa, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  store ptr %i.ff, ptr %i.fa, align 8
  br label %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE9push_backEOS4_.exit

bb.aw:                                            ; preds = %_ZN6Assimp14StackAllocator8AllocateEm.exit
  %i.fg = load ptr, ptr %0, align 8               ; 4 uses
  %i.fh = ptrtoint ptr %i.fb to i64
  %i.fi = ptrtoint ptr %i.fg to i64
  %i.fj = sub i64 %i.fh, %i.fi                    ; 6 uses
  %i.fk = icmp eq i64 %i.fj, 9223372036854775800
  br i1 %i.fk, label %bb.ax, label %_ZNKSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ax:                                            ; preds = %bb.aw
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #21
  unreachable

_ZNKSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.aw
  %i.fl = ashr exact i64 %i.fj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i189 = tail call i64 @llvm.umax.i64(i64 %i.fl, i64 1)
  %i.fm = add nsw i64 %.sroa.speculated.i.i.i.i189, %i.fl ; 2 uses
  %i.fn = icmp ult i64 %i.fm, %i.fl
  %i.fo = tail call i64 @llvm.umin.i64(i64 %i.fm, i64 1152921504606846975)
  %i.fp = select i1 %i.fn, i64 1152921504606846975, i64 %i.fo ; 3 uses
  %.not.i.i.i.i190 = icmp ne i64 %i.fp, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i190)
  %i.fq = shl nuw nsw i64 %i.fp, 3
  %i.fr = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fq) #25 ; 4 uses
  %i.fs = getelementptr inbounds i8, ptr %i.fr, i64 %i.fj ; 2 uses
  store ptr %.0.i186, ptr %i.fs, align 8
  %i.ft = icmp sgt i64 %i.fj, 0
  br i1 %i.ft, label %bb.ay, label %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.ay:                                            ; preds = %_ZNKSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fr, ptr align 8 %i.fg, i64 %i.fj, i1 false)
  br label %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.ay, %_ZNKSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %.not.i17.i.i.i191 = icmp eq ptr %i.fg, null
  br i1 %.not.i17.i.i.i191, label %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fg, i64 noundef %i.fj) #22
  br label %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.az, %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  store ptr %i.fr, ptr %0, align 8
  store ptr %i.fu, ptr %i.fa, align 8
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.fp
  store ptr %i.fv, ptr %i.fc, align 8
  br label %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE9push_backEOS4_.exit: ; preds = %bb.av, %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i
  %i.fw = load ptr, ptr %3, align 8               ; 4 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.df ; 9 uses
  %i.fy = icmp ugt ptr %i.fx, %4
  br i1 %i.fy, label %bb.ba, label %.preheader

.preheader:                                       ; preds = %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE9push_backEOS4_.exit
  %.not351 = icmp eq i64 %i.de, 0
  br i1 %.not351, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.fz = ptrtoint ptr %i.fx to i64               ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 10 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.gd = add i64 %i.de, -1
  br label %bb.bf

bb.ba:                                            ; preds = %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE9push_backEOS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %40, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %41)
          to label %bb.bb unwind label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.ge = load ptr, ptr %3, align 8
  invoke fastcc void @_ZN6Assimp3FBX12_GLOBAL__N_113TokenizeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_(ptr noundef nonnull align 8 dereferenceable(32) %40, ptr noundef %2, ptr noundef %i.ge) #21
          to label %bb.bc unwind label %bb.be

bb.bc:                                            ; preds = %bb.bb
  unreachable

bb.bd:                                            ; preds = %bb.ba
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194

bb.be:                                            ; preds = %bb.bb
  %i.gg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gh = load ptr, ptr %40, align 8              ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 2 uses
  %i.gj = icmp eq ptr %i.gh, %i.gi
  br i1 %i.gj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192: ; preds = %bb.be
  %i.gk = load i64, ptr %i.gi, align 8
  %i.gl = add i64 %i.gk, 1
  call void @_ZdlPvm(ptr noundef %i.gh, i64 noundef %i.gl) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192, %bb.bd
  %.pn150 = phi { ptr, i32 } [ %i.gf, %bb.bd ], [ %i.gg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192 ], [ %i.gg, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #20
  br label %bb.ge

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE9push_backEOS4_.exit239
  %.pre = load ptr, ptr %3, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.gm = phi ptr [ %i.fw, %.preheader ], [ %.pre, %._crit_edge.loopexit ] ; 4 uses
  %.lcssa331 = phi ptr [ %i.er, %.preheader ], [ %i.lh, %._crit_edge.loopexit ]
  %.lcssa316 = phi ptr [ %i.eq, %.preheader ], [ %i.gs, %._crit_edge.loopexit ]
  store ptr %.lcssa316, ptr %i.c, align 8
  store ptr %.lcssa331, ptr %i.d, align 8
  %i.gn = icmp ugt ptr %i.fw, %i.gm
  %i.go = ptrtoint ptr %i.gm to i64               ; 2 uses
  %i.gp = ptrtoint ptr %i.fw to i64
  %i.gq = sub i64 %i.go, %i.gp
  %.0.i195 = select i1 %i.gn, i64 0, i64 %i.gq
  %.not138 = icmp eq i64 %.0.i195, %i.df
  br i1 %.not138, label %bb.ei, label %bb.ed

bb.bf:                                            ; preds = %.lr.ph, %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE9push_backEOS4_.exit239
  %i.gr = phi i64 [ 0, %.lr.ph ], [ %i.py, %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE9push_backEOS4_.exit239 ]
  %.0120345 = phi i32 [ 0, %.lr.ph ], [ %i.px, %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE9push_backEOS4_.exit239 ]
  %i.gs = load ptr, ptr %3, align 8               ; 14 uses
  %.not.i = icmp ugt ptr %i.fx, %i.gs
  br i1 %.not.i, label %bb.bl, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.bh unwind label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.gt = load ptr, ptr %3, align 8
  invoke fastcc void @_ZN6Assimp3FBX12_GLOBAL__N_113TokenizeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef %2, ptr noundef %i.gt) #21
          to label %bb.bi unwind label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  unreachable

bb.bj:                                            ; preds = %bb.bg
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i196

bb.bk:                                            ; preds = %bb.bh
  %i.gv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gw = load ptr, ptr %14, align 8              ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.gy = icmp eq ptr %i.gw, %i.gx
  br i1 %i.gy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i196, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i197

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i197: ; preds = %bb.bk
  %i.gz = load i64, ptr %i.gx, align 8
  %i.ha = add i64 %i.gz, 1
  call void @_ZdlPvm(ptr noundef %i.gw, i64 noundef %i.ha) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i196

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i196: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i197, %bb.bj
  %.pn76.i = phi { ptr, i32 } [ %i.gu, %bb.bj ], [ %i.gv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i197 ], [ %i.gv, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br label %common.resume

end_hunk_0
begin_hunk_1_@_ZN6Assimp3FBX12_GLOBAL__N_19ReadScopeERSt6vectorIPKNS0_5TokenESaIS5_EERNS_14StackAllocatorEPKcRSC_SC_b:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  %i.kb = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 4 uses
  store ptr %i.kb, ptr %21, align 8
  store i8 %i.hb, ptr %i.kb, align 8
  %i.kc = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 1, ptr %i.kc, align 8
  %i.kd = getelementptr inbounds nuw i8, ptr %21, i64 17
  store i8 0, ptr %i.kd, align 1
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef nonnull @.str.28, ptr noundef nonnull align 8 dereferenceable(32) %21)
          to label %bb.cu unwind label %bb.cw

bb.cu:                                            ; preds = %bb.ct
  %i.ke = load ptr, ptr %3, align 8
  invoke fastcc void @_ZN6Assimp3FBX12_GLOBAL__N_113TokenizeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef %2, ptr noundef %i.ke) #21
          to label %bb.cv unwind label %bb.cx

bb.cv:                                            ; preds = %bb.cu
  unreachable

bb.cw:                                            ; preds = %bb.ct
  %i.kf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.i

bb.cx:                                            ; preds = %bb.cu
  %i.kg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kh = load ptr, ptr %20, align 8              ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.kj = icmp eq ptr %i.kh, %i.ki
  br i1 %i.kj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100.i: ; preds = %bb.cx
  %i.kk = load i64, ptr %i.ki, align 8
  %i.kl = add i64 %i.kk, 1
  call void @_ZdlPvm(ptr noundef %i.kh, i64 noundef %i.kl) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.i: ; preds = %bb.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100.i, %bb.cw
  %.pn72.i = phi { ptr, i32 } [ %i.kf, %bb.cw ], [ %i.kg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100.i ], [ %i.kg, %bb.cx ]
  %i.km = load ptr, ptr %21, align 8              ; 2 uses
  %i.kn = icmp eq ptr %i.km, %i.kb
  br i1 %i.kn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.i
  %i.ko = load i64, ptr %i.kb, align 8
  %i.kp = add i64 %i.ko, 1
  call void @_ZdlPvm(ptr noundef %i.km, i64 noundef %i.kp) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  br label %common.resume

bb.cy:                                            ; preds = %bb.cs, %bb.cr, %_ZN6Assimp3FBX12_GLOBAL__N_18ReadWordEPKcRS3_S3_.exit.i, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm
  %i.kq = phi ptr [ %.pre.i, %bb.cs ], [ %i.ka, %bb.cr ], [ %i.hd, %bb.bm ], [ %i.hu, %_ZN6Assimp3FBX12_GLOBAL__N_18ReadWordEPKcRS3_S3_.exit.i ], [ %i.hh, %bb.bq ], [ %i.hg, %bb.bp ], [ %i.hf, %bb.bo ], [ %i.he, %bb.bn ] ; 2 uses
  %i.kr = icmp ugt ptr %i.kq, %i.fx
  br i1 %i.kr, label %bb.cz, label %_ZN6Assimp3FBX12_GLOBAL__N_18ReadDataERPKcS4_S3_S4_S3_.exit

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20
  %i.ks = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  store ptr %i.ks, ptr %23, align 8
  store i8 %i.hb, ptr %i.ks, align 8
  %i.kt = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 1, ptr %i.kt, align 8
  %i.ku = getelementptr inbounds nuw i8, ptr %23, i64 17
  store i8 0, ptr %i.ku, align 1
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull @.str.29, ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %bb.da unwind label %bb.dc

bb.da:                                            ; preds = %bb.cz
  %i.kv = load ptr, ptr %3, align 8
  invoke fastcc void @_ZN6Assimp3FBX12_GLOBAL__N_113TokenizeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef %2, ptr noundef %i.kv) #21
          to label %bb.db unwind label %bb.dd

bb.db:                                            ; preds = %bb.da
  unreachable

bb.dc:                                            ; preds = %bb.cz
  %i.kw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108.i

bb.dd:                                            ; preds = %bb.da
  %i.kx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ky = load ptr, ptr %22, align 8              ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.la = icmp eq ptr %i.ky, %i.kz
  br i1 %i.la, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106.i: ; preds = %bb.dd
  %i.lb = load i64, ptr %i.kz, align 8
  %i.lc = add i64 %i.lb, 1
  call void @_ZdlPvm(ptr noundef %i.ky, i64 noundef %i.lc) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108.i: ; preds = %bb.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106.i, %bb.dc
  %.pn69.i = phi { ptr, i32 } [ %i.kw, %bb.dc ], [ %i.kx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106.i ], [ %i.kx, %bb.dd ]
  %i.ld = load ptr, ptr %23, align 8              ; 2 uses
  %i.le = icmp eq ptr %i.ld, %i.ks
  br i1 %i.le, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108.i
  %i.lf = load i64, ptr %i.ks, align 8
  %i.lg = add i64 %i.lf, 1
  call void @_ZdlPvm(ptr noundef %i.ld, i64 noundef %i.lg) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  br label %common.resume

_ZN6Assimp3FBX12_GLOBAL__N_18ReadDataERPKcS4_S3_S4_S3_.exit: ; preds = %.thread.i, %bb.cy
  %i.lh = phi ptr [ %i.fx, %.thread.i ], [ %i.kq, %bb.cy ] ; 2 uses
  %i.li = load i64, ptr %i.dg, align 8            ; 2 uses
  %i.lj = add i64 %i.li, 40                       ; 2 uses
  %i.lk = load i64, ptr %1, align 8               ; 2 uses
  %i.ll = icmp ugt i64 %i.lj, %i.lk
  br i1 %i.ll, label %bb.de, label %bb.dk

bb.de:                                            ; preds = %_ZN6Assimp3FBX12_GLOBAL__N_18ReadDataERPKcS4_S3_S4_S3_.exit
  %i.lm = shl i64 %i.lk, 1
  %i.ln = tail call i64 @llvm.umax.i64(i64 %i.lm, i64 40)
  %.sroa.speculated.i202 = tail call i64 @llvm.umin.i64(i64 %i.ln, i64 67108864) ; 2 uses
  store i64 %.sroa.speculated.i202, ptr %1, align 8
  %i.lo = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %.sroa.speculated.i202) #25 ; 4 uses
  %i.lp = load ptr, ptr %i.ga, align 8            ; 3 uses
  %i.lq = load ptr, ptr %i.gc, align 8
  %.not.i.i203 = icmp eq ptr %i.lp, %i.lq
  br i1 %.not.i.i203, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  store ptr %i.lo, ptr %i.lp, align 8
  %i.lr = load ptr, ptr %i.ga, align 8
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  store ptr %i.ls, ptr %i.ga, align 8
  br label %_ZN6Assimp14StackAllocator8AllocateEm.exit210

bb.dg:                                            ; preds = %bb.de
  %i.lt = load ptr, ptr %i.gb, align 8            ; 4 uses
  %i.lu = ptrtoint ptr %i.lp to i64
  %i.lv = ptrtoint ptr %i.lt to i64
  %i.lw = sub i64 %i.lu, %i.lv                    ; 6 uses
  %i.lx = icmp eq i64 %i.lw, 9223372036854775800
  br i1 %i.lx, label %bb.dh, label %_ZNKSt6vectorIPhSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i204

bb.dh:                                            ; preds = %bb.dg
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #21
  unreachable

_ZNKSt6vectorIPhSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i204: ; preds = %bb.dg
  %i.ly = ashr exact i64 %i.lw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i205 = tail call i64 @llvm.umax.i64(i64 %i.ly, i64 1)
  %i.lz = add nsw i64 %.sroa.speculated.i.i.i.i205, %i.ly ; 2 uses
  %i.ma = icmp ult i64 %i.lz, %i.ly
  %i.mb = tail call i64 @llvm.umin.i64(i64 %i.lz, i64 1152921504606846975)
  %i.mc = select i1 %i.ma, i64 1152921504606846975, i64 %i.mb ; 3 uses
  %.not.i.i.i.i206 = icmp ne i64 %i.mc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i206)
  %i.md = shl nuw nsw i64 %i.mc, 3
  %i.me = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.md) #25 ; 4 uses
  %i.mf = getelementptr inbounds i8, ptr %i.me, i64 %i.lw ; 2 uses
  store ptr %i.lo, ptr %i.mf, align 8
  %i.mg = icmp sgt i64 %i.lw, 0
  br i1 %i.mg, label %bb.di, label %_ZNSt6vectorIPhSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i207

bb.di:                                            ; preds = %_ZNKSt6vectorIPhSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i204
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.me, ptr align 8 %i.lt, i64 %i.lw, i1 false)
  br label %_ZNSt6vectorIPhSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i207

_ZNSt6vectorIPhSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i207: ; preds = %bb.di, %_ZNKSt6vectorIPhSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i204
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  %.not.i17.i.i.i208 = icmp eq ptr %i.lt, null
  br i1 %.not.i17.i.i.i208, label %_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i209, label %bb.dj

bb.dj:                                            ; preds = %_ZNSt6vectorIPhSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i207
  tail call void @_ZdlPvm(ptr noundef nonnull %i.lt, i64 noundef %i.lw) #22
  br label %_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i209

_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i209: ; preds = %bb.dj, %_ZNSt6vectorIPhSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i207
  store ptr %i.me, ptr %i.gb, align 8
  store ptr %i.mh, ptr %i.ga, align 8
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.me, i64 %i.mc
  store ptr %i.mi, ptr %i.gc, align 8
  br label %_ZN6Assimp14StackAllocator8AllocateEm.exit210

bb.dk:                                            ; preds = %_ZN6Assimp3FBX12_GLOBAL__N_18ReadDataERPKcS4_S3_S4_S3_.exit
  %i.mj = load ptr, ptr %i.ga, align 8
  %i.mk = getelementptr inbounds i8, ptr %i.mj, i64 -8
  %i.ml = load ptr, ptr %i.mk, align 8
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 %i.li
  br label %_ZN6Assimp14StackAllocator8AllocateEm.exit210

_ZN6Assimp14StackAllocator8AllocateEm.exit210:    ; preds = %bb.df, %_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i209, %bb.dk
  %storemerge.i200 = phi i64 [ %i.lj, %bb.dk ], [ 40, %_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i209 ], [ 40, %bb.df ]
  %.0.i201 = phi ptr [ %i.mm, %bb.dk ], [ %i.lo, %_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i209 ], [ %i.lo, %bb.df ] ; 7 uses
  store i64 %storemerge.i200, ptr %i.dg, align 8
  %i.mn = load ptr, ptr %3, align 8               ; 2 uses
  %i.mo = icmp ugt ptr %2, %i.mn
  %i.mp = ptrtoint ptr %i.mn to i64
  %i.mq = sub i64 %i.mp, %i.ai
  %.0.i211 = select i1 %i.mo, i64 0, i64 %i.mq
  store ptr %i.gs, ptr %.0.i201, align 8
  %i.mr = getelementptr inbounds nuw i8, ptr %.0.i201, i64 8
  store ptr %i.lh, ptr %i.mr, align 8
  %i.ms = getelementptr inbounds nuw i8, ptr %.0.i201, i64 16
  store i32 2, ptr %i.ms, align 8
  %i.mt = getelementptr inbounds nuw i8, ptr %.0.i201, i64 24
  store i64 %.0.i211, ptr %i.mt, align 8
  %i.mu = getelementptr inbounds nuw i8, ptr %.0.i201, i64 32
  store i32 -1, ptr %i.mu, align 8
  %i.mv = load ptr, ptr %i.fa, align 8            ; 3 uses
  %i.mw = load ptr, ptr %i.fc, align 8
  %.not.i.i212 = icmp eq ptr %i.mv, %i.mw
  br i1 %.not.i.i212, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %_ZN6Assimp14StackAllocator8AllocateEm.exit210
  store ptr %.0.i201, ptr %i.mv, align 8
  %i.mx = load ptr, ptr %i.fa, align 8
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 8
  store ptr %i.my, ptr %i.fa, align 8
  br label %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE9push_backEOS4_.exit219

bb.dm:                                            ; preds = %_ZN6Assimp14StackAllocator8AllocateEm.exit210
  %i.mz = load ptr, ptr %0, align 8               ; 4 uses
  %i.na = ptrtoint ptr %i.mv to i64
  %i.nb = ptrtoint ptr %i.mz to i64
  %i.nc = sub i64 %i.na, %i.nb                    ; 6 uses
  %i.nd = icmp eq i64 %i.nc, 9223372036854775800
  br i1 %i.nd, label %bb.dn, label %_ZNKSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i213

bb.dn:                                            ; preds = %bb.dm
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #21
  unreachable

_ZNKSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i213: ; preds = %bb.dm
  %i.ne = ashr exact i64 %i.nc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i214 = tail call i64 @llvm.umax.i64(i64 %i.ne, i64 1)
  %i.nf = add nsw i64 %.sroa.speculated.i.i.i.i214, %i.ne ; 2 uses
  %i.ng = icmp ult i64 %i.nf, %i.ne
  %i.nh = tail call i64 @llvm.umin.i64(i64 %i.nf, i64 1152921504606846975)
  %i.ni = select i1 %i.ng, i64 1152921504606846975, i64 %i.nh ; 3 uses
  %.not.i.i.i.i215 = icmp ne i64 %i.ni, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i215)
  %i.nj = shl nuw nsw i64 %i.ni, 3
  %i.nk = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nj) #25 ; 4 uses
  %i.nl = getelementptr inbounds i8, ptr %i.nk, i64 %i.nc ; 2 uses
  store ptr %.0.i201, ptr %i.nl, align 8
  %i.nm = icmp sgt i64 %i.nc, 0
  br i1 %i.nm, label %bb.do, label %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i216

bb.do:                                            ; preds = %_ZNKSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i213
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.nk, ptr align 8 %i.mz, i64 %i.nc, i1 false)
  br label %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i216

_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i216: ; preds = %bb.do, %_ZNKSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i213
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nl, i64 8
  %.not.i17.i.i.i217 = icmp eq ptr %i.mz, null
  br i1 %.not.i17.i.i.i217, label %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i218, label %bb.dp

bb.dp:                                            ; preds = %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i216
  tail call void @_ZdlPvm(ptr noundef nonnull %i.mz, i64 noundef %i.nc) #22
  br label %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i218

_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i218: ; preds = %bb.dp, %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i216
  store ptr %i.nk, ptr %0, align 8
  store ptr %i.nn, ptr %i.fa, align 8
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.nk, i64 %i.ni
  store ptr %i.no, ptr %i.fc, align 8
  br label %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE9push_backEOS4_.exit219

_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE9push_backEOS4_.exit219: ; preds = %bb.dl, %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i218
  %.not149 = icmp eq i64 %i.gd, %i.gr
  br i1 %.not149, label %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE9push_backEOS4_.exit239, label %bb.dq

bb.dq:                                            ; preds = %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE9push_backEOS4_.exit219
  %i.np = load i64, ptr %i.dg, align 8            ; 2 uses
  %i.nq = add i64 %i.np, 40                       ; 2 uses
  %i.nr = load i64, ptr %1, align 8               ; 2 uses
  %i.ns = icmp ugt i64 %i.nq, %i.nr
  br i1 %i.ns, label %bb.dr, label %bb.dx

bb.dr:                                            ; preds = %bb.dq
  %i.nt = shl i64 %i.nr, 1
  %i.nu = tail call i64 @llvm.umax.i64(i64 %i.nt, i64 40)
  %.sroa.speculated.i222 = tail call i64 @llvm.umin.i64(i64 %i.nu, i64 67108864) ; 2 uses
  store i64 %.sroa.speculated.i222, ptr %1, align 8
  %i.nv = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %.sroa.speculated.i222) #25 ; 4 uses
  %i.nw = load ptr, ptr %i.ga, align 8            ; 3 uses
  %i.nx = load ptr, ptr %i.gc, align 8
  %.not.i.i223 = icmp eq ptr %i.nw, %i.nx
  br i1 %.not.i.i223, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  store ptr %i.nv, ptr %i.nw, align 8
  %i.ny = load ptr, ptr %i.ga, align 8
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 8
  store ptr %i.nz, ptr %i.ga, align 8
  br label %_ZN6Assimp14StackAllocator8AllocateEm.exit230

bb.dt:                                            ; preds = %bb.dr
  %i.oa = load ptr, ptr %i.gb, align 8            ; 4 uses
  %i.ob = ptrtoint ptr %i.nw to i64
  %i.oc = ptrtoint ptr %i.oa to i64
  %i.od = sub i64 %i.ob, %i.oc                    ; 6 uses
  %i.oe = icmp eq i64 %i.od, 9223372036854775800
  br i1 %i.oe, label %bb.du, label %_ZNKSt6vectorIPhSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i224

bb.du:                                            ; preds = %bb.dt
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #21
  unreachable

_ZNKSt6vectorIPhSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i224: ; preds = %bb.dt
  %i.of = ashr exact i64 %i.od, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i225 = tail call i64 @llvm.umax.i64(i64 %i.of, i64 1)
  %i.og = add nsw i64 %.sroa.speculated.i.i.i.i225, %i.of ; 2 uses
  %i.oh = icmp ult i64 %i.og, %i.of
  %i.oi = tail call i64 @llvm.umin.i64(i64 %i.og, i64 1152921504606846975)
  %i.oj = select i1 %i.oh, i64 1152921504606846975, i64 %i.oi ; 3 uses
  %.not.i.i.i.i226 = icmp ne i64 %i.oj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i226)
  %i.ok = shl nuw nsw i64 %i.oj, 3
  %i.ol = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ok) #25 ; 4 uses
  %i.om = getelementptr inbounds i8, ptr %i.ol, i64 %i.od ; 2 uses
  store ptr %i.nv, ptr %i.om, align 8
  %i.on = icmp sgt i64 %i.od, 0
  br i1 %i.on, label %bb.dv, label %_ZNSt6vectorIPhSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i227

bb.dv:                                            ; preds = %_ZNKSt6vectorIPhSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i224
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ol, ptr align 8 %i.oa, i64 %i.od, i1 false)
  br label %_ZNSt6vectorIPhSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i227

_ZNSt6vectorIPhSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i227: ; preds = %bb.dv, %_ZNKSt6vectorIPhSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i224
  %i.oo = getelementptr inbounds nuw i8, ptr %i.om, i64 8
  %.not.i17.i.i.i228 = icmp eq ptr %i.oa, null
  br i1 %.not.i17.i.i.i228, label %_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i229, label %bb.dw

bb.dw:                                            ; preds = %_ZNSt6vectorIPhSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i227
  tail call void @_ZdlPvm(ptr noundef nonnull %i.oa, i64 noundef %i.od) #22
  br label %_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i229

_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i229: ; preds = %bb.dw, %_ZNSt6vectorIPhSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i227
  store ptr %i.ol, ptr %i.gb, align 8
  store ptr %i.oo, ptr %i.ga, align 8
  %i.op = getelementptr inbounds nuw [8 x i8], ptr %i.ol, i64 %i.oj
  store ptr %i.op, ptr %i.gc, align 8
  br label %_ZN6Assimp14StackAllocator8AllocateEm.exit230

bb.dx:                                            ; preds = %bb.dq
  %i.oq = load ptr, ptr %i.ga, align 8
  %i.or = getelementptr inbounds i8, ptr %i.oq, i64 -8
  %i.os = load ptr, ptr %i.or, align 8
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 %i.np
  br label %_ZN6Assimp14StackAllocator8AllocateEm.exit230

_ZN6Assimp14StackAllocator8AllocateEm.exit230:    ; preds = %bb.ds, %_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i229, %bb.dx
  %storemerge.i220 = phi i64 [ %i.nq, %bb.dx ], [ 40, %_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i229 ], [ 40, %bb.ds ]
  %.0.i221 = phi ptr [ %i.ot, %bb.dx ], [ %i.nv, %_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i229 ], [ %i.nv, %bb.ds ] ; 7 uses
  store i64 %storemerge.i220, ptr %i.dg, align 8
  %i.ou = load ptr, ptr %3, align 8               ; 4 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 1
  %i.ow = icmp ugt ptr %2, %i.ou
  %i.ox = ptrtoint ptr %i.ou to i64
  %i.oy = sub i64 %i.ox, %i.ai
  %.0.i231 = select i1 %i.ow, i64 0, i64 %i.oy
  store ptr %i.ou, ptr %.0.i221, align 8
  %i.oz = getelementptr inbounds nuw i8, ptr %.0.i221, i64 8
  store ptr %i.ov, ptr %i.oz, align 8
  %i.pa = getelementptr inbounds nuw i8, ptr %.0.i221, i64 16
  store i32 4, ptr %i.pa, align 8
  %i.pb = getelementptr inbounds nuw i8, ptr %.0.i221, i64 24
  store i64 %.0.i231, ptr %i.pb, align 8
  %i.pc = getelementptr inbounds nuw i8, ptr %.0.i221, i64 32
  store i32 -1, ptr %i.pc, align 8
  %i.pd = load ptr, ptr %i.fa, align 8            ; 3 uses
  %i.pe = load ptr, ptr %i.fc, align 8
  %.not.i.i232 = icmp eq ptr %i.pd, %i.pe
  br i1 %.not.i.i232, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %_ZN6Assimp14StackAllocator8AllocateEm.exit230
  store ptr %.0.i221, ptr %i.pd, align 8
  %i.pf = load ptr, ptr %i.fa, align 8
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 8
  store ptr %i.pg, ptr %i.fa, align 8
  br label %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE9push_backEOS4_.exit239

bb.dz:                                            ; preds = %_ZN6Assimp14StackAllocator8AllocateEm.exit230
  %i.ph = load ptr, ptr %0, align 8               ; 4 uses
  %i.pi = ptrtoint ptr %i.pd to i64
  %i.pj = ptrtoint ptr %i.ph to i64
  %i.pk = sub i64 %i.pi, %i.pj                    ; 6 uses
  %i.pl = icmp eq i64 %i.pk, 9223372036854775800
  br i1 %i.pl, label %bb.ea, label %_ZNKSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i233

bb.ea:                                            ; preds = %bb.dz
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #21
  unreachable

_ZNKSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i233: ; preds = %bb.dz
  %i.pm = ashr exact i64 %i.pk, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i234 = tail call i64 @llvm.umax.i64(i64 %i.pm, i64 1)
  %i.pn = add nsw i64 %.sroa.speculated.i.i.i.i234, %i.pm ; 2 uses
  %i.po = icmp ult i64 %i.pn, %i.pm
  %i.pp = tail call i64 @llvm.umin.i64(i64 %i.pn, i64 1152921504606846975)
  %i.pq = select i1 %i.po, i64 1152921504606846975, i64 %i.pp ; 3 uses
  %.not.i.i.i.i235 = icmp ne i64 %i.pq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i235)
  %i.pr = shl nuw nsw i64 %i.pq, 3
  %i.ps = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pr) #25 ; 4 uses
  %i.pt = getelementptr inbounds i8, ptr %i.ps, i64 %i.pk ; 2 uses
  store ptr %.0.i221, ptr %i.pt, align 8
  %i.pu = icmp sgt i64 %i.pk, 0
  br i1 %i.pu, label %bb.eb, label %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i236

bb.eb:                                            ; preds = %_ZNKSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i233
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ps, ptr align 8 %i.ph, i64 %i.pk, i1 false)
  br label %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i236

_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i236: ; preds = %bb.eb, %_ZNKSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i233
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pt, i64 8
  %.not.i17.i.i.i237 = icmp eq ptr %i.ph, null
  br i1 %.not.i17.i.i.i237, label %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i238, label %bb.ec

bb.ec:                                            ; preds = %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i236
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ph, i64 noundef %i.pk) #22
  br label %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i238

_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i238: ; preds = %bb.ec, %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i236
  store ptr %i.ps, ptr %0, align 8
  store ptr %i.pv, ptr %i.fa, align 8
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr %i.ps, i64 %i.pq
  store ptr %i.pw, ptr %i.fc, align 8
  br label %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE9push_backEOS4_.exit239

_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE9push_backEOS4_.exit239: ; preds = %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i238, %bb.dy, %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE9push_backEOS4_.exit219
  %i.px = add i32 %.0120345, 1                    ; 2 uses
  %i.py = zext i32 %i.px to i64                   ; 2 uses
  %i.pz = icmp ugt i64 %i.de, %i.py
  br i1 %i.pz, label %bb.bf, label %._crit_edge.loopexit, !llvm.loop !5

bb.ed:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %42, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %43)
          to label %bb.ee unwind label %bb.eg

bb.ee:                                            ; preds = %bb.ed
  %i.qa = load ptr, ptr %3, align 8
  invoke fastcc void @_ZN6Assimp3FBX12_GLOBAL__N_113TokenizeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_(ptr noundef nonnull align 8 dereferenceable(32) %42, ptr noundef %2, ptr noundef %i.qa) #21
          to label %bb.ef unwind label %bb.eh

bb.ef:                                            ; preds = %bb.ee
  unreachable

bb.eg:                                            ; preds = %bb.ed
  %i.qb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242.a

bb.eh:                                            ; preds = %bb.ee
  %i.qc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qd = load ptr, ptr %42, align 8              ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  %i.qf = icmp eq ptr %i.qd, %i.qe
  br i1 %i.qf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240.a: ; preds = %bb.eh
  %i.qg = load i64, ptr %i.qe, align 8
  %i.qh = add i64 %i.qg, 1
  call void @_ZdlPvm(ptr noundef %i.qd, i64 noundef %i.qh) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242.a: ; preds = %bb.eh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240.a, %bb.eg
  %.pn147 = phi { ptr, i32 } [ %i.qb, %bb.eg ], [ %i.qc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240.a ], [ %i.qc, %bb.eh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #20
  br label %bb.ge

bb.ei:                                            ; preds = %._crit_edge
  %.neg = select i1 %5, i64 -25, i64 -13
  %i.qi = select i1 %5, i64 25, i64 13            ; 4 uses
  %i.qj = icmp ugt ptr %2, %i.gm
  %i.qk = sub i64 %i.go, %i.ai                    ; 2 uses
  %.0.i243 = select i1 %i.qj, i64 0, i64 %i.qk    ; 2 uses
  %i.ql = icmp ult i64 %.0.i243, %i.af
  br i1 %i.ql, label %bb.ej, label %bb.fx

bb.ej:                                            ; preds = %bb.ei
  %i.qm = sub nuw i64 %i.af, %.0.i243
  %i.qn = icmp ult i64 %i.qm, %i.qi
  br i1 %i.qn, label %bb.ek, label %bb.ep

bb.ek:                                            ; preds = %bb.ej
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %44, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %45)
          to label %bb.el unwind label %bb.en

bb.el:                                            ; preds = %bb.ek
  %i.qo = load ptr, ptr %3, align 8
  invoke fastcc void @_ZN6Assimp3FBX12_GLOBAL__N_113TokenizeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_(ptr noundef nonnull align 8 dereferenceable(32) %44, ptr noundef %2, ptr noundef %i.qo) #21
          to label %bb.em unwind label %bb.eo

bb.em:                                            ; preds = %bb.el
  unreachable

bb.en:                                            ; preds = %bb.ek
  %i.qp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247

bb.eo:                                            ; preds = %bb.el
  %i.qq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qr = load ptr, ptr %44, align 8              ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 2 uses
  %i.qt = icmp eq ptr %i.qr, %i.qs
  br i1 %i.qt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245: ; preds = %bb.eo
  %i.qu = load i64, ptr %i.qs, align 8
  %i.qv = add i64 %i.qu, 1
  call void @_ZdlPvm(ptr noundef %i.qr, i64 noundef %i.qv) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247: ; preds = %bb.eo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245, %bb.en
  %.pn144 = phi { ptr, i32 } [ %i.qp, %bb.en ], [ %i.qq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245 ], [ %i.qq, %bb.eo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #20
  br label %bb.ge

bb.ep:                                            ; preds = %bb.ej
  %i.qw = load i64, ptr %i.dg, align 8            ; 2 uses
  %i.qx = add i64 %i.qw, 40                       ; 2 uses
  %i.qy = load i64, ptr %1, align 8               ; 2 uses
  %i.qz = icmp ugt i64 %i.qx, %i.qy
  br i1 %i.qz, label %bb.eq, label %bb.ew

bb.eq:                                            ; preds = %bb.ep
  %i.ra = shl i64 %i.qy, 1
  %i.rb = tail call i64 @llvm.umax.i64(i64 %i.ra, i64 40)
  %.sroa.speculated.i250 = tail call i64 @llvm.umin.i64(i64 %i.rb, i64 67108864) ; 2 uses
  store i64 %.sroa.speculated.i250, ptr %1, align 8
  %i.rc = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %.sroa.speculated.i250) #25 ; 4 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.rf = load ptr, ptr %i.re, align 8            ; 3 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.rh = load ptr, ptr %i.rg, align 8
  %.not.i.i251 = icmp eq ptr %i.rf, %i.rh
  br i1 %.not.i.i251, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  store ptr %i.rc, ptr %i.rf, align 8
  %i.ri = load ptr, ptr %i.re, align 8
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 8
  store ptr %i.rj, ptr %i.re, align 8
  br label %_ZN6Assimp14StackAllocator8AllocateEm.exit258

bb.es:                                            ; preds = %bb.eq
  %i.rk = load ptr, ptr %i.rd, align 8            ; 4 uses
  %i.rl = ptrtoint ptr %i.rf to i64
  %i.rm = ptrtoint ptr %i.rk to i64
  %i.rn = sub i64 %i.rl, %i.rm                    ; 6 uses
  %i.ro = icmp eq i64 %i.rn, 9223372036854775800
  br i1 %i.ro, label %bb.et, label %_ZNKSt6vectorIPhSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i252

bb.et:                                            ; preds = %bb.es
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #21
  unreachable

_ZNKSt6vectorIPhSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i252: ; preds = %bb.es
  %i.rp = ashr exact i64 %i.rn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i253 = tail call i64 @llvm.umax.i64(i64 %i.rp, i64 1)
  %i.rq = add nsw i64 %.sroa.speculated.i.i.i.i253, %i.rp ; 2 uses
  %i.rr = icmp ult i64 %i.rq, %i.rp
  %i.rs = tail call i64 @llvm.umin.i64(i64 %i.rq, i64 1152921504606846975)
  %i.rt = select i1 %i.rr, i64 1152921504606846975, i64 %i.rs ; 3 uses
  %.not.i.i.i.i254 = icmp ne i64 %i.rt, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i254)
  %i.ru = shl nuw nsw i64 %i.rt, 3
  %i.rv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ru) #25 ; 4 uses
  %i.rw = getelementptr inbounds i8, ptr %i.rv, i64 %i.rn ; 2 uses
  store ptr %i.rc, ptr %i.rw, align 8
  %i.rx = icmp sgt i64 %i.rn, 0
  br i1 %i.rx, label %bb.eu, label %_ZNSt6vectorIPhSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i255

bb.eu:                                            ; preds = %_ZNKSt6vectorIPhSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i252
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.rv, ptr align 8 %i.rk, i64 %i.rn, i1 false)
  br label %_ZNSt6vectorIPhSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i255

_ZNSt6vectorIPhSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i255: ; preds = %bb.eu, %_ZNKSt6vectorIPhSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i252
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rw, i64 8
  %.not.i17.i.i.i256 = icmp eq ptr %i.rk, null
  br i1 %.not.i17.i.i.i256, label %_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i257, label %bb.ev

bb.ev:                                            ; preds = %_ZNSt6vectorIPhSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i255
  tail call void @_ZdlPvm(ptr noundef nonnull %i.rk, i64 noundef %i.rn) #22
  br label %_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i257

_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i257: ; preds = %bb.ev, %_ZNSt6vectorIPhSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i255
  store ptr %i.rv, ptr %i.rd, align 8
  store ptr %i.ry, ptr %i.re, align 8
  %i.rz = getelementptr inbounds nuw [8 x i8], ptr %i.rv, i64 %i.rt
  store ptr %i.rz, ptr %i.rg, align 8
  br label %_ZN6Assimp14StackAllocator8AllocateEm.exit258

bb.ew:                                            ; preds = %bb.ep
  %i.sa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.sb = load ptr, ptr %i.sa, align 8
  %i.sc = getelementptr inbounds i8, ptr %i.sb, i64 -8
  %i.sd = load ptr, ptr %i.sc, align 8
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 %i.qw
  br label %_ZN6Assimp14StackAllocator8AllocateEm.exit258

_ZN6Assimp14StackAllocator8AllocateEm.exit258:    ; preds = %bb.er, %_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i257, %bb.ew
  %storemerge.i248 = phi i64 [ %i.qx, %bb.ew ], [ 40, %_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i257 ], [ 40, %bb.er ]
  %.0.i249 = phi ptr [ %i.se, %bb.ew ], [ %i.rc, %_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i257 ], [ %i.rc, %bb.er ] ; 7 uses
  store i64 %storemerge.i248, ptr %i.dg, align 8
  %i.sf = load ptr, ptr %3, align 8               ; 4 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 1
  %i.sh = icmp ugt ptr %2, %i.sf
  %i.si = ptrtoint ptr %i.sf to i64
  %i.sj = sub i64 %i.si, %i.ai
  %.0.i259 = select i1 %i.sh, i64 0, i64 %i.sj
  store ptr %i.sf, ptr %.0.i249, align 8
  %i.sk = getelementptr inbounds nuw i8, ptr %.0.i249, i64 8
  store ptr %i.sg, ptr %i.sk, align 8
  %i.sl = getelementptr inbounds nuw i8, ptr %.0.i249, i64 16
  store i32 0, ptr %i.sl, align 8
  %i.sm = getelementptr inbounds nuw i8, ptr %.0.i249, i64 24
  store i64 %.0.i259, ptr %i.sm, align 8
  %i.sn = getelementptr inbounds nuw i8, ptr %.0.i249, i64 32
  store i32 -1, ptr %i.sn, align 8
  %i.so = load ptr, ptr %i.fa, align 8            ; 3 uses
  %i.sp = load ptr, ptr %i.fc, align 8
  %.not.i.i260 = icmp eq ptr %i.so, %i.sp
  br i1 %.not.i.i260, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %_ZN6Assimp14StackAllocator8AllocateEm.exit258
  store ptr %.0.i249, ptr %i.so, align 8
  %i.sq = load ptr, ptr %i.fa, align 8
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 8
  store ptr %i.sr, ptr %i.fa, align 8
  br label %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE9push_backEOS4_.exit267

bb.ey:                                            ; preds = %_ZN6Assimp14StackAllocator8AllocateEm.exit258
  %i.ss = load ptr, ptr %0, align 8               ; 4 uses
  %i.st = ptrtoint ptr %i.so to i64
  %i.su = ptrtoint ptr %i.ss to i64
  %i.sv = sub i64 %i.st, %i.su                    ; 6 uses
  %i.sw = icmp eq i64 %i.sv, 9223372036854775800
  br i1 %i.sw, label %bb.ez, label %_ZNKSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i261

bb.ez:                                            ; preds = %bb.ey
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #21
  unreachable

_ZNKSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i261: ; preds = %bb.ey
  %i.sx = ashr exact i64 %i.sv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i262 = tail call i64 @llvm.umax.i64(i64 %i.sx, i64 1)
  %i.sy = add nsw i64 %.sroa.speculated.i.i.i.i262, %i.sx ; 2 uses
  %i.sz = icmp ult i64 %i.sy, %i.sx
  %i.ta = tail call i64 @llvm.umin.i64(i64 %i.sy, i64 1152921504606846975)
  %i.tb = select i1 %i.sz, i64 1152921504606846975, i64 %i.ta ; 3 uses
  %.not.i.i.i.i263 = icmp ne i64 %i.tb, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i263)
  %i.tc = shl nuw nsw i64 %i.tb, 3
  %i.td = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tc) #25 ; 4 uses
  %i.te = getelementptr inbounds i8, ptr %i.td, i64 %i.sv ; 2 uses
  store ptr %.0.i249, ptr %i.te, align 8
  %i.tf = icmp sgt i64 %i.sv, 0
  br i1 %i.tf, label %bb.fa, label %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i264

bb.fa:                                            ; preds = %_ZNKSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i261
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.td, ptr align 8 %i.ss, i64 %i.sv, i1 false)
  br label %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i264

_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i264: ; preds = %bb.fa, %_ZNKSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i261
  %i.tg = getelementptr inbounds nuw i8, ptr %i.te, i64 8
  %.not.i17.i.i.i265 = icmp eq ptr %i.ss, null
  br i1 %.not.i17.i.i.i265, label %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i266, label %bb.fb

bb.fb:                                            ; preds = %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i264
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ss, i64 noundef %i.sv) #22
  br label %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i266

_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i266: ; preds = %bb.fb, %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i264
  store ptr %i.td, ptr %0, align 8
  store ptr %i.tg, ptr %i.fa, align 8
  %i.th = getelementptr inbounds nuw [8 x i8], ptr %i.td, i64 %i.tb
  store ptr %i.th, ptr %i.fc, align 8
  br label %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE9push_backEOS4_.exit267

_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE9push_backEOS4_.exit267: ; preds = %bb.ex, %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i266
  %i.ti = sub i64 %i.af, %i.qi                    ; 2 uses
  %i.tj = load ptr, ptr %3, align 8               ; 2 uses
  %i.tk = icmp ugt ptr %2, %i.tj
  %i.tl = ptrtoint ptr %i.tj to i64
  %i.tm = sub i64 %i.tl, %i.ai
  %.0.i268347 = select i1 %i.tk, i64 0, i64 %i.tm
  %i.tn = icmp ult i64 %.0.i268347, %i.ti
  br i1 %i.tn, label %.lr.ph348, label %._crit_edge349

.lr.ph348:                                        ; preds = %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE9push_backEOS4_.exit267
  %i.to = getelementptr inbounds nuw i8, ptr %2, i64 %i.af
  %i.tp = getelementptr inbounds i8, ptr %i.to, i64 %.neg
  br label %bb.fc

bb.fc:                                            ; preds = %.lr.ph348, %bb.fc
  %i.tq = tail call fastcc noundef zeroext i1 @_ZN6Assimp3FBX12_GLOBAL__N_19ReadScopeERSt6vectorIPKNS0_5TokenESaIS5_EERNS_14StackAllocatorEPKcRSC_SC_b(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.tp, i1 noundef zeroext %5) ; 0 uses
  %i.tr = load ptr, ptr %3, align 8               ; 2 uses
  %i.ts = icmp ugt ptr %2, %i.tr
  %i.tt = ptrtoint ptr %i.tr to i64
  %i.tu = sub i64 %i.tt, %i.ai
  %.0.i268 = select i1 %i.ts, i64 0, i64 %i.tu
  %i.tv = icmp ult i64 %.0.i268, %i.ti
  br i1 %i.tv, label %bb.fc, label %._crit_edge349, !llvm.loop !6

._crit_edge349:                                   ; preds = %bb.fc, %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE9push_backEOS4_.exit267
  %i.tw = load i64, ptr %i.dg, align 8            ; 2 uses
  %i.tx = add i64 %i.tw, 40                       ; 2 uses
  %i.ty = load i64, ptr %1, align 8               ; 2 uses
  %i.tz = icmp ugt i64 %i.tx, %i.ty
  br i1 %i.tz, label %bb.fd, label %bb.fj

bb.fd:                                            ; preds = %._crit_edge349
  %i.ua = shl i64 %i.ty, 1
  %i.ub = tail call i64 @llvm.umax.i64(i64 %i.ua, i64 40)
  %.sroa.speculated.i271 = tail call i64 @llvm.umin.i64(i64 %i.ub, i64 67108864) ; 2 uses
  store i64 %.sroa.speculated.i271, ptr %1, align 8
  %i.uc = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %.sroa.speculated.i271) #25 ; 4 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.uf = load ptr, ptr %i.ue, align 8            ; 3 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.uh = load ptr, ptr %i.ug, align 8
  %.not.i.i272 = icmp eq ptr %i.uf, %i.uh
  br i1 %.not.i.i272, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  store ptr %i.uc, ptr %i.uf, align 8
  %i.ui = load ptr, ptr %i.ue, align 8
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 8
  store ptr %i.uj, ptr %i.ue, align 8
  br label %_ZN6Assimp14StackAllocator8AllocateEm.exit279

bb.ff:                                            ; preds = %bb.fd
  %i.uk = load ptr, ptr %i.ud, align 8            ; 4 uses
  %i.ul = ptrtoint ptr %i.uf to i64
  %i.um = ptrtoint ptr %i.uk to i64
  %i.un = sub i64 %i.ul, %i.um                    ; 6 uses
  %i.uo = icmp eq i64 %i.un, 9223372036854775800
  br i1 %i.uo, label %bb.fg, label %_ZNKSt6vectorIPhSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i273

bb.fg:                                            ; preds = %bb.ff
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #21
  unreachable

_ZNKSt6vectorIPhSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i273: ; preds = %bb.ff
  %i.up = ashr exact i64 %i.un, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i274 = tail call i64 @llvm.umax.i64(i64 %i.up, i64 1)
  %i.uq = add nsw i64 %.sroa.speculated.i.i.i.i274, %i.up ; 2 uses
  %i.ur = icmp ult i64 %i.uq, %i.up
  %i.us = tail call i64 @llvm.umin.i64(i64 %i.uq, i64 1152921504606846975)
  %i.ut = select i1 %i.ur, i64 1152921504606846975, i64 %i.us ; 3 uses
  %.not.i.i.i.i275.a = icmp ne i64 %i.ut, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i275.a)
  %i.uu = shl nuw nsw i64 %i.ut, 3
  %i.uv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.uu) #25 ; 4 uses
  %i.uw = getelementptr inbounds i8, ptr %i.uv, i64 %i.un ; 2 uses
  store ptr %i.uc, ptr %i.uw, align 8
  %i.ux = icmp sgt i64 %i.un, 0
  br i1 %i.ux, label %bb.fh, label %_ZNSt6vectorIPhSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i276

bb.fh:                                            ; preds = %_ZNKSt6vectorIPhSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i273
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.uv, ptr align 8 %i.uk, i64 %i.un, i1 false)
  br label %_ZNSt6vectorIPhSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i276

_ZNSt6vectorIPhSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i276: ; preds = %bb.fh, %_ZNKSt6vectorIPhSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i273
  %i.uy = getelementptr inbounds nuw i8, ptr %i.uw, i64 8
  %.not.i17.i.i.i277.a = icmp eq ptr %i.uk, null
  br i1 %.not.i17.i.i.i277.a, label %_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i278, label %bb.fi

bb.fi:                                            ; preds = %_ZNSt6vectorIPhSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i276
  tail call void @_ZdlPvm(ptr noundef nonnull %i.uk, i64 noundef %i.un) #22
  br label %_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i278

_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i278: ; preds = %bb.fi, %_ZNSt6vectorIPhSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i276
  store ptr %i.uv, ptr %i.ud, align 8
  store ptr %i.uy, ptr %i.ue, align 8
  %i.uz = getelementptr inbounds nuw [8 x i8], ptr %i.uv, i64 %i.ut
  store ptr %i.uz, ptr %i.ug, align 8
  br label %_ZN6Assimp14StackAllocator8AllocateEm.exit279

bb.fj:                                            ; preds = %._crit_edge349
  %i.va = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.vb = load ptr, ptr %i.va, align 8
  %i.vc = getelementptr inbounds i8, ptr %i.vb, i64 -8
  %i.vd = load ptr, ptr %i.vc, align 8
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 %i.tw
  br label %_ZN6Assimp14StackAllocator8AllocateEm.exit279

_ZN6Assimp14StackAllocator8AllocateEm.exit279:    ; preds = %bb.fe, %_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i278, %bb.fj
  %storemerge.i269 = phi i64 [ %i.tx, %bb.fj ], [ 40, %_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i278 ], [ 40, %bb.fe ]
  %.0.i270 = phi ptr [ %i.ve, %bb.fj ], [ %i.uc, %_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i278 ], [ %i.uc, %bb.fe ] ; 7 uses
  store i64 %storemerge.i269, ptr %i.dg, align 8
  %i.vf = load ptr, ptr %3, align 8               ; 4 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 1
  %i.vh = icmp ugt ptr %2, %i.vf
  %i.vi = ptrtoint ptr %i.vf to i64
  %i.vj = sub i64 %i.vi, %i.ai
  %.0.i280 = select i1 %i.vh, i64 0, i64 %i.vj
  store ptr %i.vf, ptr %.0.i270, align 8
  %i.vk = getelementptr inbounds nuw i8, ptr %.0.i270, i64 8
  store ptr %i.vg, ptr %i.vk, align 8
  %i.vl = getelementptr inbounds nuw i8, ptr %.0.i270, i64 16
  store i32 1, ptr %i.vl, align 8
  %i.vm = getelementptr inbounds nuw i8, ptr %.0.i270, i64 24
  store i64 %.0.i280, ptr %i.vm, align 8
  %i.vn = getelementptr inbounds nuw i8, ptr %.0.i270, i64 32
  store i32 -1, ptr %i.vn, align 8
  %i.vo = load ptr, ptr %i.fa, align 8            ; 3 uses
  %i.vp = load ptr, ptr %i.fc, align 8
  %.not.i.i281 = icmp eq ptr %i.vo, %i.vp
  br i1 %.not.i.i281, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %_ZN6Assimp14StackAllocator8AllocateEm.exit279
  store ptr %.0.i270, ptr %i.vo, align 8
  %i.vq = load ptr, ptr %i.fa, align 8
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 8
  store ptr %i.vr, ptr %i.fa, align 8
  br label %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE9push_backEOS4_.exit288

bb.fl:                                            ; preds = %_ZN6Assimp14StackAllocator8AllocateEm.exit279
  %i.vs = load ptr, ptr %0, align 8               ; 4 uses
  %i.vt = ptrtoint ptr %i.vo to i64
  %i.vu = ptrtoint ptr %i.vs to i64
  %i.vv = sub i64 %i.vt, %i.vu                    ; 6 uses
  %i.vw = icmp eq i64 %i.vv, 9223372036854775800
  br i1 %i.vw, label %bb.fm, label %_ZNKSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i282

bb.fm:                                            ; preds = %bb.fl
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #21
  unreachable

_ZNKSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i282: ; preds = %bb.fl
  %i.vx = ashr exact i64 %i.vv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i283 = tail call i64 @llvm.umax.i64(i64 %i.vx, i64 1)
  %i.vy = add nsw i64 %.sroa.speculated.i.i.i.i283, %i.vx ; 2 uses
  %i.vz = icmp ult i64 %i.vy, %i.vx
  %i.wa = tail call i64 @llvm.umin.i64(i64 %i.vy, i64 1152921504606846975)
  %i.wb = select i1 %i.vz, i64 1152921504606846975, i64 %i.wa ; 3 uses
  %.not.i.i.i.i284 = icmp ne i64 %i.wb, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i284)
  %i.wc = shl nuw nsw i64 %i.wb, 3
  %i.wd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.wc) #25 ; 4 uses
  %i.we = getelementptr inbounds i8, ptr %i.wd, i64 %i.vv ; 2 uses
  store ptr %.0.i270, ptr %i.we, align 8
  %i.wf = icmp sgt i64 %i.vv, 0
  br i1 %i.wf, label %bb.fn, label %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i285

bb.fn:                                            ; preds = %_ZNKSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i282
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.wd, ptr align 8 %i.vs, i64 %i.vv, i1 false)
  br label %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i285

_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i285: ; preds = %bb.fn, %_ZNKSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i282
  %i.wg = getelementptr inbounds nuw i8, ptr %i.we, i64 8
  %.not.i17.i.i.i286 = icmp eq ptr %i.vs, null
  br i1 %.not.i17.i.i.i286, label %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i287, label %bb.fo

bb.fo:                                            ; preds = %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i285
  tail call void @_ZdlPvm(ptr noundef nonnull %i.vs, i64 noundef %i.vv) #22
  br label %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i287

_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i287: ; preds = %bb.fo, %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i285
  store ptr %i.wd, ptr %0, align 8
  store ptr %i.wg, ptr %i.fa, align 8
  %i.wh = getelementptr inbounds nuw [8 x i8], ptr %i.wd, i64 %i.wb
  store ptr %i.wh, ptr %i.fc, align 8
  br label %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE9push_backEOS4_.exit288

_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE9push_backEOS4_.exit288: ; preds = %bb.fk, %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i287
  %i.wi = load ptr, ptr %3, align 8               ; 2 uses
  br label %bb.fr

bb.fp:                                            ; preds = %bb.fr
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.qi
  br i1 %exitcond.not, label %bb.fq, label %bb.fr, !llvm.loop !7

bb.fq:                                            ; preds = %bb.fp
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 %i.qi ; 3 uses
  store ptr %i.wj, ptr %3, align 8
  %.pre412 = ptrtoint ptr %i.wj to i64
  %.pre413 = sub i64 %.pre412, %i.ai
  br label %bb.fx

bb.fr:                                            ; preds = %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE9push_backEOS4_.exit288, %bb.fp
  %indvars.iv = phi i64 [ 0, %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE9push_backEOS4_.exit288 ], [ %indvars.iv.next, %bb.fp ] ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wi, i64 %indvars.iv
  %i.wl = load i8, ptr %i.wk, align 1
  %.not141 = icmp eq i8 %i.wl, 0
  br i1 %.not141, label %bb.fp, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %46, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %47)
          to label %bb.ft unwind label %bb.fv

bb.ft:                                            ; preds = %bb.fs
  %i.wm = load ptr, ptr %3, align 8
  invoke fastcc void @_ZN6Assimp3FBX12_GLOBAL__N_113TokenizeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_(ptr noundef nonnull align 8 dereferenceable(32) %46, ptr noundef %2, ptr noundef %i.wm) #21
          to label %bb.fu unwind label %bb.fw

bb.fu:                                            ; preds = %bb.ft
  unreachable

bb.fv:                                            ; preds = %bb.fs
  %i.wn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291

bb.fw:                                            ; preds = %bb.ft
  %i.wo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wp = load ptr, ptr %46, align 8              ; 2 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 2 uses
  %i.wr = icmp eq ptr %i.wp, %i.wq
  br i1 %i.wr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289: ; preds = %bb.fw
  %i.ws = load i64, ptr %i.wq, align 8
  %i.wt = add i64 %i.ws, 1
  call void @_ZdlPvm(ptr noundef %i.wp, i64 noundef %i.wt) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291: ; preds = %bb.fw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289, %bb.fv
  %.pn142 = phi { ptr, i32 } [ %i.wn, %bb.fv ], [ %i.wo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289 ], [ %i.wo, %bb.fw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #20
  br label %bb.ge

bb.fx:                                            ; preds = %bb.fq, %bb.ei
  %.pre-phi414 = phi i64 [ %.pre413, %bb.fq ], [ %i.qk, %bb.ei ]
  %i.wu = phi ptr [ %i.wj, %bb.fq ], [ %i.gm, %bb.ei ]
  %i.wv = icmp ugt ptr %2, %i.wu
  %.0.i292 = select i1 %i.wv, i64 0, i64 %.pre-phi414
  %.not139 = icmp eq i64 %.0.i292, %i.af
  br i1 %.not139, label %bb.gd, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %48, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %49)
          to label %bb.fz unwind label %bb.gb

bb.fz:                                            ; preds = %bb.fy
  %i.ww = load ptr, ptr %3, align 8
  invoke fastcc void @_ZN6Assimp3FBX12_GLOBAL__N_113TokenizeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_(ptr noundef nonnull align 8 dereferenceable(32) %48, ptr noundef %2, ptr noundef %i.ww) #21
          to label %bb.ga unwind label %bb.gc

bb.ga:                                            ; preds = %bb.fz
  unreachable

bb.gb:                                            ; preds = %bb.fy
  %i.wx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295

bb.gc:                                            ; preds = %bb.fz
  %i.wy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wz = load ptr, ptr %48, align 8              ; 2 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 2 uses
  %i.xb = icmp eq ptr %i.wz, %i.xa
  br i1 %i.xb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i293

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i293: ; preds = %bb.gc
  %i.xc = load i64, ptr %i.xa, align 8
  %i.xd = add i64 %i.xc, 1
  call void @_ZdlPvm(ptr noundef %i.wz, i64 noundef %i.xd) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295: ; preds = %bb.gc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i293, %bb.gb
  %.pn = phi { ptr, i32 } [ %i.wx, %bb.gb ], [ %i.wy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i293 ], [ %i.wy, %bb.gc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #20
  br label %bb.ge

bb.gd:                                            ; preds = %bb.fx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.gf

bb.ge:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194
  %.pn150.pn = phi { ptr, i32 } [ %.pn150, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194 ], [ %.pn147, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242.a ], [ %.pn144, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247 ], [ %.pn142, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %common.resume

bb.gf:                                            ; preds = %bb.j, %bb.gd
  ret i1 %.not
}

end_hunk_1
begin_hunk_2_@_ZN6Assimp6Logger13formatMessageIJERKjEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_:bb.a
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds i8, ptr %4, i64 %i.z
  store ptr %i.x, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit
  %i.ag = load i64, ptr %i.ae, align 8
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #22
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ab, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ai) #20
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.aj) #20
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #20
  resume { ptr, i32 } %i.q
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA23_KcPS7_RA2_S7_ERA93_S7_EEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(93) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(23) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(2) %6) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(93) %2) #20
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(93) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %7, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJRA23_KcPS1_RA2_S1_ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcSA_SB_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %7, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(23) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(2) %6)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %7, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %7, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #22
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #20
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #20
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %7) #20
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJRA23_KcPS1_RA2_S1_ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcSA_SB_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(23) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(2) %5) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef %i.a, i64 noundef %i.c) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %6, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJPKcRA2_S1_ERA23_S1_EEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %6, ptr noundef nonnull align 1 dereferenceable(23) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(2) %5)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.e, ptr %6, align 8
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.g = getelementptr i8, ptr %i.e, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %6, i64 %i.h
  store ptr %i.f, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.o = load i64, ptr %i.m, align 8
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #22
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.j, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #20
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.r) #20
  ret void

bb.c:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %6) #20
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJPKcRA2_S1_ERA23_S1_EEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(23) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(2) %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(23) %2) #20
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(23) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJRA2_KcEPS1_EEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(2) %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %5, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %5, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #22
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #20
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #20
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %5) #20
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJRA2_KcEPS1_EEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(2) %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = or i32 %i.g, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef %i.h)
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #20
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull %i.a, i64 noundef %i.i) ; 0 uses
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJERA2_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(2) %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.k = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.k, ptr %4, align 8
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.m = getelementptr i8, ptr %i.k, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %4, i64 %i.n
  store ptr %i.l, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.u = load i64, ptr %i.s, align 8
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #22
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.p, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.w) #20
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.x) #20
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #20
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJERA2_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(2) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(2) %2) #20
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(2) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %3, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %3, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #22
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #20
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #20
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #20
  resume { ptr, i32 } %i.q
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind memory(none) }
attributes #7 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noreturn }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nounwind }
attributes #21 = { noreturn }
attributes #22 = { builtin nounwind }
attributes #23 = { nounwind willreturn memory(read) }
attributes #24 = { noreturn nounwind }
attributes #25 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{!5, !4}
!6 = distinct !{!6, !4}
!7 = distinct !{!7, !4}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!10 = distinct !{!10, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!11 = !{!12}
!12 = distinct !{!12, !13, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!13 = distinct !{!13, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!14 = !{!12, !9}
!15 = !{!16}
!16 = distinct !{!16, !17, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!17 = distinct !{!17, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!18 = !{!19}
!19 = distinct !{!19, !20, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!20 = distinct !{!20, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!21 = !{!22}
!22 = distinct !{!22, !23, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!23 = distinct !{!23, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!24 = !{!22, !19, !16}
!25 = distinct !{!25, !4}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!28 = distinct !{!28, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!29 = !{!30}
!30 = distinct !{!30, !31, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!31 = distinct !{!31, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!32 = !{!33}
!33 = distinct !{!33, !34, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!34 = distinct !{!34, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!37 = distinct !{!37, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!38 = !{!36, !33, !30, !27}
end_hunk_2
