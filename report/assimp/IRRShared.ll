Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/IRRShared?download=true
inline.NumInlined: 400
inline.NumDeleted: 127
begin_hunk_0_@_Z18ConvertMappingModeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3, %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %.0 = phi i32 [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %spec.select, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3 ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #20
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8
  %bcmp = tail call i32 @bcmp(ptr %i.f, ptr nonnull %1, i64 %i.b)
  %i.g = icmp eq i32 %bcmp, 0
  br label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit:       ; preds = %bb.c, %bb.b, %bb.a
  %i.h = phi i1 [ false, %bb.a ], [ %i.g, %bb.c ], [ true, %bb.b ]
  ret i1 %i.h
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull ptr @_ZN6Assimp12IrrlichtBase13ParseMaterialERN4pugi8xml_nodeERj(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.aiColor4t, align 16          ; 6 uses
  %4 = alloca %struct.aiString, align 4           ; 15 uses
  %5 = alloca %"class.pugi::xml_object_range.9", align 16 ; 6 uses
  %6 = alloca %"class.pugi::xml_node_iterator", align 16 ; 8 uses
  %7 = alloca %"class.pugi::xml_node_iterator", align 16 ; 6 uses
  %8 = alloca %"class.pugi::xml_node", align 8    ; 13 uses
  %9 = alloca %"struct.Assimp::IrrlichtBase::Property", align 8 ; 12 uses
  %10 = alloca %"struct.Assimp::IrrlichtBase::Property.5", align 8 ; 11 uses
  %11 = alloca %"struct.Assimp::IrrlichtBase::Property.3", align 8 ; 13 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %12 = alloca %"struct.Assimp::IrrlichtBase::Property.2", align 8 ; 15 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca i32, align 4                      ; 6 uses
  %i.h = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24 ; 23 uses
  invoke void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %4, i8 0, i64 1028, i1 false)
  store i32 0, ptr %2, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @_ZNK4pugi8xml_node8childrenEv(ptr dead_on_unwind nonnull writable sret(%"class.pugi::xml_object_range.9") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.i = load <2 x ptr>, ptr %5, align 16
  store <2 x ptr> %i.i, ptr %6, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.k = load <2 x ptr>, ptr %i.j, align 16
  store <2 x ptr> %i.k, ptr %7, align 16
  %i.l = call noundef zeroext i1 @_ZNK4pugi17xml_node_iteratorneERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 27 uses
  %i.p = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 12 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 10 uses
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 32
  br label %bb.d

._crit_edge:                                      ; preds = %bb.ca, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret ptr %i.h

bb.c:                                             ; preds = %bb.a
  %i.ab = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 16) #23
  br label %bb.cc

bb.d:                                             ; preds = %.lr.ph, %bb.ca
  %.0290 = phi i32 [ 0, %.lr.ph ], [ %.3, %bb.ca ] ; 15 uses
  %.086289 = phi i32 [ 0, %.lr.ph ], [ %.389, %bb.ca ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.ac = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4pugi17xml_node_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(16) %6)
  %i.ad = load i64, ptr %i.ac, align 8
  store i64 %i.ad, ptr %8, align 8
  %i.ae = call noundef ptr @_ZNK4pugi8xml_node4nameEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.06.i = phi ptr [ %i.ae, %bb.d ], [ %i.af, %bb.e ] ; 2 uses
  %.0.i = phi ptr [ @.str.6, %bb.d ], [ %i.aj, %bb.e ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.06.i, i64 1
  %i.ag = load i8, ptr %.06.i, align 1
  %i.ah = zext i8 %i.ag to i32
  %i.ai = call i32 @tolower(i32 noundef %i.ah) #21 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  %i.ak = load i8, ptr %.0.i, align 1
  %i.al = zext i8 %i.ak to i32
  %i.am = call i32 @tolower(i32 noundef %i.al) #21
  %i.an = and i32 %i.ai, 255
  %i.ao = icmp ne i32 %i.an, 0
  %.unshifted = xor i32 %i.ai, %i.am
  %.mask = and i32 %.unshifted, 255
  %i.ap = icmp eq i32 %.mask, 0                   ; 2 uses
  %i.aq = select i1 %i.ao, i1 %i.ap, i1 false
  br i1 %i.aq, label %bb.e, label %_ZN6Assimp14ASSIMP_stricmpEPKcS1_.exit, !llvm.loop !0

_ZN6Assimp14ASSIMP_stricmpEPKcS1_.exit:           ; preds = %bb.e
  br i1 %i.ap, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZN6Assimp14ASSIMP_stricmpEPKcS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  store ptr %i.y, ptr %9, align 8
  store i64 0, ptr %i.z, align 8
  store i8 0, ptr %i.y, align 8
  invoke void @_ZN6Assimp12IrrlichtBase15ReadHexPropertyERNS0_8PropertyIjEERN4pugi8xml_nodeE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ar = load i64, ptr %i.z, align 8             ; 2 uses
  switch i64 %i.ar, label %_ZN10aiMaterial11AddPropertyEPK9aiColor4tIfEjPKcjj.exit [
    i64 7, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 8, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit123
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.g
  %i.as = load ptr, ptr %9, align 8               ; 4 uses
  %i.at = load i32, ptr %i.as, align 1
  %i.au = xor i32 %i.at, 1717987652
  %i.av = getelementptr i8, ptr %i.as, i64 3
  %i.aw = load i32, ptr %i.av, align 1
  %i.ax = xor i32 %i.aw, 1702065510
  %i.ay = or i32 %i.au, %i.ax
  %i.az = icmp ne i32 %i.ay, 0
  %i.ba = zext i1 %i.az to i32
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit123.thread.invoke, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit120

bb.h:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit123.thread.invoke, %bb.f
  %i.bc = landingpad { ptr, i32 }
          cleanup
  %i.bd = load ptr, ptr %9, align 8               ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.y
  br i1 %i.be, label %_ZN6Assimp12IrrlichtBase8PropertyIjED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  %i.bf = load i64, ptr %i.y, align 8
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #23
  br label %_ZN6Assimp12IrrlichtBase8PropertyIjED2Ev.exit

_ZN6Assimp12IrrlichtBase8PropertyIjED2Ev.exit:    ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.cb

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit120: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.bh = load i32, ptr %i.as, align 1
  %i.bi = xor i32 %i.bh, 1768058177
  %i.bj = getelementptr i8, ptr %i.as, i64 3
  %i.bk = load i32, ptr %i.bj, align 1
  %i.bl = xor i32 %i.bk, 1953391977
  %i.bm = or i32 %i.bi, %i.bl
  %i.bn = icmp ne i32 %i.bm, 0
  %i.bo = zext i1 %i.bn to i32
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit123.thread.invoke, label %_ZN10aiMaterial11AddPropertyEPK9aiColor4tIfEjPKcjj.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit123: ; preds = %bb.g
  %.pre308 = load ptr, ptr %9, align 8
  %bcmp.i122 = call i32 @bcmp(ptr %.pre308, ptr nonnull @.str.11, i64 %i.ar)
  %i.bq = icmp eq i32 %bcmp.i122, 0
  br i1 %i.bq, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit123.thread.invoke, label %_ZN10aiMaterial11AddPropertyEPK9aiColor4tIfEjPKcjj.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit123.thread.invoke: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit123, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit120, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.br = phi ptr [ @.str.10, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit120 ], [ @.str.8, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ @.str.12, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit123 ]
  %13 = load <4 x i8>, ptr %i.aa, align 8
  %14 = shufflevector <4 x i8> %13, <4 x i8> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %i.bs = uitofp <4 x i8> %14 to <4 x float>
  %i.bt = fdiv <4 x float> %i.bs, splat (float 2.550000e+02)
  store <4 x float> %i.bt, ptr %3, align 16
  %i.bu = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull %3, i32 noundef 16, ptr noundef nonnull %i.br, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZN10aiMaterial11AddPropertyEPK9aiColor4tIfEjPKcjj.exit unwind label %bb.h ; 0 uses

_ZN10aiMaterial11AddPropertyEPK9aiColor4tIfEjPKcjj.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit123.thread.invoke, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit120, %bb.g, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit123
  %i.bv = load ptr, ptr %9, align 8               ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.y
  br i1 %i.bw, label %_ZN6Assimp12IrrlichtBase8PropertyIjED2Ev.exit127, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i125

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i125: ; preds = %_ZN10aiMaterial11AddPropertyEPK9aiColor4tIfEjPKcjj.exit
  %i.bx = load i64, ptr %i.y, align 8
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #23
  br label %_ZN6Assimp12IrrlichtBase8PropertyIjED2Ev.exit127

_ZN6Assimp12IrrlichtBase8PropertyIjED2Ev.exit127: ; preds = %_ZN10aiMaterial11AddPropertyEPK9aiColor4tIfEjPKcjj.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i125
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.ca

bb.i:                                             ; preds = %_ZN6Assimp14ASSIMP_stricmpEPKcS1_.exit
  %i.bz = call noundef ptr @_ZNK4pugi8xml_node4nameEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.06.i128 = phi ptr [ %i.bz, %bb.i ], [ %i.ca, %bb.j ] ; 2 uses
  %.0.i129 = phi ptr [ @.str.13, %bb.i ], [ %i.ce, %bb.j ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.06.i128, i64 1
  %i.cb = load i8, ptr %.06.i128, align 1
  %i.cc = zext i8 %i.cb to i32
  %i.cd = call i32 @tolower(i32 noundef %i.cc) #21 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.i129, i64 1
  %i.cf = load i8, ptr %.0.i129, align 1
  %i.cg = zext i8 %i.cf to i32
  %i.ch = call i32 @tolower(i32 noundef %i.cg) #21
  %i.ci = and i32 %i.cd, 255
  %i.cj = icmp ne i32 %i.ci, 0
  %.unshifted332 = xor i32 %i.cd, %i.ch
  %.mask333 = and i32 %.unshifted332, 255
  %i.ck = icmp eq i32 %.mask333, 0                ; 2 uses
  %i.cl = select i1 %i.cj, i1 %i.ck, i1 false
  br i1 %i.cl, label %bb.j, label %_ZN6Assimp14ASSIMP_stricmpEPKcS1_.exit132, !llvm.loop !0

_ZN6Assimp14ASSIMP_stricmpEPKcS1_.exit132:        ; preds = %bb.j
  br i1 %i.ck, label %bb.k, label %bb.n

bb.k:                                             ; preds = %_ZN6Assimp14ASSIMP_stricmpEPKcS1_.exit132
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  store ptr %i.v, ptr %10, align 8
  store i64 0, ptr %i.w, align 8
  store i8 0, ptr %i.v, align 8
  invoke void @_ZN6Assimp12IrrlichtBase17ReadFloatPropertyERNS0_8PropertyIfEERN4pugi8xml_nodeE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(36) %10, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cm = load i64, ptr %i.w, align 8
  %i.cn = icmp eq i64 %i.cm, 9
  %.pre307 = load ptr, ptr %10, align 8           ; 4 uses
  br i1 %i.cn, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit134, label %_ZN10aiMaterial11AddPropertyEPKfjPKcjj.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit134: ; preds = %bb.l
  %i.co = load i64, ptr %.pre307, align 1
  %i.cp = xor i64 %i.co, 8315173686112512083
  %i.cq = getelementptr i8, ptr %.pre307, i64 8
  %i.cr = load i8, ptr %i.cq, align 1
  %i.cs = zext i8 %i.cr to i64
  %i.ct = xor i64 %i.cs, 115
  %i.cu = or i64 %i.cp, %i.ct
  %i.cv = icmp ne i64 %i.cu, 0
  %i.cw = zext i1 %i.cv to i32
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit134.thread, label %_ZN10aiMaterial11AddPropertyEPKfjPKcjj.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit134.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit134
  %i.cy = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull %i.x, i32 noundef 4, ptr noundef nonnull @.str.15, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit134.thread._ZN10aiMaterial11AddPropertyEPKfjPKcjj.exit_crit_edge unwind label %bb.m ; 0 uses

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit134.thread._ZN10aiMaterial11AddPropertyEPKfjPKcjj.exit_crit_edge: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit134.thread
  %.pre306 = load ptr, ptr %10, align 8
  br label %_ZN10aiMaterial11AddPropertyEPKfjPKcjj.exit

bb.m:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit134.thread, %bb.k
  %i.cz = landingpad { ptr, i32 }
          cleanup
  %i.da = load ptr, ptr %10, align 8              ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.v
  br i1 %i.db, label %_ZN6Assimp12IrrlichtBase8PropertyIfED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i135: ; preds = %bb.m
  %i.dc = load i64, ptr %i.v, align 8
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #23
  br label %_ZN6Assimp12IrrlichtBase8PropertyIfED2Ev.exit

_ZN6Assimp12IrrlichtBase8PropertyIfED2Ev.exit:    ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i135
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.cb

_ZN10aiMaterial11AddPropertyEPKfjPKcjj.exit:      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit134.thread._ZN10aiMaterial11AddPropertyEPKfjPKcjj.exit_crit_edge, %bb.l, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit134
  %i.de = phi ptr [ %.pre306, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit134.thread._ZN10aiMaterial11AddPropertyEPKfjPKcjj.exit_crit_edge ], [ %.pre307, %bb.l ], [ %.pre307, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit134 ] ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.v
  br i1 %i.df, label %_ZN6Assimp12IrrlichtBase8PropertyIfED2Ev.exit139, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i137: ; preds = %_ZN10aiMaterial11AddPropertyEPKfjPKcjj.exit
  %i.dg = load i64, ptr %i.v, align 8
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #23
  br label %_ZN6Assimp12IrrlichtBase8PropertyIfED2Ev.exit139

_ZN6Assimp12IrrlichtBase8PropertyIfED2Ev.exit139: ; preds = %_ZN10aiMaterial11AddPropertyEPKfjPKcjj.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i137
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.ca

bb.n:                                             ; preds = %_ZN6Assimp14ASSIMP_stricmpEPKcS1_.exit132
  %i.di = call noundef ptr @_ZNK4pugi8xml_node4nameEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %.06.i140 = phi ptr [ %i.di, %bb.n ], [ %i.dj, %bb.o ] ; 2 uses
  %.0.i141 = phi ptr [ @.str.16, %bb.n ], [ %i.dn, %bb.o ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.06.i140, i64 1
  %i.dk = load i8, ptr %.06.i140, align 1
  %i.dl = zext i8 %i.dk to i32
  %i.dm = call i32 @tolower(i32 noundef %i.dl) #21 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.0.i141, i64 1
  %i.do = load i8, ptr %.0.i141, align 1
  %i.dp = zext i8 %i.do to i32
  %i.dq = call i32 @tolower(i32 noundef %i.dp) #21
  %i.dr = and i32 %i.dm, 255
  %i.ds = icmp ne i32 %i.dr, 0
  %.unshifted334 = xor i32 %i.dm, %i.dq
  %.mask335 = and i32 %.unshifted334, 255
  %i.dt = icmp eq i32 %.mask335, 0                ; 2 uses
  %i.du = select i1 %i.ds, i1 %i.dt, i1 false
  br i1 %i.du, label %bb.o, label %_ZN6Assimp14ASSIMP_stricmpEPKcS1_.exit144, !llvm.loop !0

_ZN6Assimp14ASSIMP_stricmpEPKcS1_.exit144:        ; preds = %bb.o
  br i1 %i.dt, label %bb.p, label %bb.w

bb.p:                                             ; preds = %_ZN6Assimp14ASSIMP_stricmpEPKcS1_.exit144
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  store ptr %i.s, ptr %11, align 8
  store i64 0, ptr %i.t, align 8
  store i8 0, ptr %i.s, align 8
  invoke void @_ZN6Assimp12IrrlichtBase16ReadBoolPropertyERNS0_8PropertyIbEERN4pugi8xml_nodeE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(33) %11, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dv = load i64, ptr %i.t, align 8             ; 3 uses
  switch i64 %i.dv, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit151.thread253 [
    i64 9, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit146
    i64 14, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit148
    i64 15, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit151
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit146: ; preds = %bb.q
  %i.dw = load ptr, ptr %11, align 8              ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 1
  %i.dy = xor i64 %i.dx, 7881706606989306199
  %i.dz = getelementptr i8, ptr %i.dw, i64 8
  %i.ea = load i8, ptr %i.dz, align 1
  %i.eb = zext i8 %i.ea to i64
  %i.ec = xor i64 %i.eb, 101
  %i.ed = or i64 %i.dy, %i.ec
  %i.ee = icmp ne i64 %i.ed, 0
  %i.ef = zext i1 %i.ee to i32
  %i.eg = icmp eq i32 %i.ef, 0
  br i1 %i.eg, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit146.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit151.thread253

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit146.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit146
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.eh = load i8, ptr %i.u, align 8, !range !8, !noundef !9
  %i.ei = zext nneg i8 %i.eh to i32
  store i32 %i.ei, ptr %i.a, align 4
  %i.ej = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull %i.a, i32 noundef 4, ptr noundef nonnull @.str.18, i32 noundef 0, i32 noundef 0, i32 noundef 4)
          to label %_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit unwind label %bb.s ; 0 uses

_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit:      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit146.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit151.thread253

bb.r:                                             ; preds = %bb.p
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.s:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit146.thread
  %i.el = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.v

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit148: ; preds = %bb.q
  %.pre304 = load ptr, ptr %11, align 8
  %bcmp.i147 = call i32 @bcmp(ptr %.pre304, ptr nonnull @.str.19, i64 %i.dv)
  %i.em = icmp eq i32 %bcmp.i147, 0
  br i1 %i.em, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit148.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit151.thread253

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit148.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
end_hunk_0
