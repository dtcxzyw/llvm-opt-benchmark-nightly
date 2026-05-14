inline.NumInlined: 2396
inline.NumDeleted: 1188
begin_hunk_0_@_ZN12_GLOBAL__N_115dumpInstructionEPKN6hermes5regex11BracketInsnERN4llvh11raw_ostreamE:bb.a
  %i.cb = load ptr, ptr %i.e, align 8, !tbaa !25
  %i.cc = load ptr, ptr %i.g, align 8, !tbaa !28  ; 2 uses
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = icmp ult i64 %i.cf, 2
  br i1 %i.cg, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ch = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.52, i64 noundef 2) #19 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit52

bb.w:                                             ; preds = %bb.u
  store i16 21340, ptr %i.cc, align 1
  %i.ci = load ptr, ptr %i.g, align 8, !tbaa !28
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 2
  store ptr %i.cj, ptr %i.g, align 8, !tbaa !28
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit52

_ZN4llvh11raw_ostreamlsEPKc.exit52:               ; preds = %bb.w, %bb.v, %_ZN4llvh11raw_ostreamlsEPKc.exit49
  %i.ck = load i8, ptr %i.aa, align 1
  %i.cl = and i8 %i.ck, 64
  %.not33 = icmp eq i8 %i.cl, 0
  br i1 %.not33, label %_ZN4llvh11raw_ostreamlsEPKc.exit55, label %bb.x

bb.x:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit52
  %i.cm = load ptr, ptr %i.e, align 8, !tbaa !25
  %i.cn = load ptr, ptr %i.g, align 8, !tbaa !28  ; 2 uses
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = icmp ult i64 %i.cq, 2
  br i1 %i.cr, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cs = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.53, i64 noundef 2) #19 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit55

bb.z:                                             ; preds = %bb.x
  store i16 22364, ptr %i.cn, align 1
  %i.ct = load ptr, ptr %i.g, align 8, !tbaa !28
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 2
  store ptr %i.cu, ptr %i.g, align 8, !tbaa !28
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit55

_ZN4llvh11raw_ostreamlsEPKc.exit55:               ; preds = %bb.z, %bb.y, %_ZN4llvh11raw_ostreamlsEPKc.exit52
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 1, !tbaa !114
  %.not68 = icmp eq i32 %i.cw, 0
  br i1 %.not68, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit55
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 21
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 22
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 21
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 22
  br label %bb.ac

._crit_edge:                                      ; preds = %"_ZZN12_GLOBAL__N_115dumpInstructionEPKN6hermes5regex11BracketInsnERN4llvh11raw_ostreamEENK3$_0clEj.exit65", %_ZN4llvh11raw_ostreamlsEPKc.exit55
  %i.di = load ptr, ptr %i.g, align 8, !tbaa !28  ; 3 uses
  %i.dj = load ptr, ptr %i.e, align 8, !tbaa !25
  %.not.i56 = icmp ult ptr %i.di, %i.dj
  br i1 %.not.i56, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge
  %i.dk = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %1, i8 noundef zeroext 93) #19 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEc.exit58

bb.ab:                                            ; preds = %._crit_edge
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 1
  store ptr %i.dl, ptr %i.g, align 8, !tbaa !28
  store i8 93, ptr %i.di, align 1, !tbaa !19
  br label %_ZN4llvh11raw_ostreamlsEc.exit58

_ZN4llvh11raw_ostreamlsEc.exit58:                 ; preds = %bb.aa, %bb.ab
  ret void

bb.ac:                                            ; preds = %.lr.ph, %"_ZZN12_GLOBAL__N_115dumpInstructionEPKN6hermes5regex11BracketInsnERN4llvh11raw_ostreamEENK3$_0clEj.exit65"
  %.067 = phi i32 [ 0, %.lr.ph ], [ %i.ep, %"_ZZN12_GLOBAL__N_115dumpInstructionEPKN6hermes5regex11BracketInsnERN4llvh11raw_ostreamEENK3$_0clEj.exit65" ]
  %.02766 = phi ptr [ %i.cx, %.lr.ph ], [ %i.eo, %"_ZZN12_GLOBAL__N_115dumpInstructionEPKN6hermes5regex11BracketInsnERN4llvh11raw_ostreamEENK3$_0clEj.exit65" ] ; 4 uses
  %i.dm = load i32, ptr %.02766, align 1, !tbaa !174 ; 4 uses
  %i.dn = icmp ult i32 %i.dm, 128
  br i1 %i.dn, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  %i.do = call i32 @isprint(i32 noundef %i.dm) #20
  %.not.i59 = icmp eq i32 %i.do, 0
  br i1 %.not.i59, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dp = trunc nuw nsw i32 %i.dm to i8           ; 2 uses
  %i.dq = load ptr, ptr %i.g, align 8, !tbaa !28  ; 3 uses
  %i.dr = load ptr, ptr %i.e, align 8, !tbaa !25
  %.not.i.i = icmp ult ptr %i.dq, %i.dr
  br i1 %.not.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ds = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %1, i8 noundef zeroext %i.dp) #19 ; 0 uses
  br label %"_ZZN12_GLOBAL__N_115dumpInstructionEPKN6hermes5regex11BracketInsnERN4llvh11raw_ostreamEENK3$_0clEj.exit"

bb.ag:                                            ; preds = %bb.ae
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  store ptr %i.dt, ptr %i.g, align 8, !tbaa !28
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !19
  br label %"_ZZN12_GLOBAL__N_115dumpInstructionEPKN6hermes5regex11BracketInsnERN4llvh11raw_ostreamEENK3$_0clEj.exit"

bb.ah:                                            ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.du = zext i32 %i.dm to i64
  store i64 %i.du, ptr %3, align 8, !tbaa !29, !alias.scope !176
  store i64 0, ptr %i.cy, align 8, !tbaa !36, !alias.scope !176
  store i32 4, ptr %i.cz, align 8, !tbaa !37, !alias.scope !176
  store i8 1, ptr %i.da, align 4, !tbaa !38, !alias.scope !176
  store i8 0, ptr %i.db, align 1, !tbaa !39, !alias.scope !176
  store i8 1, ptr %i.dc, align 2, !tbaa !40, !alias.scope !176
  %i.dv = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_15FormattedNumberE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(23) %3) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %"_ZZN12_GLOBAL__N_115dumpInstructionEPKN6hermes5regex11BracketInsnERN4llvh11raw_ostreamEENK3$_0clEj.exit"

"_ZZN12_GLOBAL__N_115dumpInstructionEPKN6hermes5regex11BracketInsnERN4llvh11raw_ostreamEENK3$_0clEj.exit": ; preds = %bb.af, %bb.ag, %bb.ah
  %i.dw = getelementptr inbounds nuw i8, ptr %.02766, i64 4 ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 1, !tbaa !179
  %i.dy = load i32, ptr %.02766, align 1, !tbaa !174
  %i.dz = icmp ugt i32 %i.dx, %i.dy
  br i1 %i.dz, label %bb.ai, label %"_ZZN12_GLOBAL__N_115dumpInstructionEPKN6hermes5regex11BracketInsnERN4llvh11raw_ostreamEENK3$_0clEj.exit65"

bb.ai:                                            ; preds = %"_ZZN12_GLOBAL__N_115dumpInstructionEPKN6hermes5regex11BracketInsnERN4llvh11raw_ostreamEENK3$_0clEj.exit"
  %i.ea = load ptr, ptr %i.g, align 8, !tbaa !28  ; 3 uses
  %i.eb = load ptr, ptr %i.e, align 8, !tbaa !25
  %.not.i60 = icmp ult ptr %i.ea, %i.eb
  br i1 %.not.i60, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ec = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %1, i8 noundef zeroext 45) #19 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEc.exit62

bb.ak:                                            ; preds = %bb.ai
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 1
  store ptr %i.ed, ptr %i.g, align 8, !tbaa !28
  store i8 45, ptr %i.ea, align 1, !tbaa !19
  br label %_ZN4llvh11raw_ostreamlsEc.exit62

_ZN4llvh11raw_ostreamlsEc.exit62:                 ; preds = %bb.aj, %bb.ak
  %i.ee = load i32, ptr %i.dw, align 1, !tbaa !179 ; 4 uses
  %i.ef = icmp ult i32 %i.ee, 128
  br i1 %i.ef, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %_ZN4llvh11raw_ostreamlsEc.exit62
  %i.eg = call i32 @isprint(i32 noundef %i.ee) #20
  %.not.i63 = icmp eq i32 %i.eg, 0
  br i1 %.not.i63, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eh = trunc nuw nsw i32 %i.ee to i8           ; 2 uses
  %i.ei = load ptr, ptr %i.g, align 8, !tbaa !28  ; 3 uses
  %i.ej = load ptr, ptr %i.e, align 8, !tbaa !25
  %.not.i.i64 = icmp ult ptr %i.ei, %i.ej
  br i1 %.not.i.i64, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ek = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %1, i8 noundef zeroext %i.eh) #19 ; 0 uses
  br label %"_ZZN12_GLOBAL__N_115dumpInstructionEPKN6hermes5regex11BracketInsnERN4llvh11raw_ostreamEENK3$_0clEj.exit65"

bb.ao:                                            ; preds = %bb.am
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 1
  store ptr %i.el, ptr %i.g, align 8, !tbaa !28
  store i8 %i.eh, ptr %i.ei, align 1, !tbaa !19
  br label %"_ZZN12_GLOBAL__N_115dumpInstructionEPKN6hermes5regex11BracketInsnERN4llvh11raw_ostreamEENK3$_0clEj.exit65"

bb.ap:                                            ; preds = %bb.al, %_ZN4llvh11raw_ostreamlsEc.exit62
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.em = zext i32 %i.ee to i64
  store i64 %i.em, ptr %2, align 8, !tbaa !29, !alias.scope !180
  store i64 0, ptr %i.dd, align 8, !tbaa !36, !alias.scope !180
  store i32 4, ptr %i.de, align 8, !tbaa !37, !alias.scope !180
  store i8 1, ptr %i.df, align 4, !tbaa !38, !alias.scope !180
  store i8 0, ptr %i.dg, align 1, !tbaa !39, !alias.scope !180
  store i8 1, ptr %i.dh, align 2, !tbaa !40, !alias.scope !180
  %i.en = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_15FormattedNumberE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(23) %2) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %"_ZZN12_GLOBAL__N_115dumpInstructionEPKN6hermes5regex11BracketInsnERN4llvh11raw_ostreamEENK3$_0clEj.exit65"

"_ZZN12_GLOBAL__N_115dumpInstructionEPKN6hermes5regex11BracketInsnERN4llvh11raw_ostreamEENK3$_0clEj.exit65": ; preds = %bb.ap, %bb.ao, %bb.an, %"_ZZN12_GLOBAL__N_115dumpInstructionEPKN6hermes5regex11BracketInsnERN4llvh11raw_ostreamEENK3$_0clEj.exit"
  %i.eo = getelementptr inbounds nuw i8, ptr %.02766, i64 8
  %i.ep = add nuw i32 %.067, 1                    ; 2 uses
  %i.eq = load i32, ptr %i.cv, align 1, !tbaa !114
  %i.er = icmp ult i32 %i.ep, %i.eq
  br i1 %i.er, label %bb.ac, label %._crit_edge, !llvm.loop !183
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes14CompiledRegExpC2EOS0_(ptr noundef nonnull align 8 dereferenceable(192) initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(192) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load <2 x ptr>, ptr %1, align 8, !tbaa !184
  store <2 x ptr> %i.a, ptr %0, align 8, !tbaa !184
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !185
  store ptr %i.d, ptr %i.b, align 8, !tbaa !185
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !187
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !189  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load i64, ptr %i.k, align 8, !tbaa !191  ; 2 uses
  %i.m = icmp ult i64 %i.l, 16
  tail call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.h, ptr %i.e, align 8, !tbaa !189
  %i.o = load i64, ptr %i.i, align 8, !tbaa !19
  store i64 %i.o, ptr %i.g, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !191
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.q, ptr %i.r, align 8, !tbaa !191
  store ptr %i.i, ptr %i.f, align 8, !tbaa !189
  store i64 0, ptr %i.p, align 8, !tbaa !191
  store i8 0, ptr %i.i, align 8, !tbaa !19
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !187
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !189  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 5 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.z = load i64, ptr %i.y, align 8, !tbaa !191  ; 2 uses
  %i.aa = icmp ult i64 %i.z, 16
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = add nuw nsw i64 %i.z, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.u, ptr noundef nonnull align 8 dereferenceable(1) %i.w, i64 %i.ab, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store ptr %i.v, ptr %i.s, align 8, !tbaa !189
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !19
  store i64 %i.ac, ptr %i.u, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !191
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !191
  store ptr %i.w, ptr %i.t, align 8, !tbaa !189
  store i64 0, ptr %i.ad, align 8, !tbaa !191
  store i8 0, ptr %i.w, align 8, !tbaa !19
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 8, ptr %i.ai, align 8, !tbaa !192
  %i.aj = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #21 ; 2 uses
  store ptr %i.aj, ptr %i.ag, align 8, !tbaa !198
  %.06.i.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 5 uses
  %i.ak = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #21 ; 10 uses
  store ptr %i.ak, ptr %.06.i.i.ptr.i.i, align 8, !tbaa !199
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %.06.i.i.ptr.i.i, ptr %i.am, align 8, !tbaa !200
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.ak, ptr %i.an, align 8, !tbaa !201
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 512 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !202
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %.06.i.i.ptr.i.i, ptr %i.ar, align 8, !tbaa !200
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.ak, ptr %i.as, align 8, !tbaa !201
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.ao, ptr %i.at, align 8, !tbaa !202
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !203
  store ptr %i.ak, ptr %i.aq, align 8, !tbaa !204
  %i.au = load ptr, ptr %i.ah, align 8, !tbaa !198
  %.not.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i, label %_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EEC2EOS4_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7
  %.sroa.0.i.i.i.i.sroa.0.0.copyload = load <16 x i8>, ptr %i.ag, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ag, i8 0, i64 80, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ag, ptr noundef nonnull align 8 dereferenceable(80) %i.ah, i64 80, i1 false), !tbaa.struct !205
  store <16 x i8> %.sroa.0.i.i.i.i.sroa.0.0.copyload, ptr %i.ah, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %i.ak, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !199
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr %i.ak, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !tbaa !199
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 120
  store ptr %i.ao, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !tbaa !199
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  store ptr %.06.i.i.ptr.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !tbaa !206
  %.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 136
  store ptr %i.ak, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 8, !tbaa !199
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 144
  store ptr %i.ak, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 8, !tbaa !199
  %.sroa.10.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 152
  store ptr %i.ao, ptr %.sroa.10.0..sroa_idx.i.i.i.i, align 8, !tbaa !199
  %.sroa.11.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 160
  store ptr %.06.i.i.ptr.i.i, ptr %.sroa.11.0..sroa_idx.i.i.i.i, align 8, !tbaa !206
  br label %_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EEC2EOS4_.exit

_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EEC2EOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7, %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.av, i8 0, i64 20, i1 false)
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !208
  store ptr %i.ax, ptr %i.av, align 8, !tbaa !208
  store ptr null, ptr %i.aw, align 8, !tbaa !208
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !3
  store i32 %i.ba, ptr %i.ay, align 8, !tbaa !3
  store i32 0, ptr %i.az, align 8, !tbaa !3
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 180 ; 2 uses
  %i.bd = load i32, ptr %i.bb, align 4, !tbaa !3
  %i.be = load i32, ptr %i.bc, align 4, !tbaa !3
  store i32 %i.be, ptr %i.bb, align 4, !tbaa !3
  store i32 %i.bd, ptr %i.bc, align 4, !tbaa !3
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.bh = load i32, ptr %i.bf, align 8, !tbaa !3
  %i.bi = load i32, ptr %i.bg, align 8, !tbaa !3
  store i32 %i.bi, ptr %i.bf, align 8, !tbaa !3
  store i32 %i.bh, ptr %i.bg, align 8, !tbaa !3
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(192) ptr @_ZN6hermes14CompiledRegExpaSEOS0_(ptr noundef nonnull returned align 8 dereferenceable(192) initializes((8, 16)) %0, ptr noundef nonnull align 8 dereferenceable(192) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !210    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !185
  %i.d = load <2 x ptr>, ptr %1, align 8, !tbaa !184
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !184
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !185
  store ptr %i.f, ptr %i.b, align 8, !tbaa !185
  %.not.i.i.i.i.i = icmp eq ptr %i.a, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEEaSEOS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.i) #22
  br label %_ZNSt6vectorIhSaIhEEaSEOS1_.exit

_ZNSt6vectorIhSaIhEEaSEOS1_.exit:                 ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !189  ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.n = icmp eq ptr %i.l, %i.m
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !189  ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %i.q = icmp eq ptr %i.o, %i.p                   ; 2 uses
  br i1 %i.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt6vectorIhSaIhEEaSEOS1_.exit
  br i1 %i.q, label %bb.c, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt6vectorIhSaIhEEaSEOS1_.exit
  br i1 %i.q, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !191  ; 3 uses
  %i.t = icmp ult i64 %i.s, 16
  tail call void @llvm.assume(i1 %i.t)
  %.not21.i = icmp eq ptr %1, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.d, !prof !211

bb.d:                                             ; preds = %bb.c
  switch i64 %i.s, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.u = load i8, ptr %i.o, align 1, !tbaa !19
  store i8 %i.u, ptr %i.l, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.o, i64 %i.s, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.v = load i64, ptr %i.r, align 8, !tbaa !191  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.v, ptr %i.w, align 8, !tbaa !191
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !189
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !19
  %.pre.i = load ptr, ptr %i.k, align 8, !tbaa !189
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.o, ptr %i.j, align 8, !tbaa !189
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !191
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !191
  %i.ac = load i64, ptr %i.p, align 8, !tbaa !19
  store i64 %i.ac, ptr %i.m, align 8, !tbaa !19
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ad = load i64, ptr %i.m, align 8, !tbaa !19
  store ptr %i.o, ptr %i.j, align 8, !tbaa !189
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !191
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !191
  %i.ah = load i64, ptr %i.p, align 8, !tbaa !19
  store i64 %i.ah, ptr %i.m, align 8, !tbaa !19
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.l, ptr %i.k, align 8, !tbaa !189
  store i64 %i.ad, ptr %i.p, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.p, ptr %i.k, align 8, !tbaa !189
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.g, %bb.h
  %i.ai = phi ptr [ %i.l, %bb.g ], [ %i.p, %bb.h ], [ %i.o, %bb.c ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 0, ptr %i.aj, align 8, !tbaa !191
  store i8 0, ptr %i.ai, align 1, !tbaa !19
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !189 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  %i.ap = load ptr, ptr %i.al, align 8, !tbaa !189 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 6 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq                ; 2 uses
  br i1 %i.ao, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  br i1 %i.ar, label %bb.i, label %.thread.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  br i1 %i.ar, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i7

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !191 ; 3 uses
  %i.au = icmp ult i64 %i.at, 16
  tail call void @llvm.assume(i1 %i.au)
  %.not21.i9 = icmp eq ptr %1, %0
  br i1 %.not21.i9, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit14, label %bb.j, !prof !211

bb.j:                                             ; preds = %bb.i
  switch i64 %i.at, label %bb.l [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10
    i64 1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.av = load i8, ptr %i.ap, align 1, !tbaa !19
  store i8 %i.av, ptr %i.am, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.am, ptr align 1 %i.ap, i64 %i.at, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10: ; preds = %bb.l, %bb.k, %bb.j
  %i.aw = load i64, ptr %i.as, align 8, !tbaa !191 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !191
  %i.ay = load ptr, ptr %i.ak, align 8, !tbaa !189
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aw
  store i8 0, ptr %i.az, align 1, !tbaa !19
  %.pre.i11 = load ptr, ptr %i.al, align 8, !tbaa !189
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit14

.thread.i13:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ap, ptr %i.ak, align 8, !tbaa !189
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !191
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !191
  %i.bd = load i64, ptr %i.aq, align 8, !tbaa !19
  store i64 %i.bd, ptr %i.an, align 8, !tbaa !19
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i7: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i6
  %i.be = load i64, ptr %i.an, align 8, !tbaa !19
  store ptr %i.ap, ptr %i.ak, align 8, !tbaa !189
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !191
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !191
  %i.bi = load i64, ptr %i.aq, align 8, !tbaa !19
  store i64 %i.bi, ptr %i.an, align 8, !tbaa !19
  %.not.i8 = icmp eq ptr %i.am, null
  br i1 %.not.i8, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i7
  store ptr %i.am, ptr %i.al, align 8, !tbaa !189
  store i64 %i.be, ptr %i.aq, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit14

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i7, %.thread.i13
  store ptr %i.aq, ptr %i.al, align 8, !tbaa !189
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit14: ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10, %bb.m, %bb.n
  %i.bj = phi ptr [ %i.am, %bb.m ], [ %i.aq, %bb.n ], [ %i.ap, %bb.i ], [ %.pre.i11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i10 ]
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 0, ptr %i.bk, align 8, !tbaa !191
  store i8 0, ptr %i.bj, align 1, !tbaa !19
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 88
  tail call void @_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EE15_M_move_assign1EOS4_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(80) %i.bl, ptr noundef nonnull align 8 dereferenceable(80) %i.bm) #19
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !212
  tail call void @_ZdlPv(ptr noundef %i.bp) #19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bn, i8 0, i64 20, i1 false)
  %i.bq = load ptr, ptr %i.bo, align 8, !tbaa !208
  store ptr %i.bq, ptr %i.bn, align 8, !tbaa !208
  store ptr null, ptr %i.bo, align 8, !tbaa !208
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !3
  store i32 %i.bt, ptr %i.br, align 8, !tbaa !3
  store i32 0, ptr %i.bs, align 8, !tbaa !3
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 180 ; 2 uses
  %i.bw = load i32, ptr %i.bu, align 4, !tbaa !3
  %i.bx = load i32, ptr %i.bv, align 4, !tbaa !3
  store i32 %i.bx, ptr %i.bu, align 4, !tbaa !3
  store i32 %i.bw, ptr %i.bv, align 4, !tbaa !3
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.ca = load i32, ptr %i.by, align 8, !tbaa !3
  %i.cb = load i32, ptr %i.bz, align 8, !tbaa !3
  store i32 %i.cb, ptr %i.by, align 8, !tbaa !3
  store i32 %i.ca, ptr %i.bz, align 8, !tbaa !3
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes14CompiledRegExpD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"struct.std::_Deque_iterator", align 16 ; 5 uses
  %2 = alloca %"struct.std::_Deque_iterator", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !212
  tail call void @_ZdlPv(ptr noundef %i.b) #19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.h = load <2 x ptr>, ptr %i.d, align 8, !tbaa !199, !noalias !214
  store <2 x ptr> %i.h, ptr %1, align 16, !tbaa !199
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load <2 x ptr>, ptr %i.e, align 8, !tbaa !217, !noalias !214
  store <2 x ptr> %i.j, ptr %i.i, align 16, !tbaa !217
  %i.k = load <2 x ptr>, ptr %i.f, align 8, !tbaa !199, !noalias !218
  store <2 x ptr> %i.k, ptr %2, align 16, !tbaa !199
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load <2 x ptr>, ptr %i.g, align 8, !tbaa !217, !noalias !218
  store <2 x ptr> %i.m, ptr %i.l, align 16, !tbaa !217
  call void @_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EE19_M_destroy_data_auxESt15_Deque_iteratorIS2_RS2_PS2_ES8_(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull dead_on_return %1, ptr noundef nonnull dead_on_return %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !198  ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !221  ; 2 uses
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !222  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = icmp ult ptr %i.q, %i.s
  br i1 %i.t, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIN4llvh11SmallVectorIDsLj5EEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.q, %bb.b ] ; 3 uses
  %i.u = load ptr, ptr %.06.i.i.i, align 8, !tbaa !199
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef 512) #22
  %i.v = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.w = icmp ult ptr %.06.i.i.i, %i.r
  br i1 %i.w, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIN4llvh11SmallVectorIDsLj5EEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i, !llvm.loop !223

_ZNSt11_Deque_baseIN4llvh11SmallVectorIDsLj5EEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !198
  br label %_ZNSt11_Deque_baseIN4llvh11SmallVectorIDsLj5EEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i

_ZNSt11_Deque_baseIN4llvh11SmallVectorIDsLj5EEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i: ; preds = %_ZNSt11_Deque_baseIN4llvh11SmallVectorIDsLj5EEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i, %bb.b
  %i.x = phi ptr [ %.pre.i.i, %_ZNSt11_Deque_baseIN4llvh11SmallVectorIDsLj5EEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i ], [ %i.n, %bb.b ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.z = load i64, ptr %i.y, align 8, !tbaa !192
  %i.aa = shl i64 %i.z, 3
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #22
  br label %_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EED2Ev.exit

_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EED2Ev.exit: ; preds = %bb.a, %_ZNSt11_Deque_baseIN4llvh11SmallVectorIDsLj5EEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !189 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EED2Ev.exit
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !19
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !189 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !19
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.an = load ptr, ptr %0, align 8, !tbaa !210   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !185
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = sub i64 %i.aq, %i.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.as) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes14CompiledRegExpC2ESt6vectorIhSaIhEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_OSt5dequeIN4llvh11SmallVectorIDsLj5EEESaISD_EEONSB_8DenseMapINSB_8ArrayRefIDsEEjNSB_12DenseMapInfoISJ_EENSB_6detail12DenseMapPairISJ_jEEEE(ptr noundef nonnull align 8 dereferenceable(192) initializes((0, 24)) %0, ptr noundef captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 captures(none) dereferenceable(80) %4, ptr noundef nonnull align 8 captures(none) dereferenceable(20) %5) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load <2 x ptr>, ptr %1, align 8, !tbaa !184
  store <2 x ptr> %i.a, ptr %0, align 8, !tbaa !184
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !185
  store ptr %i.d, ptr %i.b, align 8, !tbaa !185
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !187
  %i.g = load ptr, ptr %2, align 8, !tbaa !189    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !191  ; 2 uses
  %i.l = icmp ult i64 %i.k, 16
  tail call void @llvm.assume(i1 %i.l)
  %i.m = add nuw nsw i64 %i.k, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(1) %i.h, i64 %i.m, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.g, ptr %i.e, align 8, !tbaa !189
  %i.n = load i64, ptr %i.h, align 8, !tbaa !19
  store i64 %i.n, ptr %i.f, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !191
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.p, ptr %i.q, align 8, !tbaa !191
  store ptr %i.h, ptr %2, align 8, !tbaa !189
  store i64 0, ptr %i.o, align 8, !tbaa !191
  store i8 0, ptr %i.h, align 8, !tbaa !19
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !187
  %i.t = load ptr, ptr %3, align 8, !tbaa !189    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !191  ; 2 uses
  %i.y = icmp ult i64 %i.x, 16
  tail call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store ptr %i.t, ptr %i.r, align 8, !tbaa !189
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !19
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit4: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !191
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !191
  store ptr %i.u, ptr %3, align 8, !tbaa !189
  store i64 0, ptr %i.ab, align 8, !tbaa !191
  store i8 0, ptr %i.u, align 8, !tbaa !19
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 8, ptr %i.af, align 8, !tbaa !192
  %i.ag = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #21 ; 2 uses
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !198
  %.06.i.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 5 uses
  %i.ah = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #21 ; 10 uses
  store ptr %i.ah, ptr %.06.i.i.ptr.i.i, align 8, !tbaa !199
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %.06.i.i.ptr.i.i, ptr %i.aj, align 8, !tbaa !200
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.ah, ptr %i.ak, align 8, !tbaa !201
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 512 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.al, ptr %i.am, align 8, !tbaa !202
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %.06.i.i.ptr.i.i, ptr %i.ao, align 8, !tbaa !200
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.ah, ptr %i.ap, align 8, !tbaa !201
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.al, ptr %i.aq, align 8, !tbaa !202
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !203
  store ptr %i.ah, ptr %i.an, align 8, !tbaa !204
  %i.ar = load ptr, ptr %4, align 8, !tbaa !198
  %.not.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i, label %_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EEC2EOS4_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit4
  %.sroa.0.i.i.i.i.sroa.0.0.copyload = load <16 x i8>, ptr %i.ae, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ae, i8 0, i64 80, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ae, ptr noundef nonnull align 8 dereferenceable(80) %4, i64 80, i1 false), !tbaa.struct !205
  store <16 x i8> %.sroa.0.i.i.i.i.sroa.0.0.copyload, ptr %4, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.ah, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !199
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.ah, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !tbaa !199
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.al, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !tbaa !199
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %.06.i.i.ptr.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !tbaa !206
  %.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %i.ah, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 8, !tbaa !199
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr %i.ah, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 8, !tbaa !199
  %.sroa.10.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 64
  store ptr %i.al, ptr %.sroa.10.0..sroa_idx.i.i.i.i, align 8, !tbaa !199
  %.sroa.11.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 72
  store ptr %.06.i.i.ptr.i.i, ptr %.sroa.11.0..sroa_idx.i.i.i.i, align 8, !tbaa !206
  br label %_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EEC2EOS4_.exit

_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EEC2EOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit4, %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.as, i8 0, i64 20, i1 false)
  %i.at = load ptr, ptr %5, align 8, !tbaa !208
  store ptr %i.at, ptr %i.as, align 8, !tbaa !208
  store ptr null, ptr %5, align 8, !tbaa !208
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !3
  store i32 %i.aw, ptr %i.au, align 8, !tbaa !3
  store i32 0, ptr %i.av, align 8, !tbaa !3
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.az = load i32, ptr %i.ax, align 4, !tbaa !3
  %i.ba = load i32, ptr %i.ay, align 4, !tbaa !3
  store i32 %i.ba, ptr %i.ax, align 4, !tbaa !3
  store i32 %i.az, ptr %i.ay, align 4, !tbaa !3
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bd = load i32, ptr %i.bb, align 8, !tbaa !3
  %i.be = load i32, ptr %i.bc, align 8, !tbaa !3
  store i32 %i.be, ptr %i.bb, align 8, !tbaa !3
  store i32 %i.bd, ptr %i.bc, align 8, !tbaa !3
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes14CompiledRegExp10tryCompileEN4llvh9StringRefES2_PS2_(ptr dead_on_unwind noalias writable sret(%"class.llvh::Optional") align 8 %0, ptr %1, i64 %2, ptr %3, i64 %4, ptr noundef writeonly captures(address_is_null) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"struct.std::_Deque_iterator", align 8 ; 6 uses
  %7 = alloca %"struct.std::_Deque_iterator", align 8 ; 6 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %8 = alloca %"struct.hermes::regex::RegexBytecodeHeader", align 2 ; 8 uses
  %9 = alloca %"class.hermes::regex::RegexBytecodeStream", align 16 ; 7 uses
  %i.c = alloca i16, align 2                      ; 4 uses
  %i.d = alloca i16, align 2                      ; 4 uses
  %10 = alloca %"class.std::back_insert_iterator.16", align 8 ; 6 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %i.f = alloca i16, align 2                      ; 4 uses
  %i.g = alloca i16, align 2                      ; 4 uses
  %11 = alloca %"class.std::back_insert_iterator", align 8 ; 6 uses
  %i.h = alloca ptr, align 8                      ; 6 uses
  %12 = alloca %"class.llvh::SmallVector", align 8 ; 9 uses
  %13 = alloca %"class.llvh::SmallVector.14", align 8 ; 9 uses
  %14 = alloca %"class.hermes::regex::Regex", align 8 ; 23 uses
  %15 = alloca %"class.hermes::CompiledRegExp", align 16 ; 25 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %18 = alloca %"class.std::deque", align 16      ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  %i.i = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr %i.i, ptr %12, align 8, !tbaa !224
  %i.j = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store i32 0, ptr %i.j, align 8, !tbaa !226
  %i.k = getelementptr inbounds nuw i8, ptr %12, i64 12
  store i32 16, ptr %i.k, align 4, !tbaa !227
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %2
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %12, ptr %11, align 8
  store ptr %1, ptr %i.h, align 8, !tbaa !184
  %.not53 = icmp eq i64 %2, 0
  br i1 %.not53, label %_ZN6hermes32convertUTF8WithSurrogatesToUTF16ISt20back_insert_iteratorIN4llvh11SmallVectorIDsLj16EEEEEET_S6_PKcS8_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZN6hermes11encodeUTF16ISt20back_insert_iteratorIN4llvh11SmallVectorIDsLj16EEEEEEvRT_j.exit.i
  %i.m = phi ptr [ %i.ar, %_ZN6hermes11encodeUTF16ISt20back_insert_iteratorIN4llvh11SmallVectorIDsLj16EEEEEEvRT_j.exit.i ], [ %1, %bb.a ] ; 3 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !19
  %i.o = icmp sgt i8 %i.n, -1
  br i1 %i.o, label %bb.b, label %bb.c, !prof !228

bb.b:                                             ; preds = %.lr.ph.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store ptr %i.p, ptr %i.h, align 8, !tbaa !184
  %i.q = load i8, ptr %i.m, align 1, !tbaa !19
  %i.r = sext i8 %i.q to i32
  br label %_ZN6hermes10decodeUTF8ILb1EZNS_32convertUTF8WithSurrogatesToUTF16ISt20back_insert_iteratorIN4llvh11SmallVectorIDsLj16EEEEEET_S7_PKcS9_EUlRKNS3_5TwineEE_EEjRS9_T0_.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.s = call noundef i32 @_ZN6hermes19_decodeUTF8SlowPathILb1EZNS_32convertUTF8WithSurrogatesToUTF16ISt20back_insert_iteratorIN4llvh11SmallVectorIDsLj16EEEEEET_S7_PKcS9_EUlRKNS3_5TwineEE_EEjRS9_T0_(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_ZN6hermes10decodeUTF8ILb1EZNS_32convertUTF8WithSurrogatesToUTF16ISt20back_insert_iteratorIN4llvh11SmallVectorIDsLj16EEEEEET_S7_PKcS9_EUlRKNS3_5TwineEE_EEjRS9_T0_.exit.i

_ZN6hermes10decodeUTF8ILb1EZNS_32convertUTF8WithSurrogatesToUTF16ISt20back_insert_iteratorIN4llvh11SmallVectorIDsLj16EEEEEET_S7_PKcS9_EUlRKNS3_5TwineEE_EEjRS9_T0_.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.r, %bb.b ], [ %i.s, %bb.c ] ; 4 uses
  %i.t = icmp ult i32 %.0.i.i, 65536
  br i1 %i.t, label %bb.d, label %bb.f, !prof !228

bb.d:                                             ; preds = %_ZN6hermes10decodeUTF8ILb1EZNS_32convertUTF8WithSurrogatesToUTF16ISt20back_insert_iteratorIN4llvh11SmallVectorIDsLj16EEEEEET_S7_PKcS9_EUlRKNS3_5TwineEE_EEjRS9_T0_.exit.i
  %i.u = trunc nuw i32 %.0.i.i to i16
  %i.v = load ptr, ptr %11, align 8, !tbaa !229   ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 4 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !226  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !227
  %.not.i.i.i.i = icmp ult i32 %i.x, %i.z
  br i1 %.not.i.i.i.i, label %_ZNSt20back_insert_iteratorIN4llvh11SmallVectorIDsLj16EEEEaSEODs.exit.i.i, label %bb.e, !prof !228

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull %i.aa, i64 noundef 0, i64 noundef 2) #19
  %.pre.i.i.i.i = load i32, ptr %i.w, align 8, !tbaa !226
  br label %_ZNSt20back_insert_iteratorIN4llvh11SmallVectorIDsLj16EEEEaSEODs.exit.i.i

_ZNSt20back_insert_iteratorIN4llvh11SmallVectorIDsLj16EEEEaSEODs.exit.i.i: ; preds = %bb.e, %bb.d
  %i.ab = phi i32 [ %.pre.i.i.i.i, %bb.e ], [ %i.x, %bb.d ]
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !224
  %i.ad = zext i32 %i.ab to i64
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %i.ad
  store i16 %i.u, ptr %i.ae, align 1
  %i.af = load i32, ptr %i.w, align 8, !tbaa !226
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr %i.w, align 8, !tbaa !226
  br label %_ZN6hermes11encodeUTF16ISt20back_insert_iteratorIN4llvh11SmallVectorIDsLj16EEEEEEvRT_j.exit.i

bb.f:                                             ; preds = %_ZN6hermes10decodeUTF8ILb1EZNS_32convertUTF8WithSurrogatesToUTF16ISt20back_insert_iteratorIN4llvh11SmallVectorIDsLj16EEEEEET_S7_PKcS9_EUlRKNS3_5TwineEE_EEjRS9_T0_.exit.i
  %i.ah = add i32 %.0.i.i, 983040
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  %i.ai = lshr i32 %i.ah, 10
  %i.aj = trunc i32 %i.ai to i16
  %i.ak = and i16 %i.aj, 1023
  %i.al = or disjoint i16 %i.ak, -10240
  store i16 %i.al, ptr %i.f, align 2, !tbaa !232
  %i.am = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt20back_insert_iteratorIN4llvh11SmallVectorIDsLj16EEEEaSEODs(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 2 dereferenceable(2) %i.f) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  %i.an = trunc i32 %.0.i.i to i16
  %i.ao = and i16 %i.an, 1023
  %i.ap = or disjoint i16 %i.ao, -9216
  store i16 %i.ap, ptr %i.g, align 2, !tbaa !232
  %i.aq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt20back_insert_iteratorIN4llvh11SmallVectorIDsLj16EEEEaSEODs(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 2 dereferenceable(2) %i.g) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  br label %_ZN6hermes11encodeUTF16ISt20back_insert_iteratorIN4llvh11SmallVectorIDsLj16EEEEEEvRT_j.exit.i

_ZN6hermes11encodeUTF16ISt20back_insert_iteratorIN4llvh11SmallVectorIDsLj16EEEEEEvRT_j.exit.i: ; preds = %bb.f, %_ZNSt20back_insert_iteratorIN4llvh11SmallVectorIDsLj16EEEEaSEODs.exit.i.i
  %i.ar = load ptr, ptr %i.h, align 8, !tbaa !184 ; 2 uses
  %i.as = icmp ult ptr %i.ar, %i.l
  br i1 %i.as, label %.lr.ph.i, label %_ZN6hermes32convertUTF8WithSurrogatesToUTF16ISt20back_insert_iteratorIN4llvh11SmallVectorIDsLj16EEEEEET_S6_PKcS8_.exit, !llvm.loop !233

_ZN6hermes32convertUTF8WithSurrogatesToUTF16ISt20back_insert_iteratorIN4llvh11SmallVectorIDsLj16EEEEEET_S6_PKcS8_.exit: ; preds = %_ZN6hermes11encodeUTF16ISt20back_insert_iteratorIN4llvh11SmallVectorIDsLj16EEEEEEvRT_j.exit.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  %i.at = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  store ptr %i.at, ptr %13, align 8, !tbaa !224
  %i.au = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store i32 0, ptr %i.au, align 8, !tbaa !226
  %i.av = getelementptr inbounds nuw i8, ptr %13, i64 12
  store i32 6, ptr %i.av, align 4, !tbaa !227
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 %4
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %13, ptr %10, align 8
  store ptr %3, ptr %i.e, align 8, !tbaa !184
  %.not54 = icmp eq i64 %4, 0
  br i1 %.not54, label %_ZN6hermes32convertUTF8WithSurrogatesToUTF16ISt20back_insert_iteratorIN4llvh11SmallVectorIDsLj6EEEEEET_S6_PKcS8_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %_ZN6hermes32convertUTF8WithSurrogatesToUTF16ISt20back_insert_iteratorIN4llvh11SmallVectorIDsLj16EEEEEET_S6_PKcS8_.exit, %_ZN6hermes11encodeUTF16ISt20back_insert_iteratorIN4llvh11SmallVectorIDsLj6EEEEEEvRT_j.exit.i
  %i.ax = phi ptr [ %i.cc, %_ZN6hermes11encodeUTF16ISt20back_insert_iteratorIN4llvh11SmallVectorIDsLj6EEEEEEvRT_j.exit.i ], [ %3, %_ZN6hermes32convertUTF8WithSurrogatesToUTF16ISt20back_insert_iteratorIN4llvh11SmallVectorIDsLj16EEEEEET_S6_PKcS8_.exit ] ; 3 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !19
  %i.az = icmp sgt i8 %i.ay, -1
  br i1 %i.az, label %bb.g, label %bb.h, !prof !228

bb.g:                                             ; preds = %.lr.ph.i6
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  store ptr %i.ba, ptr %i.e, align 8, !tbaa !184
  %i.bb = load i8, ptr %i.ax, align 1, !tbaa !19
  %i.bc = sext i8 %i.bb to i32
  br label %_ZN6hermes10decodeUTF8ILb1EZNS_32convertUTF8WithSurrogatesToUTF16ISt20back_insert_iteratorIN4llvh11SmallVectorIDsLj6EEEEEET_S7_PKcS9_EUlRKNS3_5TwineEE_EEjRS9_T0_.exit.i

bb.h:                                             ; preds = %.lr.ph.i6
  %i.bd = call noundef i32 @_ZN6hermes19_decodeUTF8SlowPathILb1EZNS_32convertUTF8WithSurrogatesToUTF16ISt20back_insert_iteratorIN4llvh11SmallVectorIDsLj6EEEEEET_S7_PKcS9_EUlRKNS3_5TwineEE_EEjRS9_T0_(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  br label %_ZN6hermes10decodeUTF8ILb1EZNS_32convertUTF8WithSurrogatesToUTF16ISt20back_insert_iteratorIN4llvh11SmallVectorIDsLj6EEEEEET_S7_PKcS9_EUlRKNS3_5TwineEE_EEjRS9_T0_.exit.i

_ZN6hermes10decodeUTF8ILb1EZNS_32convertUTF8WithSurrogatesToUTF16ISt20back_insert_iteratorIN4llvh11SmallVectorIDsLj6EEEEEET_S7_PKcS9_EUlRKNS3_5TwineEE_EEjRS9_T0_.exit.i: ; preds = %bb.h, %bb.g
  %.0.i.i7 = phi i32 [ %i.bc, %bb.g ], [ %i.bd, %bb.h ] ; 4 uses
  %i.be = icmp ult i32 %.0.i.i7, 65536
  br i1 %i.be, label %bb.i, label %bb.k, !prof !228

bb.i:                                             ; preds = %_ZN6hermes10decodeUTF8ILb1EZNS_32convertUTF8WithSurrogatesToUTF16ISt20back_insert_iteratorIN4llvh11SmallVectorIDsLj6EEEEEET_S7_PKcS9_EUlRKNS3_5TwineEE_EEjRS9_T0_.exit.i
  %i.bf = trunc nuw i32 %.0.i.i7 to i16
  %i.bg = load ptr, ptr %10, align 8, !tbaa !234  ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 4 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !226 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !227
  %.not.i.i.i.i10 = icmp ult i32 %i.bi, %i.bk
  br i1 %.not.i.i.i.i10, label %_ZNSt20back_insert_iteratorIN4llvh11SmallVectorIDsLj6EEEEaSEODs.exit.i.i, label %bb.j, !prof !228

bb.j:                                             ; preds = %bb.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull %i.bl, i64 noundef 0, i64 noundef 2) #19
  %.pre.i.i.i.i11 = load i32, ptr %i.bh, align 8, !tbaa !226
  br label %_ZNSt20back_insert_iteratorIN4llvh11SmallVectorIDsLj6EEEEaSEODs.exit.i.i

_ZNSt20back_insert_iteratorIN4llvh11SmallVectorIDsLj6EEEEaSEODs.exit.i.i: ; preds = %bb.j, %bb.i
  %i.bm = phi i32 [ %.pre.i.i.i.i11, %bb.j ], [ %i.bi, %bb.i ]
  %i.bn = load ptr, ptr %i.bg, align 8, !tbaa !224
  %i.bo = zext i32 %i.bm to i64
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %i.bo
  store i16 %i.bf, ptr %i.bp, align 1
  %i.bq = load i32, ptr %i.bh, align 8, !tbaa !226
  %i.br = add i32 %i.bq, 1
  store i32 %i.br, ptr %i.bh, align 8, !tbaa !226
  br label %_ZN6hermes11encodeUTF16ISt20back_insert_iteratorIN4llvh11SmallVectorIDsLj6EEEEEEvRT_j.exit.i

bb.k:                                             ; preds = %_ZN6hermes10decodeUTF8ILb1EZNS_32convertUTF8WithSurrogatesToUTF16ISt20back_insert_iteratorIN4llvh11SmallVectorIDsLj6EEEEEET_S7_PKcS9_EUlRKNS3_5TwineEE_EEjRS9_T0_.exit.i
  %i.bs = add i32 %.0.i.i7, 983040
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.bt = lshr i32 %i.bs, 10
  %i.bu = trunc i32 %i.bt to i16
  %i.bv = and i16 %i.bu, 1023
  %i.bw = or disjoint i16 %i.bv, -10240
  store i16 %i.bw, ptr %i.c, align 2, !tbaa !232
  %i.bx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt20back_insert_iteratorIN4llvh11SmallVectorIDsLj6EEEEaSEODs(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 2 dereferenceable(2) %i.c) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %i.by = trunc i32 %.0.i.i7 to i16
  %i.bz = and i16 %i.by, 1023
  %i.ca = or disjoint i16 %i.bz, -9216
  store i16 %i.ca, ptr %i.d, align 2, !tbaa !232
  %i.cb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt20back_insert_iteratorIN4llvh11SmallVectorIDsLj6EEEEaSEODs(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 2 dereferenceable(2) %i.d) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  br label %_ZN6hermes11encodeUTF16ISt20back_insert_iteratorIN4llvh11SmallVectorIDsLj6EEEEEEvRT_j.exit.i

_ZN6hermes11encodeUTF16ISt20back_insert_iteratorIN4llvh11SmallVectorIDsLj6EEEEEEvRT_j.exit.i: ; preds = %bb.k, %_ZNSt20back_insert_iteratorIN4llvh11SmallVectorIDsLj6EEEEaSEODs.exit.i.i
  %i.cc = load ptr, ptr %i.e, align 8, !tbaa !184 ; 2 uses
  %i.cd = icmp ult ptr %i.cc, %i.aw
  br i1 %i.cd, label %.lr.ph.i6, label %_ZN6hermes32convertUTF8WithSurrogatesToUTF16ISt20back_insert_iteratorIN4llvh11SmallVectorIDsLj6EEEEEET_S6_PKcS8_.exit.loopexit, !llvm.loop !237

_ZN6hermes32convertUTF8WithSurrogatesToUTF16ISt20back_insert_iteratorIN4llvh11SmallVectorIDsLj6EEEEEET_S6_PKcS8_.exit.loopexit: ; preds = %_ZN6hermes11encodeUTF16ISt20back_insert_iteratorIN4llvh11SmallVectorIDsLj6EEEEEEvRT_j.exit.i
  %.pre = load ptr, ptr %13, align 8, !tbaa !224
  %.pre55 = load i32, ptr %i.au, align 8, !tbaa !226
  %i.ce = zext i32 %.pre55 to i64
  br label %_ZN6hermes32convertUTF8WithSurrogatesToUTF16ISt20back_insert_iteratorIN4llvh11SmallVectorIDsLj6EEEEEET_S6_PKcS8_.exit

_ZN6hermes32convertUTF8WithSurrogatesToUTF16ISt20back_insert_iteratorIN4llvh11SmallVectorIDsLj6EEEEEET_S6_PKcS8_.exit: ; preds = %_ZN6hermes32convertUTF8WithSurrogatesToUTF16ISt20back_insert_iteratorIN4llvh11SmallVectorIDsLj6EEEEEET_S6_PKcS8_.exit.loopexit, %_ZN6hermes32convertUTF8WithSurrogatesToUTF16ISt20back_insert_iteratorIN4llvh11SmallVectorIDsLj16EEEEEET_S6_PKcS8_.exit
  %i.cf = phi i64 [ %i.ce, %_ZN6hermes32convertUTF8WithSurrogatesToUTF16ISt20back_insert_iteratorIN4llvh11SmallVectorIDsLj6EEEEEET_S6_PKcS8_.exit.loopexit ], [ 0, %_ZN6hermes32convertUTF8WithSurrogatesToUTF16ISt20back_insert_iteratorIN4llvh11SmallVectorIDsLj16EEEEEET_S6_PKcS8_.exit ]
  %i.cg = phi ptr [ %.pre, %_ZN6hermes32convertUTF8WithSurrogatesToUTF16ISt20back_insert_iteratorIN4llvh11SmallVectorIDsLj6EEEEEET_S6_PKcS8_.exit.loopexit ], [ %i.at, %_ZN6hermes32convertUTF8WithSurrogatesToUTF16ISt20back_insert_iteratorIN4llvh11SmallVectorIDsLj16EEEEEET_S6_PKcS8_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  %i.ch = load ptr, ptr %12, align 8, !tbaa !224
  %i.ci = load i32, ptr %i.j, align 8, !tbaa !226
  %i.cj = zext i32 %i.ci to i64
  call void @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEEC2EN4llvh8ArrayRefIDsEES6_(ptr noundef nonnull align 8 dereferenceable(336) %14, ptr %i.ch, i64 %i.cj, ptr %i.cg, i64 %i.cf)
  %i.ck = getelementptr inbounds nuw i8, ptr %14, i64 192
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !238 ; 2 uses
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_ZN6hermes32convertUTF8WithSurrogatesToUTF16ISt20back_insert_iteratorIN4llvh11SmallVectorIDsLj6EEEEEET_S6_PKcS8_.exit
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %bb.m, label %switch.lookup

switch.lookup:                                    ; preds = %bb.l
  %i.cn = sext i32 %i.cl to i64
  %i.co = getelementptr [8 x i8], ptr @switch.table._ZN6hermes14CompiledRegExp10tryCompileEN4llvh9StringRefES2_PS2_, i64 %i.cn
  %switch.gep = getelementptr i8, ptr %i.co, i64 -8
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 2 uses
  %i.cp = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %switch.load) #20
  store ptr %switch.load, ptr %5, align 8, !tbaa !184
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.cp, ptr %.sroa.439.0..sroa_idx, align 8, !tbaa !207
  br label %bb.m

bb.m:                                             ; preds = %switch.lookup, %bb.l
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i8 0, ptr %i.cq, align 8, !tbaa !264
  br label %bb.ad

bb.n:                                             ; preds = %_ZN6hermes32convertUTF8WithSurrogatesToUTF16ISt20back_insert_iteratorIN4llvh11SmallVectorIDsLj6EEEEEET_S6_PKcS8_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19, !noalias !268
  %i.cr = getelementptr inbounds nuw i8, ptr %14, i64 138
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !271, !noalias !268
  store i16 %i.cs, ptr %8, align 2, !tbaa !272, !noalias !268
  %i.ct = getelementptr inbounds nuw i8, ptr %8, i64 2
  %i.cu = getelementptr inbounds nuw i8, ptr %14, i64 140
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !273, !noalias !268
  %i.cw = trunc i32 %i.cv to i16
  store i16 %i.cw, ptr %i.ct, align 2, !tbaa !274, !noalias !268
  %i.cx = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.cy = getelementptr inbounds nuw i8, ptr %14, i64 136
  %i.cz = load i8, ptr %i.cy, align 8, !noalias !268
  %.6.i.i = and i8 %i.cz, 127
  store i8 %.6.i.i, ptr %i.cx, align 2, !tbaa !7, !noalias !268
  %i.da = getelementptr inbounds nuw i8, ptr %8, i64 5
  %i.db = getelementptr inbounds nuw i8, ptr %14, i64 196
  %i.dc = load i8, ptr %i.db, align 4, !tbaa !275, !noalias !268
  store i8 %i.dc, ptr %i.da, align 1, !tbaa !276, !noalias !268
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19, !noalias !268
  %i.dd = getelementptr inbounds nuw i8, ptr %8, i64 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(25) %9, i8 0, i64 25, i1 false), !noalias !268
  call void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(25) %9, ptr null, ptr noundef nonnull align 1 dereferenceable(6) %8, ptr noundef nonnull %i.dd), !noalias !268
  %i.de = getelementptr inbounds nuw i8, ptr %14, i64 144
  call void @_ZN6hermes5regex4Node7compileERKSt6vectorIPS1_SaIS3_EERNS0_19RegexBytecodeStreamE(ptr noundef nonnull align 8 dereferenceable(24) %i.de, ptr noundef nonnull align 8 dereferenceable(25) %9), !noalias !268
  %i.df = load <2 x ptr>, ptr %9, align 16, !tbaa !184, !noalias !277
  %i.dg = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.dh = load ptr, ptr %i.dg, align 16, !tbaa !185, !noalias !277
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19, !noalias !268
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19, !noalias !268
  call void @llvm.experimental.noalias.scope.decl(metadata !280)
  call void @llvm.experimental.noalias.scope.decl(metadata !283)
  %.not.i.i = icmp eq ptr %1, null
  %i.di = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  store ptr %i.di, ptr %16, align 8, !tbaa !187, !alias.scope !286
  br i1 %.not.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dj = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 0, ptr %i.dj, align 8, !tbaa !191, !alias.scope !286
  store i8 0, ptr %i.di, align 8, !tbaa !19, !alias.scope !286
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19, !noalias !286
  store i64 %2, ptr %i.b, align 8, !tbaa !207, !noalias !286
  %i.dk = icmp ugt i64 %2, 15
  br i1 %i.dk, label %bb.q, label %._crit_edge.i.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.dl = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #19 ; 2 uses
  store ptr %i.dl, ptr %16, align 8, !tbaa !189, !alias.scope !286
  %i.dm = load i64, ptr %i.b, align 8, !tbaa !207, !noalias !286
  store i64 %i.dm, ptr %i.di, align 8, !tbaa !19, !alias.scope !286
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.q, %bb.p
  %i.dn = phi ptr [ %i.dl, %bb.q ], [ %i.di, %bb.p ] ; 2 uses
  switch i64 %2, label %bb.s [
    i64 1, label %bb.r
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i
  ]

bb.r:                                             ; preds = %._crit_edge.i.i.i.i
  %i.do = load i8, ptr %1, align 1, !tbaa !19
  store i8 %i.do, ptr %i.dn, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i

bb.s:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dn, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i: ; preds = %bb.s, %bb.r, %._crit_edge.i.i.i.i
  %i.dp = load i64, ptr %i.b, align 8, !tbaa !207, !noalias !286 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !191, !alias.scope !286
  %i.dr = load ptr, ptr %16, align 8, !tbaa !189, !alias.scope !286
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dp
  store i8 0, ptr %i.ds, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19, !noalias !286
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit

_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit: ; preds = %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !287)
  call void @llvm.experimental.noalias.scope.decl(metadata !290)
  %.not.i.i12 = icmp eq ptr %3, null
  %i.dt = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  store ptr %i.dt, ptr %17, align 8, !tbaa !187, !alias.scope !293
  br i1 %.not.i.i12, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
  %i.du = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 0, ptr %i.du, align 8, !tbaa !191, !alias.scope !293
  store i8 0, ptr %i.dt, align 8, !tbaa !19, !alias.scope !293
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit15

bb.u:                                             ; preds = %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19, !noalias !293
  store i64 %4, ptr %i.a, align 8, !tbaa !207, !noalias !293
  %i.dv = icmp ugt i64 %4, 15
  br i1 %i.dv, label %bb.v, label %._crit_edge.i.i.i.i13

bb.v:                                             ; preds = %bb.u
  %i.dw = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #19 ; 2 uses
  store ptr %i.dw, ptr %17, align 8, !tbaa !189, !alias.scope !293
  %i.dx = load i64, ptr %i.a, align 8, !tbaa !207, !noalias !293
  store i64 %i.dx, ptr %i.dt, align 8, !tbaa !19, !alias.scope !293
  br label %._crit_edge.i.i.i.i13

._crit_edge.i.i.i.i13:                            ; preds = %bb.v, %bb.u
  %i.dy = phi ptr [ %i.dw, %bb.v ], [ %i.dt, %bb.u ] ; 2 uses
  switch i64 %4, label %bb.x [
    i64 1, label %bb.w
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i14
  ]

bb.w:                                             ; preds = %._crit_edge.i.i.i.i13
  %i.dz = load i8, ptr %3, align 1, !tbaa !19
  store i8 %i.dz, ptr %i.dy, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i14

bb.x:                                             ; preds = %._crit_edge.i.i.i.i13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dy, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i14: ; preds = %bb.x, %bb.w, %._crit_edge.i.i.i.i13
  %i.ea = load i64, ptr %i.a, align 8, !tbaa !207, !noalias !293 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %i.ea, ptr %i.eb, align 8, !tbaa !191, !alias.scope !293
  %i.ec = load ptr, ptr %17, align 8, !tbaa !189, !alias.scope !293
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.ea
  store i8 0, ptr %i.ed, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19, !noalias !293
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit15

_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit15: ; preds = %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i14
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !294)
  %i.ee = getelementptr inbounds nuw i8, ptr %14, i64 200 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  store i64 8, ptr %i.ef, align 8, !tbaa !192, !alias.scope !294
  %i.eg = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #21, !noalias !294 ; 2 uses
  store ptr %i.eg, ptr %18, align 16, !tbaa !198, !alias.scope !294
  %.06.i.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.eg, i64 24 ; 5 uses
  %i.eh = call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #21, !noalias !294 ; 10 uses
  store ptr %i.eh, ptr %.06.i.i.ptr.i.i.i, align 8, !tbaa !199, !noalias !294
  %i.ei = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %18, i64 40 ; 4 uses
  store ptr %.06.i.i.ptr.i.i.i, ptr %i.ej, align 8, !tbaa !200, !alias.scope !294
  %i.ek = getelementptr inbounds nuw i8, ptr %18, i64 24 ; 3 uses
  store ptr %i.eh, ptr %i.ek, align 8, !tbaa !201, !alias.scope !294
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 512 ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %18, i64 32 ; 2 uses
  store ptr %i.el, ptr %i.em, align 16, !tbaa !202, !alias.scope !294
  %i.en = getelementptr inbounds nuw i8, ptr %18, i64 48 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %18, i64 72 ; 4 uses
  store ptr %.06.i.i.ptr.i.i.i, ptr %i.eo, align 8, !tbaa !200, !alias.scope !294
  %i.ep = getelementptr inbounds nuw i8, ptr %18, i64 56 ; 3 uses
  store ptr %i.eh, ptr %i.ep, align 8, !tbaa !201, !alias.scope !294
  %i.eq = getelementptr inbounds nuw i8, ptr %18, i64 64 ; 2 uses
  store ptr %i.el, ptr %i.eq, align 16, !tbaa !202, !alias.scope !294
  store ptr %i.eh, ptr %i.ei, align 16, !tbaa !203, !alias.scope !294
  store ptr %i.eh, ptr %i.en, align 16, !tbaa !204, !alias.scope !294
  %i.er = load ptr, ptr %i.ee, align 8, !tbaa !198, !noalias !294
  %.not.i.i.i = icmp eq ptr %i.er, null
  br i1 %.not.i.i.i, label %_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE24acquireOrderedGroupNamesEv.exit, label %bb.y

bb.y:                                             ; preds = %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit15
  %.sroa.0.i.i.i.i.i.sroa.0.0.copyload = load <16 x i8>, ptr %18, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %18, ptr noundef nonnull align 8 dereferenceable(80) %i.ee, i64 80, i1 false), !tbaa.struct !205
  store <16 x i8> %.sroa.0.i.i.i.i.i.sroa.0.0.copyload, ptr %i.ee, align 8, !noalias !294
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %14, i64 216
  store ptr %i.eh, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !199, !noalias !294
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %14, i64 224
  store ptr %i.eh, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !199, !noalias !294
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %14, i64 232
  store ptr %i.el, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !199, !noalias !294
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %14, i64 240
  store ptr %.06.i.i.ptr.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !206, !noalias !294
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %14, i64 248
  store ptr %i.eh, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !199, !noalias !294
  %.sroa.9.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %14, i64 256
  store ptr %i.eh, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !199, !noalias !294
  %.sroa.10.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %14, i64 264
  store ptr %i.el, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !199, !noalias !294
  %.sroa.11.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %14, i64 272
  store ptr %.06.i.i.ptr.i.i.i, ptr %.sroa.11.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !206, !noalias !294
  br label %_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE24acquireOrderedGroupNamesEv.exit

_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE24acquireOrderedGroupNamesEv.exit: ; preds = %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit15, %bb.y
  %i.es = getelementptr inbounds nuw i8, ptr %14, i64 280 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !208, !noalias !297
  store ptr null, ptr %i.es, align 8, !tbaa !208, !noalias !297
  %i.eu = getelementptr inbounds nuw i8, ptr %14, i64 288 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %14, i64 292
  %i.ew = load <2 x i32>, ptr %i.eu, align 8, !tbaa !3, !noalias !297
  store i32 0, ptr %i.eu, align 8, !tbaa !3, !noalias !297
  store i32 0, ptr %i.ev, align 4, !tbaa !3, !noalias !297
  %i.ex = getelementptr inbounds nuw i8, ptr %14, i64 296 ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !3, !noalias !297
  store i32 0, ptr %i.ex, align 8, !tbaa !3, !noalias !297
  store <2 x ptr> %i.df, ptr %15, align 16, !tbaa !184
  %i.ez = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %i.dh, ptr %i.ez, align 16, !tbaa !185
  %i.fa = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %15, i64 40 ; 3 uses
  store ptr %i.fb, ptr %i.fa, align 8, !tbaa !187
  %i.fc = load ptr, ptr %16, align 8, !tbaa !189  ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 7 uses
  %i.fe = icmp eq ptr %i.fc, %i.fd
  br i1 %i.fe, label %bb.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.z:                                             ; preds = %_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE24acquireOrderedGroupNamesEv.exit
  %i.ff = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !191 ; 3 uses
  %i.fh = icmp ult i64 %i.fg, 16
  call void @llvm.assume(i1 %i.fh)
  %i.fi = add nuw nsw i64 %i.fg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fb, ptr noundef nonnull align 8 dereferenceable(1) %i.fd, i64 %i.fi, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE24acquireOrderedGroupNamesEv.exit
  store ptr %i.fc, ptr %i.fa, align 8, !tbaa !189
  %i.fj = load i64, ptr %i.fd, align 8, !tbaa !19
  store i64 %i.fj, ptr %i.fb, align 8, !tbaa !19
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %16, i64 8
  %.pre56 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !191
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.z
  %i.fk = phi i64 [ %.pre56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.fg, %bb.z ]
  %i.fl = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.fm = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i64 %i.fk, ptr %i.fm, align 16, !tbaa !191
  store ptr %i.fd, ptr %16, align 8, !tbaa !189
  store i64 0, ptr %i.fl, align 8, !tbaa !191
  store i8 0, ptr %i.fd, align 8, !tbaa !19
  %i.fn = getelementptr inbounds nuw i8, ptr %15, i64 56 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %15, i64 72 ; 3 uses
  store ptr %i.fo, ptr %i.fn, align 8, !tbaa !187
  %i.fp = load ptr, ptr %17, align 8, !tbaa !189  ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 7 uses
  %i.fr = icmp eq ptr %i.fp, %i.fq
  br i1 %i.fr, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.fs = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !191 ; 3 uses
  %i.fu = icmp ult i64 %i.ft, 16
  call void @llvm.assume(i1 %i.fu)
  %i.fv = add nuw nsw i64 %i.ft, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fo, ptr noundef nonnull align 8 dereferenceable(1) %i.fq, i64 %i.fv, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.fp, ptr %i.fn, align 8, !tbaa !189
  %i.fw = load i64, ptr %i.fq, align 8, !tbaa !19
  store i64 %i.fw, ptr %i.fo, align 8, !tbaa !19
  %.phi.trans.insert57 = getelementptr inbounds nuw i8, ptr %17, i64 8
  %.pre58 = load i64, ptr %.phi.trans.insert57, align 8, !tbaa !191
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit4.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit4.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i, %bb.aa
  %i.fx = phi i64 [ %.pre58, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i ], [ %i.ft, %bb.aa ]
  %i.fy = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.fz = getelementptr inbounds nuw i8, ptr %15, i64 64
  store i64 %i.fx, ptr %i.fz, align 16, !tbaa !191
  store ptr %i.fq, ptr %17, align 8, !tbaa !189
  store i64 0, ptr %i.fy, align 8, !tbaa !191
  store i8 0, ptr %i.fq, align 8, !tbaa !19
  %i.ga = getelementptr inbounds nuw i8, ptr %15, i64 88 ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %15, i64 96
  store i64 8, ptr %i.gb, align 16, !tbaa !192
  %i.gc = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #21 ; 2 uses
  store ptr %i.gc, ptr %i.ga, align 8, !tbaa !198
  %.06.i.i.ptr.i.i.i17 = getelementptr inbounds nuw i8, ptr %i.gc, i64 24 ; 7 uses
  %i.gd = call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #21 ; 13 uses
  store ptr %i.gd, ptr %.06.i.i.ptr.i.i.i17, align 8, !tbaa !199
  %i.ge = getelementptr inbounds nuw i8, ptr %15, i64 104
  %i.gf = getelementptr inbounds nuw i8, ptr %15, i64 128
  store ptr %.06.i.i.ptr.i.i.i17, ptr %i.gf, align 16, !tbaa !200
  %i.gg = getelementptr inbounds nuw i8, ptr %15, i64 112
  store ptr %i.gd, ptr %i.gg, align 16, !tbaa !201
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 512 ; 5 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %15, i64 120
  store ptr %i.gh, ptr %i.gi, align 8, !tbaa !202
  %i.gj = getelementptr inbounds nuw i8, ptr %15, i64 136
  %i.gk = getelementptr inbounds nuw i8, ptr %15, i64 160
  store ptr %.06.i.i.ptr.i.i.i17, ptr %i.gk, align 16, !tbaa !200
  %i.gl = getelementptr inbounds nuw i8, ptr %15, i64 144
  store ptr %i.gd, ptr %i.gl, align 16, !tbaa !201
  %i.gm = getelementptr inbounds nuw i8, ptr %15, i64 152
  store ptr %i.gh, ptr %i.gm, align 8, !tbaa !202
  store ptr %i.gd, ptr %i.ge, align 8, !tbaa !203
  store ptr %i.gd, ptr %i.gj, align 8, !tbaa !204
  %i.gn = load ptr, ptr %18, align 16, !tbaa !198
  %.not.i.i.i18 = icmp eq ptr %i.gn, null
  br i1 %.not.i.i.i18, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit4.i._ZN6hermes14CompiledRegExpC2ESt6vectorIhSaIhEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_OSt5dequeIN4llvh11SmallVectorIDsLj5EEESaISD_EEONSB_8DenseMapINSB_8ArrayRefIDsEEjNSB_12DenseMapInfoISJ_EENSB_6detail12DenseMapPairISJ_jEEEE.exit_crit_edge, label %bb.ab

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit4.i._ZN6hermes14CompiledRegExpC2ESt6vectorIhSaIhEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_OSt5dequeIN4llvh11SmallVectorIDsLj5EEESaISD_EEONSB_8DenseMapINSB_8ArrayRefIDsEEjNSB_12DenseMapInfoISJ_EENSB_6detail12DenseMapPairISJ_jEEEE.exit_crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit4.i
  %.pre59 = load ptr, ptr %i.ei, align 16, !tbaa !300, !noalias !301
  %i.go = load <2 x ptr>, ptr %i.ek, align 8, !tbaa !199, !noalias !301
  %.pre62 = load ptr, ptr %i.ej, align 8, !tbaa !200, !noalias !301
  %.pre63 = load ptr, ptr %i.en, align 16, !tbaa !300, !noalias !304
  %i.gp = load <2 x ptr>, ptr %i.ep, align 8, !tbaa !199, !noalias !304
  %.pre66 = load ptr, ptr %i.eo, align 8, !tbaa !200, !noalias !304
  br label %_ZN6hermes14CompiledRegExpC2ESt6vectorIhSaIhEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_OSt5dequeIN4llvh11SmallVectorIDsLj5EEESaISD_EEONSB_8DenseMapINSB_8ArrayRefIDsEEjNSB_12DenseMapInfoISJ_EENSB_6detail12DenseMapPairISJ_jEEEE.exit

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit4.i
  %.sroa.0.i.i.i.i.i16.sroa.0.0.copyload = load <16 x i8>, ptr %i.ga, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ga, ptr noundef nonnull align 16 dereferenceable(80) %18, i64 80, i1 false), !tbaa.struct !205
  store <16 x i8> %.sroa.0.i.i.i.i.i16.sroa.0.0.copyload, ptr %18, align 16
  store ptr %i.gd, ptr %i.ei, align 16, !tbaa !199
  store ptr %i.gd, ptr %i.ek, align 8, !tbaa !199
  store ptr %i.gh, ptr %i.em, align 16, !tbaa !199
  store ptr %.06.i.i.ptr.i.i.i17, ptr %i.ej, align 8, !tbaa !206
  store ptr %i.gd, ptr %i.en, align 16, !tbaa !199
  store ptr %i.gd, ptr %i.ep, align 8, !tbaa !199
  store ptr %i.gh, ptr %i.eq, align 16, !tbaa !199
  store ptr %.06.i.i.ptr.i.i.i17, ptr %i.eo, align 8, !tbaa !206
  %i.gq = insertelement <2 x ptr> poison, ptr %i.gd, i64 0
  %i.gr = insertelement <2 x ptr> %i.gq, ptr %i.gh, i64 1 ; 2 uses
  br label %_ZN6hermes14CompiledRegExpC2ESt6vectorIhSaIhEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_OSt5dequeIN4llvh11SmallVectorIDsLj5EEESaISD_EEONSB_8DenseMapINSB_8ArrayRefIDsEEjNSB_12DenseMapInfoISJ_EENSB_6detail12DenseMapPairISJ_jEEEE.exit

_ZN6hermes14CompiledRegExpC2ESt6vectorIhSaIhEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_OSt5dequeIN4llvh11SmallVectorIDsLj5EEESaISD_EEONSB_8DenseMapINSB_8ArrayRefIDsEEjNSB_12DenseMapInfoISJ_EENSB_6detail12DenseMapPairISJ_jEEEE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit4.i._ZN6hermes14CompiledRegExpC2ESt6vectorIhSaIhEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_OSt5dequeIN4llvh11SmallVectorIDsLj5EEESaISD_EEONSB_8DenseMapINSB_8ArrayRefIDsEEjNSB_12DenseMapInfoISJ_EENSB_6detail12DenseMapPairISJ_jEEEE.exit_crit_edge, %bb.ab
  %i.gs = phi ptr [ %.pre66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit4.i._ZN6hermes14CompiledRegExpC2ESt6vectorIhSaIhEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_OSt5dequeIN4llvh11SmallVectorIDsLj5EEESaISD_EEONSB_8DenseMapINSB_8ArrayRefIDsEEjNSB_12DenseMapInfoISJ_EENSB_6detail12DenseMapPairISJ_jEEEE.exit_crit_edge ], [ %.06.i.i.ptr.i.i.i17, %bb.ab ]
  %i.gt = phi ptr [ %.pre63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit4.i._ZN6hermes14CompiledRegExpC2ESt6vectorIhSaIhEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_OSt5dequeIN4llvh11SmallVectorIDsLj5EEESaISD_EEONSB_8DenseMapINSB_8ArrayRefIDsEEjNSB_12DenseMapInfoISJ_EENSB_6detail12DenseMapPairISJ_jEEEE.exit_crit_edge ], [ %i.gd, %bb.ab ]
  %i.gu = phi ptr [ %.pre62, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit4.i._ZN6hermes14CompiledRegExpC2ESt6vectorIhSaIhEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_OSt5dequeIN4llvh11SmallVectorIDsLj5EEESaISD_EEONSB_8DenseMapINSB_8ArrayRefIDsEEjNSB_12DenseMapInfoISJ_EENSB_6detail12DenseMapPairISJ_jEEEE.exit_crit_edge ], [ %.06.i.i.ptr.i.i.i17, %bb.ab ]
  %i.gv = phi ptr [ %.pre59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit4.i._ZN6hermes14CompiledRegExpC2ESt6vectorIhSaIhEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_OSt5dequeIN4llvh11SmallVectorIDsLj5EEESaISD_EEONSB_8DenseMapINSB_8ArrayRefIDsEEjNSB_12DenseMapInfoISJ_EENSB_6detail12DenseMapPairISJ_jEEEE.exit_crit_edge ], [ %i.gd, %bb.ab ]
  %i.gw = phi <2 x ptr> [ %i.go, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit4.i._ZN6hermes14CompiledRegExpC2ESt6vectorIhSaIhEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_OSt5dequeIN4llvh11SmallVectorIDsLj5EEESaISD_EEONSB_8DenseMapINSB_8ArrayRefIDsEEjNSB_12DenseMapInfoISJ_EENSB_6detail12DenseMapPairISJ_jEEEE.exit_crit_edge ], [ %i.gr, %bb.ab ]
  %i.gx = phi <2 x ptr> [ %i.gp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit4.i._ZN6hermes14CompiledRegExpC2ESt6vectorIhSaIhEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_OSt5dequeIN4llvh11SmallVectorIDsLj5EEESaISD_EEONSB_8DenseMapINSB_8ArrayRefIDsEEjNSB_12DenseMapInfoISJ_EENSB_6detail12DenseMapPairISJ_jEEEE.exit_crit_edge ], [ %i.gr, %bb.ab ]
  %i.gy = getelementptr inbounds nuw i8, ptr %15, i64 168
  store ptr %i.et, ptr %i.gy, align 8, !tbaa !208
  %i.gz = getelementptr inbounds nuw i8, ptr %15, i64 176
  store <2 x i32> %i.ew, ptr %i.gz, align 16, !tbaa !3
  %i.ha = getelementptr inbounds nuw i8, ptr %15, i64 184
  store i32 %i.ey, ptr %i.ha, align 8, !tbaa !3
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i8 1, ptr %i.hb, align 8, !tbaa !264
  call void @_ZN6hermes14CompiledRegExpC2EOS0_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(192) %15)
  call void @_ZN6hermes14CompiledRegExpD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %15) #19
  call void @_ZdlPv(ptr noundef null) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.gv, ptr %6, align 8, !tbaa !300
  %i.hc = getelementptr inbounds nuw i8, ptr %6, i64 8
  store <2 x ptr> %i.gw, ptr %i.hc, align 8, !tbaa !199
  %i.hd = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.gu, ptr %i.hd, align 8, !tbaa !200
  store ptr %i.gt, ptr %7, align 8, !tbaa !300
  %i.he = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <2 x ptr> %i.gx, ptr %i.he, align 8, !tbaa !199
  %i.hf = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.gs, ptr %i.hf, align 8, !tbaa !200
  call void @_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EE19_M_destroy_data_auxESt15_Deque_iteratorIS2_RS2_PS2_ES8_(ptr noundef nonnull align 8 dereferenceable(80) %18, ptr noundef nonnull dead_on_return %6, ptr noundef nonnull dead_on_return %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.hg = load ptr, ptr %18, align 16, !tbaa !198 ; 2 uses
  %.not.i.i27 = icmp eq ptr %i.hg, null
  br i1 %.not.i.i27, label %_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZN6hermes14CompiledRegExpC2ESt6vectorIhSaIhEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_OSt5dequeIN4llvh11SmallVectorIDsLj5EEESaISD_EEONSB_8DenseMapINSB_8ArrayRefIDsEEjNSB_12DenseMapInfoISJ_EENSB_6detail12DenseMapPairISJ_jEEEE.exit
  %i.hh = load ptr, ptr %i.ej, align 8, !tbaa !221 ; 2 uses
  %i.hi = load ptr, ptr %i.eo, align 8, !tbaa !222 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hk = icmp ult ptr %i.hh, %i.hj
  br i1 %i.hk, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIN4llvh11SmallVectorIDsLj5EEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ac, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.hm, %.lr.ph.i.i.i ], [ %i.hh, %bb.ac ] ; 3 uses
  %i.hl = load ptr, ptr %.06.i.i.i, align 8, !tbaa !199
  call void @_ZdlPvm(ptr noundef %i.hl, i64 noundef 512) #22
  %i.hm = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.hn = icmp ult ptr %.06.i.i.i, %i.hi
  br i1 %i.hn, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIN4llvh11SmallVectorIDsLj5EEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i, !llvm.loop !223

_ZNSt11_Deque_baseIN4llvh11SmallVectorIDsLj5EEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i = load ptr, ptr %18, align 16, !tbaa !198
  br label %_ZNSt11_Deque_baseIN4llvh11SmallVectorIDsLj5EEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i

_ZNSt11_Deque_baseIN4llvh11SmallVectorIDsLj5EEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i: ; preds = %_ZNSt11_Deque_baseIN4llvh11SmallVectorIDsLj5EEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i, %bb.ac
  %i.ho = phi ptr [ %.pre.i.i, %_ZNSt11_Deque_baseIN4llvh11SmallVectorIDsLj5EEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i ], [ %i.hg, %bb.ac ]
  %i.hp = load i64, ptr %i.ef, align 8, !tbaa !192
  %i.hq = shl i64 %i.hp, 3
  call void @_ZdlPvm(ptr noundef %i.ho, i64 noundef %i.hq) #22
  br label %_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EED2Ev.exit

_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EED2Ev.exit: ; preds = %_ZN6hermes14CompiledRegExpC2ESt6vectorIhSaIhEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_OSt5dequeIN4llvh11SmallVectorIDsLj5EEESaISD_EEONSB_8DenseMapINSB_8ArrayRefIDsEEjNSB_12DenseMapInfoISJ_EENSB_6detail12DenseMapPairISJ_jEEEE.exit, %_ZNSt11_Deque_baseIN4llvh11SmallVectorIDsLj5EEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  %i.hr = load ptr, ptr %17, align 8, !tbaa !189  ; 2 uses
  %i.hs = icmp eq ptr %i.hr, %i.fq
  br i1 %i.hs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EED2Ev.exit
  %i.ht = load i64, ptr %i.fq, align 8, !tbaa !19
  %i.hu = add i64 %i.ht, 1
  call void @_ZdlPvm(ptr noundef %i.hr, i64 noundef %i.hu) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  %i.hv = load ptr, ptr %16, align 8, !tbaa !189  ; 2 uses
  %i.hw = icmp eq ptr %i.hv, %i.fd
  br i1 %i.hw, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.hx = load i64, ptr %i.fd, align 8, !tbaa !19
  %i.hy = add i64 %i.hx, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hy) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.m
  call void @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEED2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  %i.hz = load ptr, ptr %13, align 8, !tbaa !224  ; 2 uses
  %i.ia = icmp eq ptr %i.hz, %i.at
  br i1 %i.ia, label %_ZN4llvh11SmallVectorIDsLj6EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @free(ptr noundef %i.hz) #19
  br label %_ZN4llvh11SmallVectorIDsLj6EED2Ev.exit

_ZN4llvh11SmallVectorIDsLj6EED2Ev.exit:           ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  %i.ib = load ptr, ptr %12, align 8, !tbaa !224  ; 2 uses
  %i.ic = icmp eq ptr %i.ib, %i.i
  br i1 %i.ic, label %_ZN4llvh11SmallVectorIDsLj16EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZN4llvh11SmallVectorIDsLj6EED2Ev.exit
  call void @free(ptr noundef %i.ib) #19
  br label %_ZN4llvh11SmallVectorIDsLj16EED2Ev.exit

_ZN4llvh11SmallVectorIDsLj16EED2Ev.exit:          ; preds = %_ZN4llvh11SmallVectorIDsLj6EED2Ev.exit, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEEC2EN4llvh8ArrayRefIDsEES6_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr %1, i64 %2, ptr %3, i64 %4) unnamed_addr #0 comdat align 2 {
bb.a:
  store i32 1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.a, align 4, !tbaa !307
  %.06.i.i.i.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -1, ptr %.06.i.i.i.ptr.i, align 8, !tbaa !3
  %.06.i.i.i.ptr.1.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 -1, ptr %.06.i.i.i.ptr.1.i, align 8, !tbaa !3
  %.06.i.i.i.ptr.2.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 -1, ptr %.06.i.i.i.ptr.2.i, align 8, !tbaa !3
  %.06.i.i.i.ptr.3.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 -1, ptr %.06.i.i.i.ptr.3.i, align 8, !tbaa !3
  %.06.i.i.i.ptr.4.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 -1, ptr %.06.i.i.i.ptr.4.i, align 8, !tbaa !3
  %.06.i.i.i.ptr.5.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 -1, ptr %.06.i.i.i.ptr.5.i, align 8, !tbaa !3
  %.06.i.i.i.ptr.6.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 -1, ptr %.06.i.i.i.ptr.6.i, align 8, !tbaa !3
  %.06.i.i.i.ptr.7.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 -1, ptr %.06.i.i.i.ptr.7.i, align 8, !tbaa !3
  %.06.i.i.i.ptr.8.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 -1, ptr %.06.i.i.i.ptr.8.i, align 8, !tbaa !3
  %.06.i.i.i.ptr.9.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 -1, ptr %.06.i.i.i.ptr.9.i, align 8, !tbaa !3
  %.06.i.i.i.ptr.10.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 -1, ptr %.06.i.i.i.ptr.10.i, align 8, !tbaa !3
  %.06.i.i.i.ptr.11.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 -1, ptr %.06.i.i.i.ptr.11.i, align 8, !tbaa !3
  %.06.i.i.i.ptr.12.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 -1, ptr %.06.i.i.i.ptr.12.i, align 8, !tbaa !3
  %.06.i.i.i.ptr.13.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 -1, ptr %.06.i.i.i.ptr.13.i, align 8, !tbaa !3
  %.06.i.i.i.ptr.14.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 -1, ptr %.06.i.i.i.ptr.14.i, align 8, !tbaa !3
  %.06.i.i.i.ptr.15.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 -1, ptr %.06.i.i.i.ptr.15.i, align 8, !tbaa !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8
  %i.d = and i8 %i.c, -128
  store i8 %i.d, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 138
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(59) %i.e, i8 0, i64 59, i1 false)
  store i64 8, ptr %i.g, align 8, !tbaa !192
  %i.h = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #21 ; 2 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !198
  %.06.i.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 3 uses
  %i.i = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #21 ; 6 uses
  store ptr %i.i, ptr %.06.i.i.ptr.i.i, align 8, !tbaa !199
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %.06.i.i.ptr.i.i, ptr %i.k, align 8, !tbaa !200
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.i, ptr %i.l, align 8, !tbaa !201
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 512 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %i.m, ptr %i.n, align 8, !tbaa !202
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %.06.i.i.ptr.i.i, ptr %i.p, align 8, !tbaa !200
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr %i.i, ptr %i.q, align 8, !tbaa !201
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr %i.m, ptr %i.r, align 8, !tbaa !202
  store ptr %i.i, ptr %i.j, align 8, !tbaa !203
  store ptr %i.i, ptr %i.o, align 8, !tbaa !204
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.s, i8 0, i64 20, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i8 0, ptr %i.t, align 8, !tbaa !308
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  %.idx.i = shl nuw nsw i64 %4, 1
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 %.idx.i
  %.not36.i = icmp eq i64 %4, 0
  br i1 %.not36.i, label %_ZN6hermes5regex11SyntaxFlags10fromStringEN4llvh8ArrayRefIDsEE.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.i
  %.038.i = phi ptr [ %i.af, %bb.i ], [ %3, %bb.a ] ; 2 uses
  %.sroa.0.037.i = phi i8 [ %i.ae, %bb.i ], [ 0, %bb.a ] ; 8 uses
  %i.w = load i16, ptr %.038.i, align 2, !tbaa !232
  switch i16 %i.w, label %_ZN6hermes5regex11SyntaxFlags10fromStringEN4llvh8ArrayRefIDsEE.exit.thread10 [
    i16 105, label %bb.b
    i16 109, label %bb.c
    i16 103, label %bb.d
    i16 117, label %bb.e
    i16 121, label %bb.f
    i16 115, label %bb.g
    i16 100, label %bb.h
  ]

bb.b:                                             ; preds = %.lr.ph.i
  %i.x = and i8 %.sroa.0.037.i, 1
  %.not24.i = icmp eq i8 %i.x, 0
  br i1 %.not24.i, label %bb.i, label %_ZN6hermes5regex11SyntaxFlags10fromStringEN4llvh8ArrayRefIDsEE.exit.thread10

bb.c:                                             ; preds = %.lr.ph.i
  %i.y = and i8 %.sroa.0.037.i, 4
  %.not23.i = icmp eq i8 %i.y, 0
  br i1 %.not23.i, label %bb.i, label %_ZN6hermes5regex11SyntaxFlags10fromStringEN4llvh8ArrayRefIDsEE.exit.thread10

bb.d:                                             ; preds = %.lr.ph.i
  %i.z = and i8 %.sroa.0.037.i, 2
  %.not22.i = icmp eq i8 %i.z, 0
  br i1 %.not22.i, label %bb.i, label %_ZN6hermes5regex11SyntaxFlags10fromStringEN4llvh8ArrayRefIDsEE.exit.thread10

bb.e:                                             ; preds = %.lr.ph.i
  %i.aa = and i8 %.sroa.0.037.i, 8
  %.not21.i = icmp eq i8 %i.aa, 0
  br i1 %.not21.i, label %bb.i, label %_ZN6hermes5regex11SyntaxFlags10fromStringEN4llvh8ArrayRefIDsEE.exit.thread10

bb.f:                                             ; preds = %.lr.ph.i
  %i.ab = and i8 %.sroa.0.037.i, 32
  %.not20.i = icmp eq i8 %i.ab, 0
  br i1 %.not20.i, label %bb.i, label %_ZN6hermes5regex11SyntaxFlags10fromStringEN4llvh8ArrayRefIDsEE.exit.thread10

bb.g:                                             ; preds = %.lr.ph.i
  %i.ac = and i8 %.sroa.0.037.i, 16
  %.not19.i = icmp eq i8 %i.ac, 0
  br i1 %.not19.i, label %bb.i, label %_ZN6hermes5regex11SyntaxFlags10fromStringEN4llvh8ArrayRefIDsEE.exit.thread10

bb.h:                                             ; preds = %.lr.ph.i
  %i.ad = and i8 %.sroa.0.037.i, 64
  %.not18.i = icmp eq i8 %i.ad, 0
  br i1 %.not18.i, label %bb.i, label %_ZN6hermes5regex11SyntaxFlags10fromStringEN4llvh8ArrayRefIDsEE.exit.thread10

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sink.i = phi i8 [ 16, %bb.g ], [ 32, %bb.f ], [ 8, %bb.e ], [ 2, %bb.d ], [ 4, %bb.c ], [ 1, %bb.b ], [ 64, %bb.h ]
  %i.ae = or disjoint i8 %.sink.i, %.sroa.0.037.i ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.038.i, i64 2 ; 2 uses
  %.not.i = icmp eq ptr %i.af, %i.v
  br i1 %.not.i, label %_ZN6hermes5regex11SyntaxFlags10fromStringEN4llvh8ArrayRefIDsEE.exit.thread, label %.lr.ph.i

_ZN6hermes5regex11SyntaxFlags10fromStringEN4llvh8ArrayRefIDsEE.exit.thread: ; preds = %bb.i, %bb.a
  %.sroa.0.0.extract.trunc9 = phi i8 [ 0, %bb.a ], [ %i.ae, %bb.i ]
end_hunk_0
begin_hunk_1_@_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EE19_M_destroy_data_auxESt15_Deque_iteratorIS2_RS2_PS2_ES8_:bb.a
  br i1 %i.ai, label %_ZSt8_DestroyIN4llvh11SmallVectorIDsLj5EEEEvPT_.exit.i.i.8, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIN4llvh11SmallVectorIDsLj5EEEEvPT_.exit.i.i.7
  tail call void @free(ptr noundef %i.ag) #19
  br label %_ZSt8_DestroyIN4llvh11SmallVectorIDsLj5EEEEvPT_.exit.i.i.8

_ZSt8_DestroyIN4llvh11SmallVectorIDsLj5EEEEvPT_.exit.i.i.8: ; preds = %bb.j, %_ZSt8_DestroyIN4llvh11SmallVectorIDsLj5EEEEvPT_.exit.i.i.7
  %.05.i.i.ptr.9 = getelementptr inbounds nuw i8, ptr %i.h, i64 288
  %i.aj = load ptr, ptr %.05.i.i.ptr.9, align 8, !tbaa !224 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 304
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZSt8_DestroyIN4llvh11SmallVectorIDsLj5EEEEvPT_.exit.i.i.9, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIN4llvh11SmallVectorIDsLj5EEEEvPT_.exit.i.i.8
  tail call void @free(ptr noundef %i.aj) #19
  br label %_ZSt8_DestroyIN4llvh11SmallVectorIDsLj5EEEEvPT_.exit.i.i.9

_ZSt8_DestroyIN4llvh11SmallVectorIDsLj5EEEEvPT_.exit.i.i.9: ; preds = %bb.k, %_ZSt8_DestroyIN4llvh11SmallVectorIDsLj5EEEEvPT_.exit.i.i.8
  %.05.i.i.ptr.10 = getelementptr inbounds nuw i8, ptr %i.h, i64 320
  %i.am = load ptr, ptr %.05.i.i.ptr.10, align 8, !tbaa !224 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 336
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZSt8_DestroyIN4llvh11SmallVectorIDsLj5EEEEvPT_.exit.i.i.10, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIN4llvh11SmallVectorIDsLj5EEEEvPT_.exit.i.i.9
  tail call void @free(ptr noundef %i.am) #19
  br label %_ZSt8_DestroyIN4llvh11SmallVectorIDsLj5EEEEvPT_.exit.i.i.10

_ZSt8_DestroyIN4llvh11SmallVectorIDsLj5EEEEvPT_.exit.i.i.10: ; preds = %bb.l, %_ZSt8_DestroyIN4llvh11SmallVectorIDsLj5EEEEvPT_.exit.i.i.9
  %.05.i.i.ptr.11 = getelementptr inbounds nuw i8, ptr %i.h, i64 352
  %i.ap = load ptr, ptr %.05.i.i.ptr.11, align 8, !tbaa !224 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 368
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZSt8_DestroyIN4llvh11SmallVectorIDsLj5EEEEvPT_.exit.i.i.11, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIN4llvh11SmallVectorIDsLj5EEEEvPT_.exit.i.i.10
  tail call void @free(ptr noundef %i.ap) #19
  br label %_ZSt8_DestroyIN4llvh11SmallVectorIDsLj5EEEEvPT_.exit.i.i.11

_ZSt8_DestroyIN4llvh11SmallVectorIDsLj5EEEEvPT_.exit.i.i.11: ; preds = %bb.m, %_ZSt8_DestroyIN4llvh11SmallVectorIDsLj5EEEEvPT_.exit.i.i.10
  %.05.i.i.ptr.12 = getelementptr inbounds nuw i8, ptr %i.h, i64 384
  %i.as = load ptr, ptr %.05.i.i.ptr.12, align 8, !tbaa !224 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 400
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZSt8_DestroyIN4llvh11SmallVectorIDsLj5EEEEvPT_.exit.i.i.12, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIN4llvh11SmallVectorIDsLj5EEEEvPT_.exit.i.i.11
  tail call void @free(ptr noundef %i.as) #19
  br label %_ZSt8_DestroyIN4llvh11SmallVectorIDsLj5EEEEvPT_.exit.i.i.12

_ZSt8_DestroyIN4llvh11SmallVectorIDsLj5EEEEvPT_.exit.i.i.12: ; preds = %bb.n, %_ZSt8_DestroyIN4llvh11SmallVectorIDsLj5EEEEvPT_.exit.i.i.11
  %.05.i.i.ptr.13 = getelementptr inbounds nuw i8, ptr %i.h, i64 416
  %i.av = load ptr, ptr %.05.i.i.ptr.13, align 8, !tbaa !224 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 432
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZSt8_DestroyIN4llvh11SmallVectorIDsLj5EEEEvPT_.exit.i.i.13, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIN4llvh11SmallVectorIDsLj5EEEEvPT_.exit.i.i.12
  tail call void @free(ptr noundef %i.av) #19
  br label %_ZSt8_DestroyIN4llvh11SmallVectorIDsLj5EEEEvPT_.exit.i.i.13

_ZSt8_DestroyIN4llvh11SmallVectorIDsLj5EEEEvPT_.exit.i.i.13: ; preds = %bb.o, %_ZSt8_DestroyIN4llvh11SmallVectorIDsLj5EEEEvPT_.exit.i.i.12
  %.05.i.i.ptr.14 = getelementptr inbounds nuw i8, ptr %i.h, i64 448
  %i.ay = load ptr, ptr %.05.i.i.ptr.14, align 8, !tbaa !224 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.h, i64 464
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZSt8_DestroyIN4llvh11SmallVectorIDsLj5EEEEvPT_.exit.i.i.14, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIN4llvh11SmallVectorIDsLj5EEEEvPT_.exit.i.i.13
  tail call void @free(ptr noundef %i.ay) #19
  br label %_ZSt8_DestroyIN4llvh11SmallVectorIDsLj5EEEEvPT_.exit.i.i.14

_ZSt8_DestroyIN4llvh11SmallVectorIDsLj5EEEEvPT_.exit.i.i.14: ; preds = %bb.p, %_ZSt8_DestroyIN4llvh11SmallVectorIDsLj5EEEEvPT_.exit.i.i.13
  %.05.i.i.ptr.15 = getelementptr inbounds nuw i8, ptr %i.h, i64 480
  %i.bb = load ptr, ptr %.05.i.i.ptr.15, align 8, !tbaa !224 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.h, i64 496
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZSt8_DestroyIN4llvh11SmallVectorIDsLj5EEEEvPT_.exit.i.i.15, label %bb.q

bb.q:                                             ; preds = %_ZSt8_DestroyIN4llvh11SmallVectorIDsLj5EEEEvPT_.exit.i.i.14
  tail call void @free(ptr noundef %i.bb) #19
  br label %_ZSt8_DestroyIN4llvh11SmallVectorIDsLj5EEEEvPT_.exit.i.i.15

_ZSt8_DestroyIN4llvh11SmallVectorIDsLj5EEEEvPT_.exit.i.i.15: ; preds = %bb.q, %_ZSt8_DestroyIN4llvh11SmallVectorIDsLj5EEEEvPT_.exit.i.i.14
  %.0 = getelementptr inbounds nuw i8, ptr %.025, i64 8 ; 2 uses
  %i.be = load ptr, ptr %i.c, align 8, !tbaa !200 ; 2 uses
  %i.bf = icmp ult ptr %.0, %i.be
  br i1 %i.bf, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !344

bb.r:                                             ; preds = %._crit_edge
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !202 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.g, %i.bh
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4llvh11SmallVectorIDsLj5EEEEvT_S4_.exit10, label %.lr.ph.i.i6

.lr.ph.i.i6:                                      ; preds = %bb.r, %_ZSt8_DestroyIN4llvh11SmallVectorIDsLj5EEEEvPT_.exit.i.i8
  %.05.i.i7 = phi ptr [ %i.bl, %_ZSt8_DestroyIN4llvh11SmallVectorIDsLj5EEEEvPT_.exit.i.i8 ], [ %i.g, %bb.r ] ; 3 uses
  %i.bi = load ptr, ptr %.05.i.i7, align 8, !tbaa !224 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.05.i.i7, i64 16
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZSt8_DestroyIN4llvh11SmallVectorIDsLj5EEEEvPT_.exit.i.i8, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i6
  tail call void @free(ptr noundef %i.bi) #19
  br label %_ZSt8_DestroyIN4llvh11SmallVectorIDsLj5EEEEvPT_.exit.i.i8

_ZSt8_DestroyIN4llvh11SmallVectorIDsLj5EEEEvPT_.exit.i.i8: ; preds = %bb.s, %.lr.ph.i.i6
  %i.bl = getelementptr inbounds nuw i8, ptr %.05.i.i7, i64 32 ; 2 uses
  %.not.i.i9 = icmp eq ptr %i.bl, %i.bh
  br i1 %.not.i.i9, label %_ZSt8_DestroyIPN4llvh11SmallVectorIDsLj5EEEEvT_S4_.exit10, label %.lr.ph.i.i6, !llvm.loop !345

_ZSt8_DestroyIPN4llvh11SmallVectorIDsLj5EEEEvT_S4_.exit10: ; preds = %_ZSt8_DestroyIN4llvh11SmallVectorIDsLj5EEEEvPT_.exit.i.i8, %bb.r
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !201 ; 2 uses
  %i.bo = load ptr, ptr %2, align 8, !tbaa !300   ; 2 uses
  %.not4.i.i11 = icmp eq ptr %i.bn, %i.bo
  br i1 %.not4.i.i11, label %_ZSt8_DestroyIPN4llvh11SmallVectorIDsLj5EEEEvT_S4_.exit16, label %.lr.ph.i.i12

.lr.ph.i.i12:                                     ; preds = %_ZSt8_DestroyIPN4llvh11SmallVectorIDsLj5EEEEvT_S4_.exit10, %_ZSt8_DestroyIN4llvh11SmallVectorIDsLj5EEEEvPT_.exit.i.i14
  %.05.i.i13 = phi ptr [ %i.bs, %_ZSt8_DestroyIN4llvh11SmallVectorIDsLj5EEEEvPT_.exit.i.i14 ], [ %i.bn, %_ZSt8_DestroyIPN4llvh11SmallVectorIDsLj5EEEEvT_S4_.exit10 ] ; 3 uses
  %i.bp = load ptr, ptr %.05.i.i13, align 8, !tbaa !224 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.05.i.i13, i64 16
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZSt8_DestroyIN4llvh11SmallVectorIDsLj5EEEEvPT_.exit.i.i14, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i12
  tail call void @free(ptr noundef %i.bp) #19
  br label %_ZSt8_DestroyIN4llvh11SmallVectorIDsLj5EEEEvPT_.exit.i.i14

_ZSt8_DestroyIN4llvh11SmallVectorIDsLj5EEEEvPT_.exit.i.i14: ; preds = %bb.t, %.lr.ph.i.i12
  %i.bs = getelementptr inbounds nuw i8, ptr %.05.i.i13, i64 32 ; 2 uses
  %.not.i.i15 = icmp eq ptr %i.bs, %i.bo
  br i1 %.not.i.i15, label %_ZSt8_DestroyIPN4llvh11SmallVectorIDsLj5EEEEvT_S4_.exit16, label %.lr.ph.i.i12, !llvm.loop !345

bb.u:                                             ; preds = %._crit_edge
  %i.bt = load ptr, ptr %2, align 8, !tbaa !300   ; 2 uses
  %.not4.i.i17 = icmp eq ptr %i.g, %i.bt
  br i1 %.not4.i.i17, label %_ZSt8_DestroyIPN4llvh11SmallVectorIDsLj5EEEEvT_S4_.exit16, label %.lr.ph.i.i18

.lr.ph.i.i18:                                     ; preds = %bb.u, %_ZSt8_DestroyIN4llvh11SmallVectorIDsLj5EEEEvPT_.exit.i.i20
  %.05.i.i19 = phi ptr [ %i.bx, %_ZSt8_DestroyIN4llvh11SmallVectorIDsLj5EEEEvPT_.exit.i.i20 ], [ %i.g, %bb.u ] ; 3 uses
  %i.bu = load ptr, ptr %.05.i.i19, align 8, !tbaa !224 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.05.i.i19, i64 16
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZSt8_DestroyIN4llvh11SmallVectorIDsLj5EEEEvPT_.exit.i.i20, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i18
  tail call void @free(ptr noundef %i.bu) #19
  br label %_ZSt8_DestroyIN4llvh11SmallVectorIDsLj5EEEEvPT_.exit.i.i20

_ZSt8_DestroyIN4llvh11SmallVectorIDsLj5EEEEvPT_.exit.i.i20: ; preds = %bb.v, %.lr.ph.i.i18
  %i.bx = getelementptr inbounds nuw i8, ptr %.05.i.i19, i64 32 ; 2 uses
  %.not.i.i21 = icmp eq ptr %i.bx, %i.bt
  br i1 %.not.i.i21, label %_ZSt8_DestroyIPN4llvh11SmallVectorIDsLj5EEEEvT_S4_.exit16, label %.lr.ph.i.i18, !llvm.loop !345

_ZSt8_DestroyIPN4llvh11SmallVectorIDsLj5EEEEvT_S4_.exit16: ; preds = %_ZSt8_DestroyIN4llvh11SmallVectorIDsLj5EEEEvPT_.exit.i.i14, %_ZSt8_DestroyIN4llvh11SmallVectorIDsLj5EEEEvPT_.exit.i.i20, %bb.u, %_ZSt8_DestroyIPN4llvh11SmallVectorIDsLj5EEEEvT_S4_.exit10
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvh12DenseMapInfoINS_8ArrayRefIDsEEE7isEqualES2_S2_(ptr %0, i64 %1, ptr %2, i64 %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %magicptr = ptrtoint ptr %2 to i64
  switch i64 %magicptr, label %bb.d [
    i64 -1, label %bb.b
    i64 -2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq ptr %0, inttoptr (i64 -1 to ptr)
  br label %_ZN4llvheqIDsEEbNS_8ArrayRefIT_EES3_.exit

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %0, inttoptr (i64 -2 to ptr)
  br label %_ZN4llvheqIDsEEbNS_8ArrayRefIT_EES3_.exit

bb.d:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i64 %1, %3
  br i1 %.not.i.i, label %bb.e, label %_ZN4llvheqIDsEEbNS_8ArrayRefIT_EES3_.exit

bb.e:                                             ; preds = %bb.d
  %.not.not.i.i.i.i.i.i = icmp eq i64 %1, 0
  br i1 %.not.not.i.i.i.i.i.i, label %_ZN4llvheqIDsEEbNS_8ArrayRefIT_EES3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.idx.i.i = shl nuw nsw i64 %1, 1
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %0, ptr %2, i64 %.idx.i.i)
  %.not9.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br label %_ZN4llvheqIDsEEbNS_8ArrayRefIT_EES3_.exit

_ZN4llvheqIDsEEbNS_8ArrayRefIT_EES3_.exit:        ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ %i.b, %bb.c ], [ false, %bb.d ], [ %.not9.i.i.i.i.i.i, %bb.f ], [ true, %bb.e ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EE15_M_move_assign1EOS4_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %3 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %.sroa.0.i.i.sroa.0.0.copyload = load <16 x i8>, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !300  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !201  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !202  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !200  ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !300  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !201  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !202  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !200  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false), !tbaa.struct !205
  store <16 x i8> %.sroa.0.i.i.sroa.0.0.copyload, ptr %1, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.b, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !199
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.d, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !199
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.f, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !199
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !tbaa !206
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  store ptr %i.j, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !tbaa !199
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  store ptr %i.l, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !tbaa !199
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  store ptr %i.n, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !tbaa !199
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  store ptr %i.p, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !tbaa !206
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %i.b, ptr %2, align 8, !tbaa !300
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.d, ptr %i.q, align 8, !tbaa !201
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.f, ptr %i.r, align 8, !tbaa !202
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.h, ptr %i.s, align 8, !tbaa !200
  store ptr %i.j, ptr %3, align 8, !tbaa !300
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.l, ptr %i.t, align 8, !tbaa !201
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.n, ptr %i.u, align 8, !tbaa !202
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.p, ptr %i.v, align 8, !tbaa !200
  call void @_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EE19_M_destroy_data_auxESt15_Deque_iteratorIS2_RS2_PS2_ES8_(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull dead_on_return %2, ptr noundef nonnull dead_on_return %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.w = load ptr, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !tbaa !222 ; 2 uses
  %i.x = icmp ult ptr %i.h, %i.w
  br i1 %i.x, label %.lr.ph.i.i.i, label %_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EE5clearEv.exit

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.pn.i.i = phi ptr [ %.06.i.i.i, %.lr.ph.i.i.i ], [ %i.h, %bb.a ]
  %.06.i.i.i = getelementptr inbounds nuw i8, ptr %.06.i.pn.i.i, i64 8 ; 3 uses
  %i.y = load ptr, ptr %.06.i.i.i, align 8, !tbaa !199
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef 512) #22
  %i.z = icmp ult ptr %.06.i.i.i, %i.w
  br i1 %i.z, label %.lr.ph.i.i.i, label %_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EE5clearEv.exit, !llvm.loop !223

_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EE5clearEv.exit: ; preds = %.lr.ph.i.i.i, %bb.a
  store ptr %i.b, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !tbaa !199
  store ptr %i.d, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !tbaa !199
  store ptr %i.f, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !tbaa !199
  store ptr %i.h, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !tbaa !206
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt20back_insert_iteratorIN4llvh11SmallVectorIDsLj16EEEEaSEODs(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !229    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !226  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !227
  %.not.i = icmp ult i32 %i.c, %i.e
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit, label %bb.b, !prof !228

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %i.f, i64 noundef 0, i64 noundef 2) #19
  %.pre.i = load i32, ptr %i.b, align 8, !tbaa !226
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i32 [ %.pre.i, %bb.b ], [ %i.c, %bb.a ]
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !224
  %i.i = zext i32 %i.g to i64
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.i
  %i.k = load i16, ptr %1, align 2
  store i16 %i.k, ptr %i.j, align 1
  %i.l = load i32, ptr %i.b, align 8, !tbaa !226
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.b, align 8, !tbaa !226
  ret ptr %0
}

declare void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes19_decodeUTF8SlowPathILb1EZNS_32convertUTF8WithSurrogatesToUTF16ISt20back_insert_iteratorIN4llvh11SmallVectorIDsLj16EEEEEET_S7_PKcS9_EUlRKNS3_5TwineEE_EEjRS9_T0_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat {
bb.a:
  %1 = alloca %"class.llvh::Twine", align 8       ; 2 uses
  %2 = alloca %"class.llvh::Twine", align 8       ; 5 uses
  %3 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %i.a = alloca i64, align 8                      ; 3 uses
  %4 = alloca %"class.llvh::Twine", align 8       ; 2 uses
  %5 = alloca %"class.llvh::Twine", align 8       ; 5 uses
  %6 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !184    ; 10 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !19    ; 2 uses
  %i.e = sext i8 %i.d to i32                      ; 6 uses
  %i.f = and i32 %i.e, 224
  %i.g = icmp eq i32 %i.f, 192
  br i1 %i.g, label %bb.b, label %bb.c, !prof !228

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !19
  %i.j = zext i8 %i.i to i32                      ; 2 uses
  %i.k = and i32 %i.j, 192
  %.not77 = icmp eq i32 %i.k, 128
  tail call void @llvm.assume(i1 %.not77)
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store ptr %i.l, ptr %0, align 8, !tbaa !184
  %i.m = shl nsw i32 %i.e, 6
  %i.n = and i32 %i.m, 1984
  %i.o = and i32 %i.j, 63
  %i.p = or disjoint i32 %i.o, %i.n
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.q = and i32 %i.e, 240
  %i.r = icmp eq i32 %i.q, 224
  br i1 %i.r, label %bb.d, label %bb.e, !prof !228

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !19    ; 2 uses
  %.not75 = icmp slt i8 %i.t, -64
  tail call void @llvm.assume(i1 %.not75)
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.v = load i8, ptr %i.u, align 1, !tbaa !19    ; 2 uses
  %.not76 = icmp slt i8 %i.v, -64
  tail call void @llvm.assume(i1 %.not76)
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  store ptr %i.w, ptr %0, align 8, !tbaa !184
  %i.x = shl nsw i32 %i.e, 12
  %i.y = and i32 %i.x, 61440
  %i.z = and i8 %i.t, 63
  %i.aa = zext nneg i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 6
  %i.ac = or disjoint i32 %i.ab, %i.y
  %i.ad = and i8 %i.v, 63
  %i.ae = zext nneg i8 %i.ad to i32
  %i.af = or disjoint i32 %i.ac, %i.ae
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.ag = and i32 %i.e, 248
  %i.ah = icmp eq i32 %i.ag, 240
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  br i1 %i.ah, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !19  ; 2 uses
  %.not = icmp slt i8 %i.aj, -64
  tail call void @llvm.assume(i1 %.not)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !19  ; 2 uses
  %.not73 = icmp slt i8 %i.al, -64
  tail call void @llvm.assume(i1 %.not73)
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.an = load i8, ptr %i.am, align 1, !tbaa !19  ; 2 uses
  %.not74 = icmp slt i8 %i.an, -64
  tail call void @llvm.assume(i1 %.not74)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store ptr %i.ao, ptr %0, align 8, !tbaa !184
  %i.ap = shl nsw i32 %i.e, 18
  %i.aq = and i32 %i.ap, 1835008
  %i.ar = and i8 %i.aj, 63
  %i.as = zext nneg i8 %i.ar to i32
  %i.at = shl nuw nsw i32 %i.as, 12
  %i.au = or disjoint i32 %i.at, %i.aq            ; 3 uses
  %i.av = and i8 %i.al, 63
  %i.aw = zext nneg i8 %i.av to i32
  %i.ax = shl nuw nsw i32 %i.aw, 6
  %i.ay = and i8 %i.an, 63
  %i.az = zext nneg i8 %i.ay to i32
  %i.ba = or disjoint i32 %i.ax, %i.az
  %i.bb = or disjoint i32 %i.ba, %i.au            ; 2 uses
  %i.bc = icmp samesign ugt i32 %i.au, 65535
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = icmp samesign ugt i32 %i.au, 1114111
  br i1 %i.bd, label %bb.g, label %.thread, !prof !211

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 17
  store i8 1, ptr %i.bf, align 1, !tbaa !346
  store ptr @.str.94, ptr %2, align 8, !tbaa !19
  store i8 3, ptr %i.be, align 8, !tbaa !349
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.bg = zext nneg i32 %i.bb to i64
  store i64 %i.bg, ptr %i.a, align 8, !tbaa !207
  store ptr %i.a, ptr %3, align 8, !tbaa !19, !alias.scope !350
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.bh, align 8, !tbaa !19, !alias.scope !350
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 15, ptr %i.bi, align 8, !tbaa !349, !alias.scope !350
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 1, ptr %i.bj, align 1, !tbaa !346, !alias.scope !350
  call void @_ZN4llvhplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvh::Twine") align 8 %1, ptr noundef nonnull align 8 dereferenceable(18) %2, ptr noundef nonnull align 8 dereferenceable(18) %3)
  unreachable

bb.h:                                             ; preds = %bb.e
  store ptr %i.ai, ptr %0, align 8, !tbaa !184
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 1, ptr %i.bl, align 1, !tbaa !346
  store ptr @.str.95, ptr %5, align 8, !tbaa !19
  store i8 3, ptr %i.bk, align 8, !tbaa !349
end_hunk_1
