Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/inventory?download=true
inline.NumInlined: 1939
inline.NumDeleted: 730
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK9ItemStack15getWieldOverlayEPK15IItemDefManager:bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i10
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !18
  %i.aq = load ptr, ptr %3, align 8, !tbaa !15
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ao
  store i8 0, ptr %i.ar, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.as = load ptr, ptr %4, align 8, !tbaa !15    ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.w
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.au = load i64, ptr %i.w, align 8, !tbaa !20
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.aw = load i64, ptr %i.ap, align 8, !tbaa !18
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %_ZN12ItemImageDefaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN12ItemImageDefaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.i

bb.h:                                             ; preds = %.noexc.i11, %_ZN12ItemImageDefC2ERKS_.exit
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = load ptr, ptr %4, align 8, !tbaa !15    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.w
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.h
  %i.bb = load i64, ptr %i.w, align 8, !tbaa !20
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

bb.i:                                             ; preds = %bb.g
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.af
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.i
  %i.bg = load i64, ptr %i.af, align 8, !tbaa !20
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZN12ItemImageDefaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bi = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.af
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %_ZN12ItemImageDefaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bk = load i64, ptr %i.af, align 8, !tbaa !20
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %_ZN12ItemImageDefaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
  %.pn7 = phi { ptr, i32 } [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16 ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ], [ %i.bd, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.bm = load ptr, ptr %0, align 8, !tbaa !15    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.h
  br i1 %i.bn, label %_ZN12ItemImageDefD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %i.bo = load i64, ptr %i.h, align 8, !tbaa !20
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #26
  br label %_ZN12ItemImageDefD2Ev.exit

_ZN12ItemImageDefD2Ev.exit:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %.pn7
}

; Function Attrs: mustprogress uwtable
define dso_local { <2 x float>, float } @_ZNK9ItemStack13getWieldScaleEPK15IItemDefManager(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef %1) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.b, ptr noundef nonnull align 1 dereferenceable(11) @.str.25, i64 11, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 11, ptr %i.c, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 27
  store i8 0, ptr %i.d, align 1, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !9
  %i.g = getelementptr i8, ptr %i.f, i64 -80
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 %i.h
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK9IMetadata9getStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_t(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef null, i16 noundef zeroext 0)
          to label %_ZNK14SimpleMetadata9getStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEt.exit unwind label %bb.e ; 2 uses

_ZNK14SimpleMetadata9getStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEt.exit: ; preds = %._crit_edge.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.k, ptr %2, align 8, !tbaa !11
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !15   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !18   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.n, ptr %i.a, align 8, !tbaa !19
  %i.o = icmp ugt i64 %i.n, 15
  br i1 %i.o, label %.noexc.i16, label %._crit_edge.i.i15

.noexc.i16:                                       ; preds = %_ZNK14SimpleMetadata9getStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEt.exit
  %i.p = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc17 unwind label %bb.e   ; 2 uses

.noexc17:                                         ; preds = %.noexc.i16
  store ptr %i.p, ptr %2, align 8, !tbaa !15
  %i.q = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.q, ptr %i.k, align 8, !tbaa !20
  br label %._crit_edge.i.i15

._crit_edge.i.i15:                                ; preds = %.noexc17, %_ZNK14SimpleMetadata9getStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEt.exit
  %i.r = phi ptr [ %i.p, %.noexc17 ], [ %i.k, %_ZNK14SimpleMetadata9getStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEt.exit ] ; 2 uses
  switch i64 %i.n, label %bb.b [
    i64 1, label %bb.a
    i64 0, label %bb.c
  ]

bb.a:                                             ; preds = %._crit_edge.i.i15
  %i.s = load i8, ptr %i.l, align 1, !tbaa !20
  store i8 %i.s, ptr %i.r, align 1, !tbaa !20
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %i.l, i64 %i.n, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %._crit_edge.i.i15
  %i.t = load i64, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.t, ptr %i.u, align 8, !tbaa !18
  %i.v = load ptr, ptr %2, align 8, !tbaa !15
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store i8 0, ptr %i.w, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.x = load ptr, ptr %3, align 8, !tbaa !15     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.b
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.z = load i64, ptr %i.b, align 8, !tbaa !20
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.ab = load ptr, ptr %2, align 8, !tbaa !15
  %i.ac = load i64, ptr %i.u, align 8, !tbaa !18
  %i.ad = invoke { <2 x float>, i64 } @_Z10str_to_v3fSt17basic_string_viewIcSt11char_traitsIcEE(i64 %i.ac, ptr %i.ab)
          to label %bb.d unwind label %bb.f       ; 2 uses

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ae = load ptr, ptr %1, align 8, !tbaa !9
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = invoke noundef nonnull align 8 dereferenceable(982) ptr %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(296) %0)
          to label %_ZNK9ItemStack13getDefinitionEPK15IItemDefManager.exit unwind label %bb.f, !inline_history !114 ; 2 uses

_ZNK9ItemStack13getDefinitionEPK15IItemDefManager.exit: ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 332
  %.sroa.gep30 = getelementptr inbounds nuw i8, ptr %i.ah, i64 340
  %.sroa.3.0.i.else.val = load float, ptr %.sroa.gep30, align 4
  %.val = load <2 x float>, ptr %i.ai, align 4
  %i.aj = load ptr, ptr %2, align 8, !tbaa !15    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.k
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %_ZNK9ItemStack13getDefinitionEPK15IItemDefManager.exit
  %i.al = load i64, ptr %i.k, align 8, !tbaa !20
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %_ZNK9ItemStack13getDefinitionEPK15IItemDefManager.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  %i.an = extractvalue { <2 x float>, i64 } %i.ad, 1 ; 2 uses
  %i.ao = and i64 %i.an, 4294967296
  %.not = icmp eq i64 %i.ao, 0                    ; 2 uses
  %4 = extractvalue { <2 x float>, i64 } %i.ad, 0
  %.sroa.02.0.i = select i1 %.not, <2 x float> %.val, <2 x float> %4
  %.fca.0.insert.i19 = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.02.0.i, 0
  %.sroa.5.sroa.0.0.extract.trunc = trunc i64 %i.an to i32
  %i.ap = bitcast i32 %.sroa.5.sroa.0.0.extract.trunc to float
  %.sroa.3.0.i = select i1 %.not, float %.sroa.3.0.i.else.val, float %i.ap
  %.fca.1.insert.i20 = insertvalue { <2 x float>, float } %.fca.0.insert.i19, float %.sroa.3.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret { <2 x float>, float } %.fca.1.insert.i20

bb.e:                                             ; preds = %.noexc.i16, %._crit_edge.i.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.b
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.e
  %i.at = load i64, ptr %i.b, align 8, !tbaa !20
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

bb.f:                                             ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aw = load ptr, ptr %2, align 8, !tbaa !15    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.k
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.f
  %i.ay = load i64, ptr %i.k, align 8, !tbaa !20
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %.pn12 = phi { ptr, i32 } [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ], [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %i.av, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn12
}

declare { <2 x float>, i64 } @_Z10str_to_v3fSt17basic_string_viewIcSt11char_traitsIcEE(i64, ptr) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i16 @_ZNK9ItemStack11getStackMaxEPK15IItemDefManager(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(982) ptr %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 344
  %i.f = load i16, ptr %i.e, align 8, !tbaa !117
  ret i16 %i.f
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK9ItemStack7isKnownEPK15IItemDefManager(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %0)
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(112) ptr @_ZNK9ItemStack19getToolCapabilitiesEPK15IItemDefManagerPKS_(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.c = load i8, ptr %i.b, align 8, !tbaa !50, !range !118, !noundef !119
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_ZNKRSt8optionalI16ToolCapabilitiesE5valueEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(982) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 584
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !120  ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.c, label %_ZNKRSt8optionalI16ToolCapabilitiesE5valueEv.exit

bb.c:                                             ; preds = %bb.b
  %.not25 = icmp eq ptr %2, null
  br i1 %.not25, label %._crit_edge.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.m = load i8, ptr %i.l, align 8, !tbaa !50, !range !118, !noundef !119
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %_ZNKRSt8optionalI16ToolCapabilitiesE5valueEv.exit, label %_ZNKRSt8optionalI16ToolCapabilitiesE5valueEv.exit29

_ZNKRSt8optionalI16ToolCapabilitiesE5valueEv.exit29: ; preds = %bb.d
  %i.o = load ptr, ptr %1, align 8, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef nonnull align 8 dereferenceable(982) ptr %i.q(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 584
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !120  ; 2 uses
  %.not26 = icmp eq ptr %i.t, null
  br i1 %.not26, label %._crit_edge.i.i, label %_ZNKRSt8optionalI16ToolCapabilitiesE5valueEv.exit

._crit_edge.i.i:                                  ; preds = %_ZNKRSt8optionalI16ToolCapabilitiesE5valueEv.exit29, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.u, ptr %3, align 8, !tbaa !11
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.v, align 8, !tbaa !18
  store i8 0, ptr %i.u, align 8, !tbaa !20
  %i.w = load ptr, ptr %1, align 8, !tbaa !9
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = invoke noundef nonnull align 8 dereferenceable(982) ptr %i.y(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 584
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !120
  %i.ac = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.u
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.ae = load i64, ptr %i.u, align 8, !tbaa !20
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %_ZNKRSt8optionalI16ToolCapabilitiesE5valueEv.exit

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.u
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.f
  %i.aj = load i64, ptr %i.u, align 8, !tbaa !20
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.ag

_ZNKRSt8optionalI16ToolCapabilitiesE5valueEv.exit: ; preds = %bb.d, %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKRSt8optionalI16ToolCapabilitiesE5valueEv.exit29, %bb.b
  %.2 = phi ptr [ %i.j, %bb.b ], [ %i.t, %_ZNKRSt8optionalI16ToolCapabilitiesE5valueEv.exit29 ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.a, %bb.a ], [ %i.k, %bb.d ]
  ret ptr %.2
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZNK9ItemStack16getWearBarParamsEPK15IItemDefManager(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.c = load i8, ptr %i.b, align 8, !tbaa !51, !range !118, !noundef !119
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(982) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 592
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.i, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN9ItemStack7addWearEiPK15IItemDefManager(ptr noundef nonnull align 8 dereferenceable(296) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(982) ptr %i.c(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(296) %0), !inline_history !114
  %i.e = load i8, ptr %i.d, align 8, !tbaa !52
  %i.f = icmp eq i8 %i.e, 3                       ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 34 ; 4 uses
end_hunk_0
