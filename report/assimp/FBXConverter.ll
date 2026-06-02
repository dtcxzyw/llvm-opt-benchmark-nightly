inline.NumInlined: 7594
inline.NumDeleted: 2896
begin_hunk_0_@_ZN6Assimp3FBX12FBXConverter26SetShadingPropertiesCommonEP10aiMaterialRKNS0_13PropertyTableE:._crit_edge.i.i
  %i.i = alloca i64, align 8                      ; 5 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %i.l = alloca i8, align 1                       ; 53 uses
  %3 = alloca %struct.aiColor3D, align 4          ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %struct.aiColor3D, align 4          ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %struct.aiColor3D, align 8          ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %struct.aiColor3D, align 4          ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %struct.aiColor3D, align 8         ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.m = alloca float, align 4                    ; 5 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.n = alloca float, align 4                    ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.o = alloca float, align 4                    ; 4 uses
  %15 = alloca %struct.aiColor3D, align 8         ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.p = alloca float, align 4                    ; 7 uses
  %i.q = alloca float, align 4                    ; 5 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.r = alloca float, align 4                    ; 5 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %20 = alloca %struct.aiColor3D, align 8         ; 6 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.s = alloca float, align 4                    ; 5 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.t = alloca float, align 4                    ; 5 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.u = alloca float, align 4                    ; 5 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %25 = alloca %struct.aiColor3D, align 8         ; 6 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.v = alloca float, align 4                    ; 5 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.w = alloca float, align 4                    ; 5 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.x = alloca float, align 4                    ; 5 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.y = alloca float, align 4                    ; 5 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.z = alloca float, align 4                    ; 5 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.aa = alloca float, align 4                   ; 5 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.ab = alloca float, align 4                   ; 5 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.ac = alloca float, align 4                   ; 5 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.ad, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.ad, ptr noundef nonnull align 1 dereferenceable(7) @.str.126, i64 7, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 7, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 23
  store i8 0, ptr %i.af, align 1
  invoke void @_ZN6Assimp3FBX12FBXConverter28GetColorPropertyFromMaterialERKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERb(ptr dead_on_unwind nonnull writable sret(%struct.aiColor3D) align 4 %3, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(1) %i.l)
          to label %bb.a unwind label %bb.c

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.ag = load ptr, ptr %4, align 8               ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.ad
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.ai = load i64, ptr %i.ad, align 8
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.ak = load i8, ptr %i.l, align 1, !range !4, !noundef !3
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.b, label %._crit_edge.i.i178

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.am = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %3, i32 noundef 12, ptr noundef nonnull @.str.54, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  br label %._crit_edge.i.i178

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = load ptr, ptr %4, align 8               ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.ad
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175: ; preds = %bb.c
  %i.aq = load i64, ptr %i.ad, align 8
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.fr

._crit_edge.i.i178:                               ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.as, ptr %6, align 8
  store i64 7311146989661023557, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 8, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i8 0, ptr %i.au, align 8
  invoke void @_ZN6Assimp3FBX12FBXConverter28GetColorPropertyFromMaterialERKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERb(ptr dead_on_unwind nonnull writable sret(%struct.aiColor3D) align 4 %5, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 1 dereferenceable(1) %i.l)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %._crit_edge.i.i178
  %i.av = load ptr, ptr %6, align 8               ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.as
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182: ; preds = %bb.d
  %i.ax = load i64, ptr %i.as, align 8
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.az = load i8, ptr %i.l, align 1, !range !4, !noundef !3
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.e, label %._crit_edge.i.i188

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184
  %i.bb = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %5, i32 noundef 12, ptr noundef nonnull @.str.128, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  br label %._crit_edge.i.i200

bb.f:                                             ; preds = %._crit_edge.i.i178
  %i.bc = landingpad { ptr, i32 }
          cleanup
  %i.bd = load ptr, ptr %6, align 8               ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.as
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185: ; preds = %bb.f
  %i.bf = load i64, ptr %i.as, align 8
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.fq

._crit_edge.i.i188:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.bh, ptr %8, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.bh, ptr noundef nonnull align 1 dereferenceable(13) @.str.129, i64 13, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 13, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 29
  store i8 0, ptr %i.bj, align 1
  call void @llvm.experimental.noalias.scope.decl(metadata !212)
  store i8 1, ptr %i.l, align 1, !noalias !212
  %i.bk = invoke noundef ptr @_ZNK6Assimp3FBX13PropertyTable3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %.noexc192 unwind label %bb.n  ; 2 uses

.noexc192:                                        ; preds = %._crit_edge.i.i188
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.noexc192
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !212 ; 2 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bp = invoke noundef ptr @_ZNK6Assimp3FBX13PropertyTable3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %i.bn, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %.noexc193 unwind label %bb.n  ; 2 uses

.noexc193:                                        ; preds = %bb.h
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.noexc193, %.noexc192
  %.1.i.i = phi ptr [ %i.bk, %.noexc192 ], [ %i.bp, %.noexc193 ]
  %i.br = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %.1.i.i, ptr nonnull @_ZTIN6Assimp3FBX8PropertyE, ptr nonnull @_ZTIN6Assimp3FBX13TypedPropertyI10aiVector3tIfEEE, i64 0) #27, !noalias !212 ; 3 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %.noexc193, %bb.g
  store i8 0, ptr %i.l, align 1, !noalias !212
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.sroa.0.0.copyload31.i.i = load <2 x float>, ptr %i.bt, align 4
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %.sroa.10.0.copyload.i.i = load float, ptr %.sroa.10.0..sroa_idx.i.i, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bu = phi i1 [ true, %bb.k ], [ false, %bb.j ]
  %.sroa.10.0.copyload.i.sink.i = phi float [ %.sroa.10.0.copyload.i.i, %bb.k ], [ 0.000000e+00, %bb.j ]
  %i.bv = phi <2 x float> [ %.sroa.0.0.copyload31.i.i, %bb.k ], [ zeroinitializer, %bb.j ]
  store <2 x float> %i.bv, ptr %7, align 8, !alias.scope !212
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 8
  store float %.sroa.10.0.copyload.i.sink.i, ptr %i.bw, align 8, !alias.scope !212
  %i.bx = load ptr, ptr %8, align 8               ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.bh
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194: ; preds = %bb.l
  %i.bz = load i64, ptr %i.bh, align 8
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.ca) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br i1 %i.bu, label %bb.m, label %bb.o

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196
  %i.cb = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %7, i32 noundef 12, ptr noundef nonnull @.str.128, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  br label %bb.o

bb.n:                                             ; preds = %bb.h, %._crit_edge.i.i188
  %i.cc = landingpad { ptr, i32 }
          cleanup
  %i.cd = load ptr, ptr %8, align 8               ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.bh
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197: ; preds = %bb.n
  %i.cf = load i64, ptr %i.bh, align 8
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.fp

bb.o:                                             ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %._crit_edge.i.i200

._crit_edge.i.i200:                               ; preds = %bb.o, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.ch = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.ch, ptr %10, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.ch, ptr noundef nonnull align 1 dereferenceable(7) @.str.130, i64 7, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 7, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %10, i64 23
  store i8 0, ptr %i.cj, align 1
  invoke void @_ZN6Assimp3FBX12FBXConverter28GetColorPropertyFromMaterialERKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERb(ptr dead_on_unwind nonnull writable sret(%struct.aiColor3D) align 4 %9, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 1 dereferenceable(1) %i.l)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %._crit_edge.i.i200
  %i.ck = load ptr, ptr %10, align 8              ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.ch
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204: ; preds = %bb.p
  %i.cm = load i64, ptr %i.ch, align 8
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  %i.co = load i8, ptr %i.l, align 1, !range !4, !noundef !3
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.q, label %._crit_edge.i.i210

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206
  %i.cq = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %9, i32 noundef 12, ptr noundef nonnull @.str.131, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  br label %._crit_edge.i.i210

bb.r:                                             ; preds = %._crit_edge.i.i200
  %i.cr = landingpad { ptr, i32 }
          cleanup
  %i.cs = load ptr, ptr %10, align 8              ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.ch
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207: ; preds = %bb.r
  %i.cu = load i64, ptr %i.ch, align 8
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.fp

._crit_edge.i.i210:                               ; preds = %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  %i.cw = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.cw, ptr %12, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.cw, ptr noundef nonnull align 1 dereferenceable(13) @.str.77, i64 13, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 13, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %12, i64 29
  store i8 0, ptr %i.cy, align 1
  call void @llvm.experimental.noalias.scope.decl(metadata !215)
  %i.cz = invoke noundef ptr @_ZNK6Assimp3FBX13PropertyTable3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %.noexc223 unwind label %bb.z  ; 2 uses

.noexc223:                                        ; preds = %._crit_edge.i.i210
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %bb.s, label %bb.u

bb.s:                                             ; preds = %.noexc223
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.dc = load ptr, ptr %i.db, align 8, !noalias !215 ; 2 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.de = invoke noundef ptr @_ZNK6Assimp3FBX13PropertyTable3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %i.dc, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %.noexc224 unwind label %bb.z  ; 2 uses

.noexc224:                                        ; preds = %bb.t
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.noexc224, %.noexc223
  %.1.i.i214 = phi ptr [ %i.cz, %.noexc223 ], [ %i.de, %.noexc224 ]
  %i.dg = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %.1.i.i214, ptr nonnull @_ZTIN6Assimp3FBX8PropertyE, ptr nonnull @_ZTIN6Assimp3FBX13TypedPropertyI10aiVector3tIfEEE, i64 0) #27, !noalias !215 ; 3 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u, %.noexc224, %bb.s
  store i8 0, ptr %i.l, align 1, !noalias !215
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %.sroa.0.0.copyload31.i.i215 = load <2 x float>, ptr %i.di, align 4
  %.sroa.10.0..sroa_idx.i.i216 = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %.sroa.10.0.copyload.i.i217 = load float, ptr %.sroa.10.0..sroa_idx.i.i216, align 4
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.dj = phi i1 [ true, %bb.w ], [ false, %bb.v ]
  %.sroa.10.0.copyload.i.sink.i222 = phi float [ %.sroa.10.0.copyload.i.i217, %bb.w ], [ 0.000000e+00, %bb.v ]
  %i.dk = phi <2 x float> [ %.sroa.0.0.copyload31.i.i215, %bb.w ], [ zeroinitializer, %bb.v ]
  store <2 x float> %i.dk, ptr %11, align 8, !alias.scope !215
  %i.dl = getelementptr inbounds nuw i8, ptr %11, i64 8
  store float %.sroa.10.0.copyload.i.sink.i222, ptr %i.dl, align 8, !alias.scope !215
  %i.dm = load ptr, ptr %12, align 8              ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.cw
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226: ; preds = %bb.x
  %i.do = load i64, ptr %i.cw, align 8
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dp) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br i1 %i.dj, label %bb.y, label %._crit_edge.i.i232

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228
  %i.dq = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %11, i32 noundef 12, ptr noundef nonnull @.str.132, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  br label %._crit_edge.i.i232

bb.z:                                             ; preds = %bb.t, %._crit_edge.i.i210
  %i.dr = landingpad { ptr, i32 }
          cleanup
  %i.ds = load ptr, ptr %12, align 8              ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.cw
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229: ; preds = %bb.z
  %i.du = load i64, ptr %i.cw, align 8
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %bb.fo

._crit_edge.i.i232:                               ; preds = %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  %i.dw = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.dw, ptr %13, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.dw, ptr noundef nonnull align 1 dereferenceable(14) @.str.78, i64 14, i1 false)
  %i.dx = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 14, ptr %i.dx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %13, i64 30
  store i8 0, ptr %i.dy, align 2
  %i.dz = invoke noundef ptr @_ZNK6Assimp3FBX13PropertyTable3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %.noexc236 unwind label %bb.ai ; 2 uses

.noexc236:                                        ; preds = %._crit_edge.i.i232
  %i.ea = icmp eq ptr %i.dz, null
  br i1 %i.ea, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %.noexc236
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.ec = load ptr, ptr %i.eb, align 8            ; 2 uses
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i8 0, ptr %i.l, align 1
  br label %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit

bb.ac:                                            ; preds = %bb.aa
  %i.ee = invoke noundef ptr @_ZNK6Assimp3FBX13PropertyTable3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %i.ec, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %.noexc237 unwind label %bb.ai ; 2 uses

.noexc237:                                        ; preds = %bb.ac
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.noexc237
  store i8 0, ptr %i.l, align 1
  br label %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit

bb.ae:                                            ; preds = %.noexc237, %.noexc236
  %.119.i = phi ptr [ %i.dz, %.noexc236 ], [ %i.ee, %.noexc237 ]
  %i.eg = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %.119.i, ptr nonnull @_ZTIN6Assimp3FBX8PropertyE, ptr nonnull @_ZTIN6Assimp3FBX13TypedPropertyIfEE, i64 0) #27 ; 2 uses
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i8 0, ptr %i.l, align 1
  br label %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit

bb.ag:                                            ; preds = %bb.ae
  store i8 1, ptr %i.l, align 1
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ej = load float, ptr %i.ei, align 4
  br label %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit

_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit: ; preds = %bb.ag, %bb.af, %bb.ad, %bb.ab
  %i.ek = phi i1 [ false, %bb.ab ], [ true, %bb.ag ], [ false, %bb.af ], [ false, %bb.ad ]
  %.2.i = phi float [ 0.000000e+00, %bb.ab ], [ %i.ej, %bb.ag ], [ 0.000000e+00, %bb.af ], [ 0.000000e+00, %bb.ad ]
  %i.el = load ptr, ptr %13, align 8              ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.dw
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238: ; preds = %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit
  %i.en = load i64, ptr %i.dw, align 8
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.eo) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240: ; preds = %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  store float %.2.i, ptr %i.m, align 4
  br i1 %i.ek, label %bb.ah, label %.noexc.i245

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240
  %i.ep = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.m, i32 noundef 4, ptr noundef nonnull @.str.133, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  br label %.noexc.i245

bb.ai:                                            ; preds = %bb.ac, %._crit_edge.i.i232
  %i.eq = landingpad { ptr, i32 }
          cleanup
  %i.er = load ptr, ptr %13, align 8              ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.dw
  br i1 %i.es, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241: ; preds = %bb.ai
  %i.et = load i64, ptr %i.dw, align 8
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.eu) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %bb.fn

.noexc.i245:                                      ; preds = %bb.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  %i.ev = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.ev, ptr %14, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #27
  store i64 17, ptr %i.k, align 8
  %i.ew = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef 0)
          to label %.noexc246 unwind label %bb.ao ; 2 uses

.noexc246:                                        ; preds = %.noexc.i245
  store ptr %i.ew, ptr %14, align 8
  %i.ex = load i64, ptr %i.k, align 8             ; 3 uses
  store i64 %i.ex, ptr %i.ev, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.ew, ptr noundef nonnull align 1 dereferenceable(17) @.str.84, i64 17, i1 false)
  %i.ey = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.ex, ptr %i.ey, align 8
  %i.ez = load ptr, ptr %14, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.ex
  store i8 0, ptr %i.fa, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #27
  %i.fb = invoke noundef ptr @_ZNK6Assimp3FBX13PropertyTable3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %.noexc250 unwind label %bb.ap ; 2 uses

.noexc250:                                        ; preds = %.noexc246
  %i.fc = icmp eq ptr %i.fb, null
  br i1 %i.fc, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.noexc250
  store i8 0, ptr %i.l, align 1
  br label %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit251

bb.ak:                                            ; preds = %.noexc250
  %i.fd = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %i.fb, ptr nonnull @_ZTIN6Assimp3FBX8PropertyE, ptr nonnull @_ZTIN6Assimp3FBX13TypedPropertyIfEE, i64 0) #27 ; 2 uses
  %i.fe = icmp eq ptr %i.fd, null
  br i1 %i.fe, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i8 0, ptr %i.l, align 1
  br label %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit251

bb.am:                                            ; preds = %bb.ak
  store i8 1, ptr %i.l, align 1
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.fg = load float, ptr %i.ff, align 4
  br label %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit251

_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit251: ; preds = %bb.am, %bb.al, %bb.aj
  %i.fh = phi i1 [ false, %bb.aj ], [ true, %bb.am ], [ false, %bb.al ]
  %.2.i249 = phi float [ 0.000000e+00, %bb.aj ], [ %i.fg, %bb.am ], [ 0.000000e+00, %bb.al ]
  %i.fi = load ptr, ptr %14, align 8              ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.ev
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252: ; preds = %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit251
  %i.fk = load i64, ptr %i.ev, align 8
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fl) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254: ; preds = %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit251, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  store float %.2.i249, ptr %i.n, align 4
  br i1 %i.fh, label %bb.an, label %.noexc.i259

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254
  %i.fm = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.n, i32 noundef 4, ptr noundef nonnull @.str.134, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #27
  %i.fn = load float, ptr %i.n, align 4
  %i.fo = fpext float %i.fn to double
  %i.fp = call double @sqrt(double noundef %i.fo) #27
  %i.fq = fdiv double %i.fp, 1.000000e+01
  %i.fr = fsub double 1.000000e+00, %i.fq
  %i.fs = fptrunc double %i.fr to float
  store float %i.fs, ptr %i.o, align 4
  %i.ft = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.o, i32 noundef 4, ptr noundef nonnull @.str.135, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #27
  br label %.noexc.i259

bb.ao:                                            ; preds = %.noexc.i245
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257

bb.ap:                                            ; preds = %.noexc246
  %i.fv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fw = load ptr, ptr %14, align 8              ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.ev
  br i1 %i.fx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255: ; preds = %bb.ap
  %i.fy = load i64, ptr %i.ev, align 8
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.fz) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255, %bb.ao
  %.pn118 = phi { ptr, i32 } [ %i.fu, %bb.ao ], [ %i.fv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255 ], [ %i.fv, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  br label %bb.fm

.noexc.i259:                                      ; preds = %bb.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  %i.ga = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  store ptr %i.ga, ptr %16, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  store i64 16, ptr %i.j, align 8
  %i.gb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef 0)
          to label %.noexc260 unwind label %bb.bb ; 2 uses

.noexc260:                                        ; preds = %.noexc.i259
  store ptr %i.gb, ptr %16, align 8
  %i.gc = load i64, ptr %i.j, align 8             ; 3 uses
  store i64 %i.gc, ptr %i.ga, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.gb, ptr noundef nonnull align 1 dereferenceable(16) @.str.79, i64 16, i1 false)
  %i.gd = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.gc, ptr %i.gd, align 8
  %i.ge = load ptr, ptr %16, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.gc
  store i8 0, ptr %i.gf, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  %i.gg = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.gg, ptr %17, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #27
  store i64 18, ptr %i.i, align 8
  %i.gh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 0)
          to label %.noexc264 unwind label %bb.bc ; 2 uses

.noexc264:                                        ; preds = %.noexc260
  store ptr %i.gh, ptr %17, align 8
  %i.gi = load i64, ptr %i.i, align 8             ; 3 uses
  store i64 %i.gi, ptr %i.gg, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.gh, ptr noundef nonnull align 1 dereferenceable(18) @.str.85, i64 18, i1 false)
  %i.gj = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  store i64 %i.gi, ptr %i.gj, align 8
  %i.gk = load ptr, ptr %17, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.gi
  store i8 0, ptr %i.gl, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !218)
  %i.gm = invoke noundef ptr @_ZNK6Assimp3FBX13PropertyTable3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %.noexc273 unwind label %bb.bd ; 2 uses

.noexc273:                                        ; preds = %.noexc264
  %i.gn = icmp eq ptr %i.gm, null
  br i1 %i.gn, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %.noexc273
  %i.go = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.gp = load ptr, ptr %i.go, align 8, !noalias !218 ; 2 uses
  %i.gq = icmp eq ptr %i.gp, null
  br i1 %i.gq, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gr = invoke noundef ptr @_ZNK6Assimp3FBX13PropertyTable3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %i.gp, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %.noexc274 unwind label %bb.bd ; 2 uses

.noexc274:                                        ; preds = %bb.ar
  %i.gs = icmp eq ptr %i.gr, null
  br i1 %i.gs, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.noexc274, %.noexc273
  %.1.i.i266 = phi ptr [ %i.gm, %.noexc273 ], [ %i.gr, %.noexc274 ]
  %i.gt = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %.1.i.i266, ptr nonnull @_ZTIN6Assimp3FBX8PropertyE, ptr nonnull @_ZTIN6Assimp3FBX13TypedPropertyI10aiVector3tIfEEE, i64 0) #27, !noalias !218 ; 3 uses
  %i.gu = icmp eq ptr %i.gt, null
  br i1 %i.gu, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as, %.noexc274, %bb.aq
  store i8 0, ptr %i.l, align 1, !noalias !218
  br label %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit.thread.i

bb.au:                                            ; preds = %bb.as
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %.sroa.0.0.copyload31.i.i267 = load <2 x float>, ptr %i.gv, align 4 ; 5 uses
  %.sroa.10.0..sroa_idx.i.i268 = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %.sroa.10.0.copyload.i.i269 = load float, ptr %.sroa.10.0..sroa_idx.i.i268, align 4 ; 5 uses
  %i.gw = load i64, ptr %i.gj, align 8, !noalias !218
  %i.gx = icmp eq i64 %i.gw, 0
  br i1 %i.gx, label %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit.thread.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gy = invoke noundef ptr @_ZNK6Assimp3FBX13PropertyTable3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %.noexc275 unwind label %bb.bd ; 2 uses

.noexc275:                                        ; preds = %bb.av
  %i.gz = icmp eq ptr %i.gy, null
  br i1 %i.gz, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %.noexc275
  %i.ha = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.hb = load ptr, ptr %i.ha, align 8, !noalias !218 ; 2 uses
  %i.hc = icmp eq ptr %i.hb, null
  br i1 %i.hc, label %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit.thread.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hd = invoke noundef ptr @_ZNK6Assimp3FBX13PropertyTable3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %i.hb, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %.noexc276 unwind label %bb.bd ; 2 uses

.noexc276:                                        ; preds = %bb.ax
  %i.he = icmp eq ptr %i.hd, null
  br i1 %i.he, label %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit.thread.i, label %bb.ay

bb.ay:                                            ; preds = %.noexc276, %.noexc275
  %.119.i.i = phi ptr [ %i.gy, %.noexc275 ], [ %i.hd, %.noexc276 ]
  %i.hf = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %.119.i.i, ptr nonnull @_ZTIN6Assimp3FBX8PropertyE, ptr nonnull @_ZTIN6Assimp3FBX13TypedPropertyIfEE, i64 0) #27, !noalias !218 ; 2 uses
  %i.hg = icmp eq ptr %i.hf, null
  br i1 %i.hg, label %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit.thread.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hi = load float, ptr %i.hh, align 4          ; 2 uses
  %i.hj = insertelement <2 x float> poison, float %i.hi, i64 0
  %i.hk = shufflevector <2 x float> %i.hj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hl = fmul <2 x float> %.sroa.0.0.copyload31.i.i267, %i.hk
  %i.hm = fmul float %.sroa.10.0.copyload.i.i269, %i.hi
  br label %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit.thread.i

_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit.thread.i: ; preds = %bb.aw, %.noexc276, %bb.ay, %bb.az, %bb.au, %bb.at
  %i.hn = phi i1 [ true, %bb.au ], [ false, %bb.at ], [ true, %bb.az ], [ true, %bb.ay ], [ true, %.noexc276 ], [ true, %bb.aw ]
  %.sroa.11.0.sink.i = phi float [ %.sroa.10.0.copyload.i.i269, %bb.au ], [ 0.000000e+00, %bb.at ], [ %i.hm, %bb.az ], [ %.sroa.10.0.copyload.i.i269, %bb.ay ], [ %.sroa.10.0.copyload.i.i269, %bb.aw ], [ %.sroa.10.0.copyload.i.i269, %.noexc276 ]
  %i.ho = phi <2 x float> [ %.sroa.0.0.copyload31.i.i267, %bb.au ], [ zeroinitializer, %bb.at ], [ %i.hl, %bb.az ], [ %.sroa.0.0.copyload31.i.i267, %bb.ay ], [ %.sroa.0.0.copyload31.i.i267, %bb.aw ], [ %.sroa.0.0.copyload31.i.i267, %.noexc276 ]
  %i.hp = getelementptr inbounds nuw i8, ptr %15, i64 4
  store <2 x float> %i.ho, ptr %15, align 8, !alias.scope !218
  %i.hq = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store float %.sroa.11.0.sink.i, ptr %i.hq, align 8, !alias.scope !218
  %i.hr = load ptr, ptr %17, align 8              ; 2 uses
  %i.hs = icmp eq ptr %i.hr, %i.gg
  br i1 %i.hs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i277

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i277: ; preds = %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit.thread.i
  %i.ht = load i64, ptr %i.gg, align 8
  %i.hu = add i64 %i.ht, 1
  call void @_ZdlPvm(ptr noundef %i.hr, i64 noundef %i.hu) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279: ; preds = %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i277
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  %i.hv = load ptr, ptr %16, align 8              ; 2 uses
  %i.hw = icmp eq ptr %i.hv, %i.ga
  br i1 %i.hw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279
  %i.hx = load i64, ptr %i.ga, align 8
  %i.hy = add i64 %i.hx, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hy) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #27
  store float 1.000000e+00, ptr %i.p, align 4
  br i1 %i.hn, label %bb.ba, label %.noexc.i290

bb.ba:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282
  %i.hz = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %15, i32 noundef 12, ptr noundef nonnull @.str.136, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.ia = load float, ptr %15, align 8
  %i.ib = load float, ptr %i.hp, align 4
  %i.ic = fadd float %i.ia, %i.ib
  %i.id = load float, ptr %i.hq, align 8
  %i.ie = fadd float %i.ic, %i.id
  %i.if = fdiv float %i.ie, 3.000000e+00
  %i.ig = fsub float 1.000000e+00, %i.if
  store float %i.ig, ptr %i.p, align 4
  br label %.noexc.i290

bb.bb:                                            ; preds = %.noexc.i259
  %i.ih = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288

bb.bc:                                            ; preds = %.noexc260
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285

bb.bd:                                            ; preds = %bb.ax, %bb.av, %bb.ar, %.noexc264
  %i.ij = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ik = load ptr, ptr %17, align 8              ; 2 uses
  %i.il = icmp eq ptr %i.ik, %i.gg
  br i1 %i.il, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283: ; preds = %bb.bd
  %i.im = load i64, ptr %i.gg, align 8
  %i.in = add i64 %i.im, 1
  call void @_ZdlPvm(ptr noundef %i.ik, i64 noundef %i.in) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283, %bb.bc
  %.pn120 = phi { ptr, i32 } [ %i.ii, %bb.bc ], [ %i.ij, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283 ], [ %i.ij, %bb.bd ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  %i.io = load ptr, ptr %16, align 8              ; 2 uses
  %i.ip = icmp eq ptr %i.io, %i.ga
  br i1 %i.ip, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i286

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i286: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285
  %i.iq = load i64, ptr %i.ga, align 8
  %i.ir = add i64 %i.iq, 1
  call void @_ZdlPvm(ptr noundef %i.io, i64 noundef %i.ir) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i286, %bb.bb
  %.pn120.pn = phi { ptr, i32 } [ %i.ih, %bb.bb ], [ %.pn120, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i286 ], [ %.pn120, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  br label %bb.fm

.noexc.i290:                                      ; preds = %bb.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  %i.is = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  store ptr %i.is, ptr %18, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #27
  store i64 18, ptr %i.h, align 8
  %i.it = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0)
          to label %.noexc291 unwind label %bb.bj ; 2 uses

.noexc291:                                        ; preds = %.noexc.i290
  store ptr %i.it, ptr %18, align 8
  %i.iu = load i64, ptr %i.h, align 8             ; 3 uses
  store i64 %i.iu, ptr %i.is, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.it, ptr noundef nonnull align 1 dereferenceable(18) @.str.85, i64 18, i1 false)
  %i.iv = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %i.iu, ptr %i.iv, align 8
  %i.iw = load ptr, ptr %18, align 8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 %i.iu
  store i8 0, ptr %i.ix, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  %i.iy = invoke noundef ptr @_ZNK6Assimp3FBX13PropertyTable3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %.noexc295 unwind label %bb.bk ; 2 uses

.noexc295:                                        ; preds = %.noexc291
  %i.iz = icmp eq ptr %i.iy, null
  br i1 %i.iz, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.noexc295
  store i8 0, ptr %i.l, align 1
  br label %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit296

bb.bf:                                            ; preds = %.noexc295
  %i.ja = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %i.iy, ptr nonnull @_ZTIN6Assimp3FBX8PropertyE, ptr nonnull @_ZTIN6Assimp3FBX13TypedPropertyIfEE, i64 0) #27 ; 2 uses
  %i.jb = icmp eq ptr %i.ja, null
  br i1 %i.jb, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i8 0, ptr %i.l, align 1
  br label %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit296

bb.bh:                                            ; preds = %bb.bf
  store i8 1, ptr %i.l, align 1
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.jd = load float, ptr %i.jc, align 4
  br label %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit296

_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit296: ; preds = %bb.bh, %bb.bg, %bb.be
  %i.je = phi i1 [ false, %bb.be ], [ true, %bb.bh ], [ false, %bb.bg ]
  %.2.i294 = phi float [ 0.000000e+00, %bb.be ], [ %i.jd, %bb.bh ], [ 0.000000e+00, %bb.bg ]
  %i.jf = load ptr, ptr %18, align 8              ; 2 uses
  %i.jg = icmp eq ptr %i.jf, %i.is
  br i1 %i.jg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297: ; preds = %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit296
  %i.jh = load i64, ptr %i.is, align 8
  %i.ji = add i64 %i.jh, 1
  call void @_ZdlPvm(ptr noundef %i.jf, i64 noundef %i.ji) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299: ; preds = %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit296, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  store float %.2.i294, ptr %i.q, align 4
  br i1 %i.je, label %bb.bi, label %._crit_edge.i.i303

bb.bi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299
  %i.jj = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.q, i32 noundef 4, ptr noundef nonnull @.str.137, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  br label %._crit_edge.i.i303

bb.bj:                                            ; preds = %.noexc.i290
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302

bb.bk:                                            ; preds = %.noexc291
  %i.jl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jm = load ptr, ptr %18, align 8              ; 2 uses
  %i.jn = icmp eq ptr %i.jm, %i.is
  br i1 %i.jn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300: ; preds = %bb.bk
  %i.jo = load i64, ptr %i.is, align 8
  %i.jp = add i64 %i.jo, 1
  call void @_ZdlPvm(ptr noundef %i.jm, i64 noundef %i.jp) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300, %bb.bj
  %.pn123 = phi { ptr, i32 } [ %i.jk, %bb.bj ], [ %i.jl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300 ], [ %i.jl, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  br label %bb.fl

._crit_edge.i.i303:                               ; preds = %bb.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27
  %i.jq = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  store ptr %i.jq, ptr %19, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.jq, ptr noundef nonnull align 1 dereferenceable(7) @.str.138, i64 7, i1 false)
  %i.jr = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 7, ptr %i.jr, align 8
  %i.js = getelementptr inbounds nuw i8, ptr %19, i64 23
  store i8 0, ptr %i.js, align 1
  %i.jt = invoke noundef ptr @_ZNK6Assimp3FBX13PropertyTable3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %.noexc309 unwind label %bb.bp ; 2 uses

.noexc309:                                        ; preds = %._crit_edge.i.i303
  %i.ju = icmp eq ptr %i.jt, null
  br i1 %i.ju, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %.noexc309
  store i8 0, ptr %i.l, align 1
  br label %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit310

bb.bm:                                            ; preds = %.noexc309
  %i.jv = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %i.jt, ptr nonnull @_ZTIN6Assimp3FBX8PropertyE, ptr nonnull @_ZTIN6Assimp3FBX13TypedPropertyIfEE, i64 0) #27 ; 2 uses
  %i.jw = icmp eq ptr %i.jv, null
  br i1 %i.jw, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  store i8 0, ptr %i.l, align 1
  br label %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit310

bb.bo:                                            ; preds = %bb.bm
  store i8 1, ptr %i.l, align 1
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %i.jy = load float, ptr %i.jx, align 4
  br label %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit310

_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit310: ; preds = %bb.bo, %bb.bn, %bb.bl
  %i.jz = phi i1 [ false, %bb.bl ], [ true, %bb.bo ], [ false, %bb.bn ]
  %.2.i308 = phi float [ 0.000000e+00, %bb.bl ], [ %i.jy, %bb.bo ], [ 0.000000e+00, %bb.bn ]
  %i.ka = load ptr, ptr %19, align 8              ; 2 uses
  %i.kb = icmp eq ptr %i.ka, %i.jq
  br i1 %i.kb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit313, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i311

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i311: ; preds = %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit310
  %i.kc = load i64, ptr %i.jq, align 8
  %i.kd = add i64 %i.kc, 1
  call void @_ZdlPvm(ptr noundef %i.ka, i64 noundef %i.kd) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit313

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit313: ; preds = %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit310, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i311
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  store float %.2.i308, ptr %i.r, align 4
  br i1 %i.jz, label %._crit_edge.i.i317.sink.split, label %bb.bq

bb.bp:                                            ; preds = %._crit_edge.i.i303
  %i.ke = landingpad { ptr, i32 }
          cleanup
  %i.kf = load ptr, ptr %19, align 8              ; 2 uses
  %i.kg = icmp eq ptr %i.kf, %i.jq
  br i1 %i.kg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i314

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i314: ; preds = %bb.bp
  %i.kh = load i64, ptr %i.jq, align 8
  %i.ki = add i64 %i.kh, 1
  call void @_ZdlPvm(ptr noundef %i.kf, i64 noundef %i.ki) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i314
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  br label %bb.fk

bb.bq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit313
  %i.kj = load float, ptr %i.p, align 4
  %i.kk = fcmp une float %i.kj, 1.000000e+00
  br i1 %i.kk, label %._crit_edge.i.i317.sink.split, label %._crit_edge.i.i317

._crit_edge.i.i317.sink.split:                    ; preds = %bb.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit313
  %.sink = phi ptr [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit313 ], [ %i.p, %bb.bq ]
  %i.kl = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %.sink, i32 noundef 4, ptr noundef nonnull @.str.139, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  br label %._crit_edge.i.i317

._crit_edge.i.i317:                               ; preds = %._crit_edge.i.i317.sink.split, %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #27
  %i.km = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 6 uses
  store ptr %i.km, ptr %21, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.km, ptr noundef nonnull align 1 dereferenceable(15) @.str.80, i64 15, i1 false)
  %i.kn = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 15, ptr %i.kn, align 8
  %i.ko = getelementptr inbounds nuw i8, ptr %21, i64 31
  store i8 0, ptr %i.ko, align 1
  call void @llvm.experimental.noalias.scope.decl(metadata !221)
  %i.kp = invoke noundef ptr @_ZNK6Assimp3FBX13PropertyTable3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 8 dereferenceable(32) %21)
          to label %.noexc330 unwind label %bb.by ; 2 uses

.noexc330:                                        ; preds = %._crit_edge.i.i317
  %i.kq = icmp eq ptr %i.kp, null
  br i1 %i.kq, label %bb.br, label %bb.bt

bb.br:                                            ; preds = %.noexc330
  %i.kr = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.ks = load ptr, ptr %i.kr, align 8, !noalias !221 ; 2 uses
  %i.kt = icmp eq ptr %i.ks, null
  br i1 %i.kt, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ku = invoke noundef ptr @_ZNK6Assimp3FBX13PropertyTable3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %i.ks, ptr noundef nonnull align 8 dereferenceable(32) %21)
          to label %.noexc331 unwind label %bb.by ; 2 uses

.noexc331:                                        ; preds = %bb.bs
  %i.kv = icmp eq ptr %i.ku, null
  br i1 %i.kv, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %.noexc331, %.noexc330
  %.1.i.i321 = phi ptr [ %i.kp, %.noexc330 ], [ %i.ku, %.noexc331 ]
  %i.kw = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %.1.i.i321, ptr nonnull @_ZTIN6Assimp3FBX8PropertyE, ptr nonnull @_ZTIN6Assimp3FBX13TypedPropertyI10aiVector3tIfEEE, i64 0) #27, !noalias !221 ; 3 uses
  %i.kx = icmp eq ptr %i.kw, null
  br i1 %i.kx, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt, %.noexc331, %bb.br
  store i8 0, ptr %i.l, align 1, !noalias !221
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bt
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  %.sroa.0.0.copyload31.i.i322 = load <2 x float>, ptr %i.ky, align 4
  %.sroa.10.0..sroa_idx.i.i323 = getelementptr inbounds nuw i8, ptr %i.kw, i64 16
  %.sroa.10.0.copyload.i.i324 = load float, ptr %.sroa.10.0..sroa_idx.i.i323, align 4
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.kz = phi i1 [ true, %bb.bv ], [ false, %bb.bu ]
  %.sroa.10.0.copyload.i.sink.i329 = phi float [ %.sroa.10.0.copyload.i.i324, %bb.bv ], [ 0.000000e+00, %bb.bu ]
  %i.la = phi <2 x float> [ %.sroa.0.0.copyload31.i.i322, %bb.bv ], [ zeroinitializer, %bb.bu ]
  store <2 x float> %i.la, ptr %20, align 8, !alias.scope !221
  %i.lb = getelementptr inbounds nuw i8, ptr %20, i64 8
  store float %.sroa.10.0.copyload.i.sink.i329, ptr %i.lb, align 8, !alias.scope !221
  %i.lc = load ptr, ptr %21, align 8              ; 2 uses
  %i.ld = icmp eq ptr %i.lc, %i.km
  br i1 %i.ld, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i333

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i333: ; preds = %bb.bw
  %i.le = load i64, ptr %i.km, align 8
  %i.lf = add i64 %i.le, 1
  call void @_ZdlPvm(ptr noundef %i.lc, i64 noundef %i.lf) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i333
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  br i1 %i.kz, label %bb.bx, label %.noexc.i340

bb.bx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335
  %i.lg = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %20, i32 noundef 12, ptr noundef nonnull @.str.140, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  br label %.noexc.i340

bb.by:                                            ; preds = %bb.bs, %._crit_edge.i.i317
  %i.lh = landingpad { ptr, i32 }
          cleanup
  %i.li = load ptr, ptr %21, align 8              ; 2 uses
  %i.lj = icmp eq ptr %i.li, %i.km
  br i1 %i.lj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i336

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i336: ; preds = %bb.by
  %i.lk = load i64, ptr %i.km, align 8
  %i.ll = add i64 %i.lk, 1
  call void @_ZdlPvm(ptr noundef %i.li, i64 noundef %i.ll) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338: ; preds = %bb.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i336
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  br label %bb.fk

.noexc.i340:                                      ; preds = %bb.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #27
  %i.lm = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 6 uses
  store ptr %i.lm, ptr %22, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #27
  store i64 16, ptr %i.g, align 8
  %i.ln = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc341 unwind label %bb.ch ; 2 uses

.noexc341:                                        ; preds = %.noexc.i340
  store ptr %i.ln, ptr %22, align 8
  %i.lo = load i64, ptr %i.g, align 8             ; 3 uses
  store i64 %i.lo, ptr %i.lm, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ln, ptr noundef nonnull align 1 dereferenceable(16) @.str.87, i64 16, i1 false)
  %i.lp = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 %i.lo, ptr %i.lp, align 8
  %i.lq = load ptr, ptr %22, align 8
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 %i.lo
  store i8 0, ptr %i.lr, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  %i.ls = invoke noundef ptr @_ZNK6Assimp3FBX13PropertyTable3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %.noexc345 unwind label %bb.ci ; 2 uses

.noexc345:                                        ; preds = %.noexc341
  %i.lt = icmp eq ptr %i.ls, null
  br i1 %i.lt, label %bb.bz, label %bb.cd

bb.bz:                                            ; preds = %.noexc345
  %i.lu = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.lv = load ptr, ptr %i.lu, align 8            ; 2 uses
  %i.lw = icmp eq ptr %i.lv, null
  br i1 %i.lw, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  store i8 0, ptr %i.l, align 1
  br label %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit347

bb.cb:                                            ; preds = %bb.bz
  %i.lx = invoke noundef ptr @_ZNK6Assimp3FBX13PropertyTable3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %i.lv, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %.noexc346 unwind label %bb.ci ; 2 uses

.noexc346:                                        ; preds = %bb.cb
  %i.ly = icmp eq ptr %i.lx, null
  br i1 %i.ly, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %.noexc346
  store i8 0, ptr %i.l, align 1
  br label %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit347

bb.cd:                                            ; preds = %.noexc346, %.noexc345
  %.119.i343 = phi ptr [ %i.ls, %.noexc345 ], [ %i.lx, %.noexc346 ]
  %i.lz = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %.119.i343, ptr nonnull @_ZTIN6Assimp3FBX8PropertyE, ptr nonnull @_ZTIN6Assimp3FBX13TypedPropertyIfEE, i64 0) #27 ; 2 uses
  %i.ma = icmp eq ptr %i.lz, null
  br i1 %i.ma, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  store i8 0, ptr %i.l, align 1
  br label %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit347

bb.cf:                                            ; preds = %bb.cd
  store i8 1, ptr %i.l, align 1
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  %i.mc = load float, ptr %i.mb, align 4
  br label %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit347

_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit347: ; preds = %bb.cf, %bb.ce, %bb.cc, %bb.ca
  %i.md = phi i1 [ false, %bb.ca ], [ true, %bb.cf ], [ false, %bb.ce ], [ false, %bb.cc ]
  %.2.i344 = phi float [ 0.000000e+00, %bb.ca ], [ %i.mc, %bb.cf ], [ 0.000000e+00, %bb.ce ], [ 0.000000e+00, %bb.cc ]
  %i.me = load ptr, ptr %22, align 8              ; 2 uses
  %i.mf = icmp eq ptr %i.me, %i.lm
  br i1 %i.mf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348: ; preds = %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit347
  %i.mg = load i64, ptr %i.lm, align 8
  %i.mh = add i64 %i.mg, 1
  call void @_ZdlPvm(ptr noundef %i.me, i64 noundef %i.mh) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350: ; preds = %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit347, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27
  store float %.2.i344, ptr %i.s, align 4
  br i1 %i.md, label %bb.cg, label %._crit_edge.i.i354

bb.cg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350
  %i.mi = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.s, i32 noundef 4, ptr noundef nonnull @.str.141, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  br label %._crit_edge.i.i354

bb.ch:                                            ; preds = %.noexc.i340
  %i.mj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit353

bb.ci:                                            ; preds = %bb.cb, %.noexc341
  %i.mk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ml = load ptr, ptr %22, align 8              ; 2 uses
  %i.mm = icmp eq ptr %i.ml, %i.lm
  br i1 %i.mm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit353, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i351

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i351: ; preds = %bb.ci
  %i.mn = load i64, ptr %i.lm, align 8
  %i.mo = add i64 %i.mn, 1
  call void @_ZdlPvm(ptr noundef %i.ml, i64 noundef %i.mo) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit353

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit353: ; preds = %bb.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i351, %bb.ch
  %.pn129 = phi { ptr, i32 } [ %i.mj, %bb.ch ], [ %i.mk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i351 ], [ %i.mk, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27
  br label %bb.fj

._crit_edge.i.i354:                               ; preds = %bb.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #27
  %i.mp = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 6 uses
  store ptr %i.mp, ptr %23, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.mp, ptr noundef nonnull align 1 dereferenceable(10) @.str.142, i64 10, i1 false)
  %i.mq = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 10, ptr %i.mq, align 8
  %i.mr = getelementptr inbounds nuw i8, ptr %23, i64 26
  store i8 0, ptr %i.mr, align 2
  %i.ms = invoke noundef ptr @_ZNK6Assimp3FBX13PropertyTable3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %.noexc360 unwind label %bb.co ; 2 uses

.noexc360:                                        ; preds = %._crit_edge.i.i354
  %i.mt = icmp eq ptr %i.ms, null
  br i1 %i.mt, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %.noexc360
  store i8 0, ptr %i.l, align 1
  br label %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit361

bb.ck:                                            ; preds = %.noexc360
  %i.mu = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %i.ms, ptr nonnull @_ZTIN6Assimp3FBX8PropertyE, ptr nonnull @_ZTIN6Assimp3FBX13TypedPropertyIfEE, i64 0) #27 ; 2 uses
  %i.mv = icmp eq ptr %i.mu, null
  br i1 %i.mv, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  store i8 0, ptr %i.l, align 1
  br label %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit361

bb.cm:                                            ; preds = %bb.ck
  store i8 1, ptr %i.l, align 1
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  %i.mx = load float, ptr %i.mw, align 4
  br label %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit361

_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit361: ; preds = %bb.cm, %bb.cl, %bb.cj
  %i.my = phi i1 [ false, %bb.cj ], [ true, %bb.cm ], [ false, %bb.cl ]
  %.2.i359 = phi float [ 0.000000e+00, %bb.cj ], [ %i.mx, %bb.cm ], [ 0.000000e+00, %bb.cl ]
  %i.mz = load ptr, ptr %23, align 8              ; 2 uses
  %i.na = icmp eq ptr %i.mz, %i.mp
  br i1 %i.na, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit364, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i362

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i362: ; preds = %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit361
  %i.nb = load i64, ptr %i.mp, align 8
  %i.nc = add i64 %i.nb, 1
  call void @_ZdlPvm(ptr noundef %i.mz, i64 noundef %i.nc) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit364

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit364: ; preds = %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit361, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i362
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  store float %.2.i359, ptr %i.t, align 4
  br i1 %i.my, label %bb.cn, label %.noexc.i369

bb.cn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit364
  %i.nd = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.t, i32 noundef 4, ptr noundef nonnull @.str.143, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  br label %.noexc.i369

bb.co:                                            ; preds = %._crit_edge.i.i354
  %i.ne = landingpad { ptr, i32 }
          cleanup
  %i.nf = load ptr, ptr %23, align 8              ; 2 uses
  %i.ng = icmp eq ptr %i.nf, %i.mp
  br i1 %i.ng, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit367, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i365

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i365: ; preds = %bb.co
  %i.nh = load i64, ptr %i.mp, align 8
  %i.ni = add i64 %i.nh, 1
  call void @_ZdlPvm(ptr noundef %i.nf, i64 noundef %i.ni) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit367

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit367: ; preds = %bb.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i365
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  br label %bb.fi

.noexc.i369:                                      ; preds = %bb.cn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit364
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #27
  %i.nj = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 6 uses
  store ptr %i.nj, ptr %24, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  store i64 18, ptr %i.f, align 8
  %i.nk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc370 unwind label %bb.cu ; 2 uses

.noexc370:                                        ; preds = %.noexc.i369
  store ptr %i.nk, ptr %24, align 8
  %i.nl = load i64, ptr %i.f, align 8             ; 3 uses
  store i64 %i.nl, ptr %i.nj, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.nk, ptr noundef nonnull align 1 dereferenceable(18) @.str.144, i64 18, i1 false)
  %i.nm = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 %i.nl, ptr %i.nm, align 8
  %i.nn = load ptr, ptr %24, align 8
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 %i.nl
  store i8 0, ptr %i.no, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  %i.np = invoke noundef ptr @_ZNK6Assimp3FBX13PropertyTable3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 8 dereferenceable(32) %24)
          to label %.noexc374 unwind label %bb.cv ; 2 uses

.noexc374:                                        ; preds = %.noexc370
  %i.nq = icmp eq ptr %i.np, null
  br i1 %i.nq, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %.noexc374
  store i8 0, ptr %i.l, align 1
  br label %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit375

bb.cq:                                            ; preds = %.noexc374
  %i.nr = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %i.np, ptr nonnull @_ZTIN6Assimp3FBX8PropertyE, ptr nonnull @_ZTIN6Assimp3FBX13TypedPropertyIfEE, i64 0) #27 ; 2 uses
  %i.ns = icmp eq ptr %i.nr, null
  br i1 %i.ns, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  store i8 0, ptr %i.l, align 1
  br label %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit375

bb.cs:                                            ; preds = %bb.cq
  store i8 1, ptr %i.l, align 1
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nr, i64 8
  %i.nu = load float, ptr %i.nt, align 4
  br label %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit375

_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit375: ; preds = %bb.cs, %bb.cr, %bb.cp
  %i.nv = phi i1 [ false, %bb.cp ], [ true, %bb.cs ], [ false, %bb.cr ]
  %.2.i373 = phi float [ 0.000000e+00, %bb.cp ], [ %i.nu, %bb.cs ], [ 0.000000e+00, %bb.cr ]
  %i.nw = load ptr, ptr %24, align 8              ; 2 uses
  %i.nx = icmp eq ptr %i.nw, %i.nj
  br i1 %i.nx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i376

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i376: ; preds = %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit375
  %i.ny = load i64, ptr %i.nj, align 8
  %i.nz = add i64 %i.ny, 1
  call void @_ZdlPvm(ptr noundef %i.nw, i64 noundef %i.nz) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378: ; preds = %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit375, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i376
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #27
  store float %.2.i373, ptr %i.u, align 4
  br i1 %i.nv, label %bb.ct, label %._crit_edge.i.i382

bb.ct:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378
  %i.oa = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.u, i32 noundef 4, ptr noundef nonnull @.str.145, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  br label %._crit_edge.i.i382

bb.cu:                                            ; preds = %.noexc.i369
  %i.ob = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381

bb.cv:                                            ; preds = %.noexc370
  %i.oc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.od = load ptr, ptr %24, align 8              ; 2 uses
  %i.oe = icmp eq ptr %i.od, %i.nj
  br i1 %i.oe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i379

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i379: ; preds = %bb.cv
  %i.of = load i64, ptr %i.nj, align 8
  %i.og = add i64 %i.of, 1
  call void @_ZdlPvm(ptr noundef %i.od, i64 noundef %i.og) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381: ; preds = %bb.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i379, %bb.cu
  %.pn133 = phi { ptr, i32 } [ %i.ob, %bb.cu ], [ %i.oc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i379 ], [ %i.oc, %bb.cv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #27
  br label %bb.fh

._crit_edge.i.i382:                               ; preds = %bb.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #27
  %i.oh = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 6 uses
  store ptr %i.oh, ptr %26, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.oh, ptr noundef nonnull align 1 dereferenceable(15) @.str.146, i64 15, i1 false)
  %i.oi = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 15, ptr %i.oi, align 8
  %i.oj = getelementptr inbounds nuw i8, ptr %26, i64 31
  store i8 0, ptr %i.oj, align 1
  call void @llvm.experimental.noalias.scope.decl(metadata !224)
  %i.ok = invoke noundef ptr @_ZNK6Assimp3FBX13PropertyTable3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 8 dereferenceable(32) %26)
          to label %.noexc395 unwind label %bb.dd ; 2 uses

.noexc395:                                        ; preds = %._crit_edge.i.i382
  %i.ol = icmp eq ptr %i.ok, null
  br i1 %i.ol, label %bb.cw, label %bb.cy

bb.cw:                                            ; preds = %.noexc395
  %i.om = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.on = load ptr, ptr %i.om, align 8, !noalias !224 ; 2 uses
  %i.oo = icmp eq ptr %i.on, null
  br i1 %i.oo, label %bb.cz, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.op = invoke noundef ptr @_ZNK6Assimp3FBX13PropertyTable3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %i.on, ptr noundef nonnull align 8 dereferenceable(32) %26)
          to label %.noexc396 unwind label %bb.dd ; 2 uses

.noexc396:                                        ; preds = %bb.cx
  %i.oq = icmp eq ptr %i.op, null
  br i1 %i.oq, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %.noexc396, %.noexc395
  %.1.i.i386 = phi ptr [ %i.ok, %.noexc395 ], [ %i.op, %.noexc396 ]
  %i.or = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %.1.i.i386, ptr nonnull @_ZTIN6Assimp3FBX8PropertyE, ptr nonnull @_ZTIN6Assimp3FBX13TypedPropertyI10aiVector3tIfEEE, i64 0) #27, !noalias !224 ; 3 uses
  %i.os = icmp eq ptr %i.or, null
  br i1 %i.os, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy, %.noexc396, %bb.cw
  store i8 0, ptr %i.l, align 1, !noalias !224
  br label %bb.db

bb.da:                                            ; preds = %bb.cy
  %i.ot = getelementptr inbounds nuw i8, ptr %i.or, i64 8
  %.sroa.0.0.copyload31.i.i387 = load <2 x float>, ptr %i.ot, align 4
  %.sroa.10.0..sroa_idx.i.i388 = getelementptr inbounds nuw i8, ptr %i.or, i64 16
  %.sroa.10.0.copyload.i.i389 = load float, ptr %.sroa.10.0..sroa_idx.i.i388, align 4
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %i.ou = phi i1 [ true, %bb.da ], [ false, %bb.cz ]
  %.sroa.10.0.copyload.i.sink.i394 = phi float [ %.sroa.10.0.copyload.i.i389, %bb.da ], [ 0.000000e+00, %bb.cz ]
  %i.ov = phi <2 x float> [ %.sroa.0.0.copyload31.i.i387, %bb.da ], [ zeroinitializer, %bb.cz ]
  store <2 x float> %i.ov, ptr %25, align 8, !alias.scope !224
  %i.ow = getelementptr inbounds nuw i8, ptr %25, i64 8
  store float %.sroa.10.0.copyload.i.sink.i394, ptr %i.ow, align 8, !alias.scope !224
  %i.ox = load ptr, ptr %26, align 8              ; 2 uses
  %i.oy = icmp eq ptr %i.ox, %i.oh
  br i1 %i.oy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i398

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i398: ; preds = %bb.db
  %i.oz = load i64, ptr %i.oh, align 8
  %i.pa = add i64 %i.oz, 1
  call void @_ZdlPvm(ptr noundef %i.ox, i64 noundef %i.pa) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400: ; preds = %bb.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i398
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #27
  br i1 %i.ou, label %bb.dc, label %.noexc.i405

bb.dc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400
  %i.pb = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %25, i32 noundef 12, ptr noundef nonnull @.str.147, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  br label %.noexc.i405

bb.dd:                                            ; preds = %bb.cx, %._crit_edge.i.i382
  %i.pc = landingpad { ptr, i32 }
          cleanup
  %i.pd = load ptr, ptr %26, align 8              ; 2 uses
  %i.pe = icmp eq ptr %i.pd, %i.oh
  br i1 %i.pe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i401

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i401: ; preds = %bb.dd
  %i.pf = load i64, ptr %i.oh, align 8
  %i.pg = add i64 %i.pf, 1
  call void @_ZdlPvm(ptr noundef %i.pd, i64 noundef %i.pg) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403: ; preds = %bb.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i401
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #27
  br label %bb.fh

.noexc.i405:                                      ; preds = %bb.dc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #27
  %i.ph = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 6 uses
  store ptr %i.ph, ptr %27, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  store i64 18, ptr %i.e, align 8
  %i.pi = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc406 unwind label %bb.dj ; 2 uses

.noexc406:                                        ; preds = %.noexc.i405
  store ptr %i.pi, ptr %27, align 8
  %i.pj = load i64, ptr %i.e, align 8             ; 3 uses
  store i64 %i.pj, ptr %i.ph, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.pi, ptr noundef nonnull align 1 dereferenceable(18) @.str.148, i64 18, i1 false)
  %i.pk = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 %i.pj, ptr %i.pk, align 8
  %i.pl = load ptr, ptr %27, align 8
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 %i.pj
  store i8 0, ptr %i.pm, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  %i.pn = invoke noundef ptr @_ZNK6Assimp3FBX13PropertyTable3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 8 dereferenceable(32) %27)
          to label %.noexc410 unwind label %bb.dk ; 2 uses

.noexc410:                                        ; preds = %.noexc406
  %i.po = icmp eq ptr %i.pn, null
  br i1 %i.po, label %bb.de, label %bb.df

bb.de:                                            ; preds = %.noexc410
  store i8 0, ptr %i.l, align 1
  br label %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit411

bb.df:                                            ; preds = %.noexc410
  %i.pp = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %i.pn, ptr nonnull @_ZTIN6Assimp3FBX8PropertyE, ptr nonnull @_ZTIN6Assimp3FBX13TypedPropertyIfEE, i64 0) #27 ; 2 uses
  %i.pq = icmp eq ptr %i.pp, null
  br i1 %i.pq, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  store i8 0, ptr %i.l, align 1
  br label %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit411

bb.dh:                                            ; preds = %bb.df
  store i8 1, ptr %i.l, align 1
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pp, i64 8
  %i.ps = load float, ptr %i.pr, align 4
  br label %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit411

_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit411: ; preds = %bb.dh, %bb.dg, %bb.de
  %i.pt = phi i1 [ false, %bb.de ], [ true, %bb.dh ], [ false, %bb.dg ]
  %.2.i409 = phi float [ 0.000000e+00, %bb.de ], [ %i.ps, %bb.dh ], [ 0.000000e+00, %bb.dg ]
  %i.pu = load ptr, ptr %27, align 8              ; 2 uses
  %i.pv = icmp eq ptr %i.pu, %i.ph
  br i1 %i.pv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i412

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i412: ; preds = %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit411
  %i.pw = load i64, ptr %i.ph, align 8
  %i.px = add i64 %i.pw, 1
  call void @_ZdlPvm(ptr noundef %i.pu, i64 noundef %i.px) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414: ; preds = %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit411, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i412
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #27
  store float %.2.i409, ptr %i.v, align 4
  br i1 %i.pt, label %bb.di, label %.noexc.i419

bb.di:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414
  %i.py = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.v, i32 noundef 4, ptr noundef nonnull @.str.149, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  br label %.noexc.i419

bb.dj:                                            ; preds = %.noexc.i405
  %i.pz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit417

bb.dk:                                            ; preds = %.noexc406
  %i.qa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qb = load ptr, ptr %27, align 8              ; 2 uses
  %i.qc = icmp eq ptr %i.qb, %i.ph
  br i1 %i.qc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit417, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i415

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i415: ; preds = %bb.dk
  %i.qd = load i64, ptr %i.ph, align 8
  %i.qe = add i64 %i.qd, 1
  call void @_ZdlPvm(ptr noundef %i.qb, i64 noundef %i.qe) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit417

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit417: ; preds = %bb.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i415, %bb.dj
  %.pn137 = phi { ptr, i32 } [ %i.pz, %bb.dj ], [ %i.qa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i415 ], [ %i.qa, %bb.dk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #27
  br label %bb.fg

.noexc.i419:                                      ; preds = %bb.di, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #27
  %i.qf = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 6 uses
  store ptr %i.qf, ptr %28, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  store i64 21, ptr %i.d, align 8
  %i.qg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc420 unwind label %bb.dq ; 2 uses

.noexc420:                                        ; preds = %.noexc.i419
  store ptr %i.qg, ptr %28, align 8
  %i.qh = load i64, ptr %i.d, align 8             ; 3 uses
  store i64 %i.qh, ptr %i.qf, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.qg, ptr noundef nonnull align 1 dereferenceable(21) @.str.150, i64 21, i1 false)
  %i.qi = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i64 %i.qh, ptr %i.qi, align 8
  %i.qj = load ptr, ptr %28, align 8
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 %i.qh
  store i8 0, ptr %i.qk, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  %i.ql = invoke noundef ptr @_ZNK6Assimp3FBX13PropertyTable3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 8 dereferenceable(32) %28)
          to label %.noexc424 unwind label %bb.dr ; 2 uses

.noexc424:                                        ; preds = %.noexc420
  %i.qm = icmp eq ptr %i.ql, null
  br i1 %i.qm, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %.noexc424
  store i8 0, ptr %i.l, align 1
  br label %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit425

bb.dm:                                            ; preds = %.noexc424
  %i.qn = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %i.ql, ptr nonnull @_ZTIN6Assimp3FBX8PropertyE, ptr nonnull @_ZTIN6Assimp3FBX13TypedPropertyIfEE, i64 0) #27 ; 2 uses
  %i.qo = icmp eq ptr %i.qn, null
  br i1 %i.qo, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  store i8 0, ptr %i.l, align 1
  br label %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit425

bb.do:                                            ; preds = %bb.dm
  store i8 1, ptr %i.l, align 1
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qn, i64 8
  %i.qq = load float, ptr %i.qp, align 4
  br label %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit425

_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit425: ; preds = %bb.do, %bb.dn, %bb.dl
  %i.qr = phi i1 [ false, %bb.dl ], [ true, %bb.do ], [ false, %bb.dn ]
  %.2.i423 = phi float [ 0.000000e+00, %bb.dl ], [ %i.qq, %bb.do ], [ 0.000000e+00, %bb.dn ]
  %i.qs = load ptr, ptr %28, align 8              ; 2 uses
  %i.qt = icmp eq ptr %i.qs, %i.qf
  br i1 %i.qt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit428, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i426

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i426: ; preds = %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit425
  %i.qu = load i64, ptr %i.qf, align 8
  %i.qv = add i64 %i.qu, 1
  call void @_ZdlPvm(ptr noundef %i.qs, i64 noundef %i.qv) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit428

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit428: ; preds = %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit425, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i426
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #27
  store float %.2.i423, ptr %i.w, align 4
  br i1 %i.qr, label %bb.dp, label %._crit_edge.i.i432
end_hunk_0
begin_hunk_1_@_ZN6Assimp3FBX12FBXConverter14GetTexturePathEPKNS0_7TextureE:bb.a
  br i1 %.not.i.i, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = icmp eq ptr %i.j, %i.p
  br i1 %i.q, label %_ZNSt13unordered_mapIPKN6Assimp3FBX5VideoEjSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_jEEE4findERSA_.exit, label %bb.e, !llvm.loop !239

bb.g:                                             ; preds = %bb.c
  %i.r = ptrtoint ptr %i.j to i64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  %i.u = urem i64 %i.r, %i.t                      ; 2 uses
  %i.v = load ptr, ptr %i.k, align 8
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.u
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.x, align 8              ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = icmp eq ptr %i.j, %i.aa
  br i1 %i.ab, label %_ZNSt13unordered_mapIPKN6Assimp3FBX5VideoEjSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_jEEE4findERSA_.exit, label %.lr.ph.i.i.i.i

bb.i:                                             ; preds = %bb.j
  %i.ac = icmp eq ptr %i.j, %i.af
  br i1 %i.ac, label %_ZNSt13unordered_mapIPKN6Assimp3FBX5VideoEjSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_jEEE4findERSA_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !13

.lr.ph.i.i.i.i:                                   ; preds = %bb.h, %bb.i
  %.020.i.i.i.i = phi ptr [ %i.ad, %bb.i ], [ %i.y, %bb.h ]
  %i.ad = load ptr, ptr %.020.i.i.i.i, align 8    ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not18.i.i.i.i, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = urem i64 %i.ag, %i.t
  %.not19.i.i.i.i = icmp eq i64 %i.ah, %i.u
  br i1 %.not19.i.i.i.i, label %bb.i, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !13

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.j
  br label %.loopexit, !llvm.loop !13

_ZNSt13unordered_mapIPKN6Assimp3FBX5VideoEjSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_jEEE4findERSA_.exit: ; preds = %bb.i, %bb.f, %bb.h
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.f ], [ %i.y, %bb.h ], [ %i.ad, %bb.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16
  %i.aj = load i32, ptr %i.ai, align 8
  br label %bb.o

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %bb.e, %..loopexit_crit_edge21.i.i.i.i, %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 168
  %i.al = load i64, ptr %i.ak, align 8
  %.not7 = icmp eq i64 %i.al, 0
  br i1 %.not7, label %.thread, label %bb.k

bb.k:                                             ; preds = %.loopexit
  %i.am = tail call noundef i32 @_ZN6Assimp3FBX12FBXConverter12ConvertVideoERKNS0_5VideoE(ptr noundef nonnull align 8 dereferenceable(529) %1, ptr noundef nonnull align 8 dereferenceable(184) %i.j) ; 2 uses
  %i.an = ptrtoint ptr %i.j to i64                ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ap = load i64, ptr %i.ao, align 8            ; 2 uses
  %i.aq = urem i64 %i.an, %i.ap                   ; 3 uses
  %i.ar = load ptr, ptr %i.k, align 8
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.aq
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %.not.i.i.i.i8 = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i8, label %.loopexit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = load ptr, ptr %i.at, align 8            ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = icmp eq ptr %i.j, %i.aw
  br i1 %i.ax, label %_ZNSt13unordered_mapIPKN6Assimp3FBX5VideoEjSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_jEEEixERSA_.exit, label %.lr.ph.i.i.i.i9

bb.m:                                             ; preds = %bb.n
  %i.ay = icmp eq ptr %i.j, %i.bb
  br i1 %i.ay, label %_ZNSt13unordered_mapIPKN6Assimp3FBX5VideoEjSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_jEEEixERSA_.exit, label %.lr.ph.i.i.i.i9, !llvm.loop !13

.lr.ph.i.i.i.i9:                                  ; preds = %bb.l, %bb.m
  %.020.i.i.i.i10 = phi ptr [ %i.az, %bb.m ], [ %i.au, %bb.l ]
  %i.az = load ptr, ptr %.020.i.i.i.i10, align 8  ; 4 uses
  %.not18.i.i.i.i11 = icmp eq ptr %i.az, null
  br i1 %.not18.i.i.i.i11, label %.loopexit.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i9
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = urem i64 %i.bc, %i.ap
  %.not19.i.i.i.i12 = icmp eq i64 %i.bd, %i.aq
  br i1 %.not19.i.i.i.i12, label %bb.m, label %..loopexit_crit_edge21.i.i.i.i13, !llvm.loop !13

..loopexit_crit_edge21.i.i.i.i13:                 ; preds = %bb.n
  br label %.loopexit.i.i, !llvm.loop !13

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i9, %..loopexit_crit_edge21.i.i.i.i13, %bb.k
  %i.be = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30 ; 5 uses
  store ptr null, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %i.j, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i32 0, ptr %i.bg, align 8
  %i.bh = invoke ptr @_ZNSt10_HashtableIPKN6Assimp3FBX5VideoESt4pairIKS4_jESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS9_10_Hash_nodeIS7_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.k, i64 noundef %i.aq, i64 noundef %i.an, ptr noundef nonnull %i.be, i64 noundef 1)
          to label %_ZNSt13unordered_mapIPKN6Assimp3FBX5VideoEjSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_jEEEixERSA_.exit unwind label %_ZNSt10_HashtableIPKN6Assimp3FBX5VideoESt4pairIKS4_jESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

_ZNSt10_HashtableIPKN6Assimp3FBX5VideoESt4pairIKS4_jESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.loopexit.i.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef 24) #29
  resume { ptr, i32 } %i.bi

_ZNSt13unordered_mapIPKN6Assimp3FBX5VideoEjSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_jEEEixERSA_.exit: ; preds = %bb.m, %bb.l, %.loopexit.i.i
  %.pn.i.i = phi ptr [ %i.bh, %.loopexit.i.i ], [ %i.au, %bb.l ], [ %i.az, %bb.m ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  store i32 %i.am, ptr %.1.i.i, align 4
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt13unordered_mapIPKN6Assimp3FBX5VideoEjSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_jEEEixERSA_.exit, %_ZNSt13unordered_mapIPKN6Assimp3FBX5VideoEjSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_jEEE4findERSA_.exit
  %.0 = phi i32 [ %i.aj, %_ZNSt13unordered_mapIPKN6Assimp3FBX5VideoEjSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_jEEE4findERSA_.exit ], [ %i.am, %_ZNSt13unordered_mapIPKN6Assimp3FBX5VideoEjSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_jEEEixERSA_.exit ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.bk = load ptr, ptr %i.bj, align 8, !nonnull !3, !align !9
  %i.bl = load ptr, ptr %i.bk, align 8, !nonnull !3
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  %i.bn = load i8, ptr %i.bm, align 1, !range !4, !noundef !3
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 42, ptr %i.bp, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 2 uses
  %i.br = icmp slt i32 %.0, 0
  br i1 %i.br, label %bb.q, label %.lr.ph.i.preheader

bb.q:                                             ; preds = %bb.p
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 45, ptr %i.bq, align 1
  %i.bt = sub nsw i32 0, %.0
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.q, %bb.p
  %.153.i.ph = phi ptr [ %i.bq, %bb.p ], [ %i.bs, %bb.q ]
  %.13350.i.ph = phi i32 [ 1, %bb.p ], [ 2, %bb.q ]
  %.13849.i.ph = phi i32 [ %.0, %bb.p ], [ %i.bt, %bb.q ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.s
  %.153.i = phi ptr [ %.2.i, %bb.s ], [ %.153.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.02752.i = phi i1 [ %or.cond3.i, %bb.s ], [ false, %.lr.ph.i.preheader ]
  %.03051.i = phi i32 [ %i.cd, %bb.s ], [ 1000000000, %.lr.ph.i.preheader ] ; 5 uses
  %.13350.i = phi i32 [ %.234.i, %bb.s ], [ %.13350.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.13849.i = phi i32 [ %.239.i, %bb.s ], [ %.13849.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.bu = sdiv i32 %.13849.i, %.03051.i           ; 3 uses
  %.recomposed = srem i32 %.13849.i, %.03051.i
  %i.bv = icmp ne i32 %i.bu, 0
  %i.bw = icmp eq i32 %.03051.i, 1                ; 2 uses
  %i.bx = or i1 %i.bw, %i.bv
  %or.cond3.i = select i1 %.02752.i, i1 true, i1 %i.bx ; 2 uses
  br i1 %or.cond3.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i
  %i.by = trunc i32 %i.bu to i8
  %i.bz = add i8 %i.by, 48
  %i.ca = getelementptr inbounds nuw i8, ptr %.153.i, i64 1 ; 2 uses
  store i8 %i.bz, ptr %.153.i, align 1
  %i.cb = add nuw nsw i32 %.13350.i, 1            ; 2 uses
  %i.cc = mul i32 %i.bu, %.03051.i                ; 0 uses
  br i1 %i.bw, label %_ZN6Assimp13ASSIMP_itoa10EPcji.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i
  %.239.i = phi i32 [ %.recomposed, %bb.r ], [ %.13849.i, %.lr.ph.i ]
  %.234.i = phi i32 [ %i.cb, %bb.r ], [ %.13350.i, %.lr.ph.i ] ; 3 uses
  %.2.i = phi ptr [ %i.ca, %bb.r ], [ %.153.i, %.lr.ph.i ] ; 2 uses
  %i.cd = sdiv i32 %.03051.i, 10
  %i.ce = icmp ult i32 %.234.i, 1023
  br i1 %i.ce, label %.lr.ph.i, label %_ZN6Assimp13ASSIMP_itoa10EPcji.exit

_ZN6Assimp13ASSIMP_itoa10EPcji.exit:              ; preds = %bb.r, %bb.s
  %.436.i = phi i32 [ %.234.i, %bb.s ], [ %i.cb, %bb.r ]
  %.4.i = phi ptr [ %.2.i, %bb.s ], [ %i.ca, %bb.r ]
  store i8 0, ptr %.4.i, align 1
  store i32 %.436.i, ptr %0, align 4
  br label %.thread

.thread:                                          ; preds = %.loopexit, %bb.o, %_ZN6Assimp13ASSIMP_itoa10EPcji.exit, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX12FBXConverter23TrySetTexturePropertiesEP10aiMaterialRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_7TextureESt4hashISA_ESt8equal_toISA_ESaISt4pairIKSA_SD_EEERSJ_13aiTextureTypePKNS0_12MeshGeometryE(ptr noundef nonnull align 8 dereferenceable(529) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %6 = alloca %struct.aiString, align 4           ; 5 uses
  %7 = alloca %struct.aiUVTransform, align 16     ; 6 uses
  %i.d = alloca i32, align 4                      ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 27 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.e = tail call ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX7TextureEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.bk, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.h = load ptr, ptr %i.g, align 8              ; 5 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.bk, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @_ZN6Assimp3FBX12FBXConverter14GetTexturePathEPKNS0_7TextureE(ptr dead_on_unwind nonnull writable sret(%struct.aiString) align 4 %6, ptr noundef nonnull align 8 dereferenceable(529) %0, ptr noundef nonnull %i.h)
  %i.i = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %6, ptr noundef nonnull @.str.62, i32 noundef %4, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.l = load <2 x i64>, ptr %i.k, align 4
  store <2 x i64> %i.l, ptr %7, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.n = load float, ptr %i.m, align 4
  store float %i.n, ptr %i.j, align 16
  %i.o = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %7, i32 noundef 20, ptr noundef nonnull @.str.63, i32 noundef %4, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 208
  %i.q = load ptr, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  store i32 0, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.r, ptr %9, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.r, ptr noundef nonnull align 1 dereferenceable(5) @.str.64, i64 5, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 5, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 21
  store i8 0, ptr %i.t, align 1
  call void @llvm.experimental.noalias.scope.decl(metadata !266)
  %i.u = invoke noundef ptr @_ZNK6Assimp3FBX13PropertyTable3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %.noexc109 unwind label %bb.s  ; 2 uses

.noexc109:                                        ; preds = %._crit_edge.i.i
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc109
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.w, ptr %8, align 8, !alias.scope !266
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.x, align 8, !alias.scope !266
  store i8 0, ptr %i.w, align 8, !alias.scope !266
  br label %_ZN6Assimp3FBX11PropertyGetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKNS0_13PropertyTableERKS7_Rbb.exit

bb.d:                                             ; preds = %.noexc109
  %i.y = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %i.u, ptr nonnull @_ZTIN6Assimp3FBX8PropertyE, ptr nonnull @_ZTIN6Assimp3FBX13TypedPropertyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 0) #27, !noalias !266 ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.aa, ptr %8, align 8, !alias.scope !266
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.ab, align 8, !alias.scope !266
  store i8 0, ptr %i.aa, align 8, !alias.scope !266
  br label %_ZN6Assimp3FBX11PropertyGetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKNS0_13PropertyTableERKS7_Rbb.exit

bb.f:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.ad, ptr %8, align 8, !alias.scope !266
  %i.ae = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ag = load i64, ptr %i.af, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27, !noalias !266
  store i64 %i.ag, ptr %i.c, align 8, !noalias !266
  %i.ah = icmp ugt i64 %i.ag, 15
  br i1 %i.ah, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.f
  %i.ai = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc110 unwind label %bb.s  ; 2 uses

.noexc110:                                        ; preds = %.noexc.i.i
  store ptr %i.ai, ptr %8, align 8, !alias.scope !266
  %i.aj = load i64, ptr %i.c, align 8, !noalias !266
  store i64 %i.aj, ptr %i.ad, align 8, !alias.scope !266
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc110, %bb.f
  %i.ak = phi ptr [ %i.ai, %.noexc110 ], [ %i.ad, %bb.f ] ; 2 uses
  switch i64 %i.ag, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.al = load i8, ptr %i.ae, align 1
  store i8 %i.al, ptr %i.ak, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.h:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr align 1 %i.ae, i64 %i.ag, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i
  %i.am = load i64, ptr %i.c, align 8, !noalias !266 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.am, ptr %i.an, align 8, !alias.scope !266
  %i.ao = load ptr, ptr %8, align 8, !alias.scope !266
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.am
  store i8 0, ptr %i.ap, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27, !noalias !266
  br label %_ZN6Assimp3FBX11PropertyGetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKNS0_13PropertyTableERKS7_Rbb.exit

_ZN6Assimp3FBX11PropertyGetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKNS0_13PropertyTableERKS7_Rbb.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.e, %bb.c
  %.0 = phi i1 [ false, %bb.c ], [ false, %bb.e ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ]
  %i.aq = load ptr, ptr %9, align 8               ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.r
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6Assimp3FBX11PropertyGetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKNS0_13PropertyTableERKS7_Rbb.exit
  %i.as = load i64, ptr %i.r, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp3FBX11PropertyGetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKNS0_13PropertyTableERKS7_Rbb.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br i1 %.0, label %bb.i, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread176

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.av = load i64, ptr %i.au, align 8
  switch i64 %i.av, label %.thread [
    i64 7, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 0, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread176
  ]

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.i
  %i.aw = load ptr, ptr %8, align 8               ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 1
  %i.ay = xor i32 %i.ax, 1634100580
  %i.az = getelementptr i8, ptr %i.aw, i64 3
  %i.ba = load i32, ptr %i.az, align 1
  %i.bb = xor i32 %i.ba, 1953264993
  %i.bc = or i32 %i.ay, %i.bb
  %i.bd = icmp ne i32 %i.bc, 0
  %i.be = zext i1 %i.bd to i32
  %.not190 = icmp eq i32 %i.be, 0
  br i1 %.not190, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread176, label %.thread

.thread:                                          ; preds = %bb.i, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8            ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8            ; 3 uses
  %i.bj = ptrtoint ptr %i.bi to i64               ; 2 uses
  %i.bk = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bl = sub i64 %i.bj, %i.bk                    ; 3 uses
  %i.bm = ashr i64 %i.bl, 5                       ; 2 uses
  %i.bn = icmp sgt i64 %i.bm, 0
  br i1 %i.bn, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i111

.lr.ph.i.i.i:                                     ; preds = %.thread
  %i.bo = and i64 %i.bl, -32
  %scevgep.i.i.i = getelementptr i8, ptr %i.bg, i64 %i.bo ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.n, %.lr.ph.i.i.i
  %.052.i.i.i = phi i64 [ %i.bm, %.lr.ph.i.i.i ], [ %i.cb, %bb.n ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i ], [ %i.ca, %bb.n ] ; 9 uses
  %i.bp = load ptr, ptr %.sroa.032.051.i.i.i, align 8
  %i.bq = icmp eq ptr %i.bp, %1
  br i1 %i.bq, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = icmp eq ptr %i.bs, %1
  br i1 %i.bt, label %.loopexit.loopexit.split.loop.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = icmp eq ptr %i.bv, %1
  br i1 %i.bw, label %.loopexit.loopexit.split.loop.exit255, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = icmp eq ptr %i.by, %1
  br i1 %i.bz, label %.loopexit.loopexit.split.loop.exit257, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 32
  %i.cb = add nsw i64 %.052.i.i.i, -1
  %i.cc = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.cc, label %bb.j, label %._crit_edge.loopexit.i.i.i, !llvm.loop !255

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.n
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.bj, %.pre59.i.i.i
  br label %._crit_edge.i.i.i111

._crit_edge.i.i.i111:                             ; preds = %._crit_edge.loopexit.i.i.i, %.thread
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.bl, %.thread ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.bg, %.thread ] ; 5 uses
  %i.cd = ashr exact i64 %.pre-phi61.i.i.i, 3
  switch i64 %i.cd, label %.loopexit [
    i64 3, label %bb.o
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i111
  %i.ce = load ptr, ptr %.sroa.032.0.lcssa.i.i.i, align 8
  %i.cf = icmp eq ptr %i.ce, %1
  br i1 %i.cf, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i111, %bb.p
  %.sroa.032.1.i.i.i = phi ptr [ %i.cg, %bb.p ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i111 ] ; 3 uses
  %i.ch = load ptr, ptr %.sroa.032.1.i.i.i, align 8
  %i.ci = icmp eq ptr %i.ch, %1
  br i1 %i.ci, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %._crit_edge._crit_edge.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 8
  br label %._crit_edge._crit_edge57.i.i.i

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i111, %bb.q
  %.sroa.032.2.i.i.i = phi ptr [ %i.cj, %bb.q ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i111 ] ; 2 uses
  %i.ck = load ptr, ptr %.sroa.032.2.i.i.i, align 8
  %i.cl = icmp eq ptr %i.ck, %1
  %spec.select.i.i.i = select i1 %i.cl, ptr %.sroa.032.2.i.i.i, ptr %i.bi
  br label %.loopexit

.loopexit.loopexit.split.loop.exit:               ; preds = %bb.k
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  br label %.loopexit

.loopexit.loopexit.split.loop.exit255:            ; preds = %bb.l
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  br label %.loopexit

.loopexit.loopexit.split.loop.exit257:            ; preds = %bb.m
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %.loopexit.loopexit.split.loop.exit, %.loopexit.loopexit.split.loop.exit255, %.loopexit.loopexit.split.loop.exit257, %._crit_edge.i.i.i111, %bb.o, %._crit_edge._crit_edge.i.i.i, %._crit_edge._crit_edge57.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %spec.select.i.i.i, %._crit_edge._crit_edge57.i.i.i ], [ %i.bi, %._crit_edge.i.i.i111 ], [ %.sroa.032.0.lcssa.i.i.i, %bb.o ], [ %i.co, %.loopexit.loopexit.split.loop.exit257 ], [ %i.cn, %.loopexit.loopexit.split.loop.exit255 ], [ %i.cm, %.loopexit.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.j ]
  %i.cp = ptrtoint ptr %.sroa.08.0.in.sroa.speculated.i.i.i to i64
  %i.cq = sub i64 %i.cp, %i.bk
  %i.cr = lshr exact i64 %i.cq, 3
  %i.cs = trunc i64 %i.cr to i32                  ; 7 uses
  store i32 -1, ptr %i.d, align 4
  %.not92 = icmp eq ptr %5, null
  br i1 %.not92, label %bb.r, label %.preheader192

.preheader192:                                    ; preds = %.loopexit
  %i.ct = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  br label %bb.aw

bb.r:                                             ; preds = %.loopexit
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 280
  %.sroa.0161.0213 = load ptr, ptr %i.cv, align 8 ; 2 uses
  %.not191214 = icmp eq ptr %.sroa.0161.0213, null
  br i1 %.not191214, label %thread-pre-split.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.r
  %i.cw = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  br label %bb.v

bb.s:                                             ; preds = %.noexc.i.i, %._crit_edge.i.i
  %i.cy = landingpad { ptr, i32 }
          cleanup
  %i.cz = load ptr, ptr %9, align 8               ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.r
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112: ; preds = %bb.s
  %i.db = load i64, ptr %i.r, align 8
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dc) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %bb.bj

bb.t:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread176
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.u:                                             ; preds = %thread-pre-split.thread
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.v:                                             ; preds = %.lr.ph, %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA31_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvDpOT_.exit
  %.sroa.0161.0215 = phi ptr [ %.sroa.0161.0213, %.lr.ph ], [ %.sroa.0161.0, %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA31_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvDpOT_.exit ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0161.0215, i64 8
  %i.dg = load ptr, ptr %i.df, align 8            ; 2 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA31_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvDpOT_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.di = call ptr @__dynamic_cast(ptr nonnull %i.dg, ptr nonnull @_ZTIN6Assimp3FBX8GeometryE, ptr nonnull @_ZTIN6Assimp3FBX12MeshGeometryE, i64 0) #27 ; 4 uses
  %.not93 = icmp eq ptr %i.di, null
  br i1 %.not93, label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA31_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvDpOT_.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dj = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6Assimp3FBX12MeshGeometry18GetMaterialIndicesEv(ptr noundef nonnull align 8 dereferenceable(1000) %i.di)
          to label %bb.y unwind label %bb.ah      ; 2 uses

bb.y:                                             ; preds = %bb.x
  %i.dk = load ptr, ptr %i.dj, align 8            ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8            ; 3 uses
  %i.dn = ptrtoint ptr %i.dm to i64               ; 2 uses
  %i.do = ptrtoint ptr %i.dk to i64
  %i.dp = sub i64 %i.dn, %i.do                    ; 3 uses
  %i.dq = ashr i64 %i.dp, 4                       ; 2 uses
  %i.dr = icmp sgt i64 %i.dq, 0
  br i1 %i.dr, label %.lr.ph.i.i.i126, label %._crit_edge.i.i.i115

.lr.ph.i.i.i126:                                  ; preds = %bb.y
  %i.ds = and i64 %i.dp, -16
  %scevgep.i.i.i127 = getelementptr i8, ptr %i.dk, i64 %i.ds ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.ad, %.lr.ph.i.i.i126
  %.052.i.i.i128 = phi i64 [ %i.dq, %.lr.ph.i.i.i126 ], [ %i.ef, %bb.ad ] ; 2 uses
  %.sroa.032.051.i.i.i129 = phi ptr [ %i.dk, %.lr.ph.i.i.i126 ], [ %i.ee, %bb.ad ] ; 9 uses
  %i.dt = load i32, ptr %.sroa.032.051.i.i.i129, align 4
  %i.du = icmp eq i32 %i.dt, %i.cs
  br i1 %i.du, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i129, i64 4
  %i.dw = load i32, ptr %i.dv, align 4
  %i.dx = icmp eq i32 %i.dw, %i.cs
  br i1 %i.dx, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit.loopexit.split.loop.exit265, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i129, i64 8
  %i.dz = load i32, ptr %i.dy, align 4
  %i.ea = icmp eq i32 %i.dz, %i.cs
  br i1 %i.ea, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit.loopexit.split.loop.exit263, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i129, i64 12
  %i.ec = load i32, ptr %i.eb, align 4
  %i.ed = icmp eq i32 %i.ec, %i.cs
  br i1 %i.ed, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit.loopexit.split.loop.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i129, i64 16
  %i.ef = add nsw i64 %.052.i.i.i128, -1
  %i.eg = icmp sgt i64 %.052.i.i.i128, 1
  br i1 %i.eg, label %bb.z, label %._crit_edge.loopexit.i.i.i130, !llvm.loop !256

._crit_edge.loopexit.i.i.i130:                    ; preds = %bb.ad
  %.pre59.i.i.i131 = ptrtoint ptr %scevgep.i.i.i127 to i64
  %.pre60.i.i.i132 = sub i64 %i.dn, %.pre59.i.i.i131
  br label %._crit_edge.i.i.i115

._crit_edge.i.i.i115:                             ; preds = %._crit_edge.loopexit.i.i.i130, %bb.y
  %.pre-phi61.i.i.i116 = phi i64 [ %.pre60.i.i.i132, %._crit_edge.loopexit.i.i.i130 ], [ %i.dp, %bb.y ]
  %.sroa.032.0.lcssa.i.i.i117 = phi ptr [ %scevgep.i.i.i127, %._crit_edge.loopexit.i.i.i130 ], [ %i.dk, %bb.y ] ; 5 uses
  %i.eh = ashr exact i64 %.pre-phi61.i.i.i116, 2
  switch i64 %i.eh, label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA31_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvDpOT_.exit [
    i64 3, label %bb.ae
    i64 2, label %._crit_edge._crit_edge.i.i.i123
    i64 1, label %._crit_edge._crit_edge57.i.i.i118
  ]

bb.ae:                                            ; preds = %._crit_edge.i.i.i115
  %i.ei = load i32, ptr %.sroa.032.0.lcssa.i.i.i117, align 4
  %i.ej = icmp eq i32 %i.ei, %i.cs
  br i1 %i.ej, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i117, i64 4
  br label %._crit_edge._crit_edge.i.i.i123

._crit_edge._crit_edge.i.i.i123:                  ; preds = %._crit_edge.i.i.i115, %bb.af
  %.sroa.032.1.i.i.i125 = phi ptr [ %i.ek, %bb.af ], [ %.sroa.032.0.lcssa.i.i.i117, %._crit_edge.i.i.i115 ] ; 3 uses
  %i.el = load i32, ptr %.sroa.032.1.i.i.i125, align 4
  %i.em = icmp eq i32 %i.el, %i.cs
  br i1 %i.em, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge._crit_edge.i.i.i123
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i125, i64 4
  br label %._crit_edge._crit_edge57.i.i.i118

._crit_edge._crit_edge57.i.i.i118:                ; preds = %._crit_edge.i.i.i115, %bb.ag
  %.sroa.032.2.i.i.i120 = phi ptr [ %i.en, %bb.ag ], [ %.sroa.032.0.lcssa.i.i.i117, %._crit_edge.i.i.i115 ] ; 2 uses
  %i.eo = load i32, ptr %.sroa.032.2.i.i.i120, align 4
  %i.ep = icmp eq i32 %i.eo, %i.cs
  %spec.select.i.i.i121 = select i1 %i.ep, ptr %.sroa.032.2.i.i.i120, ptr %i.dm
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.ac
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i129, i64 12
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit.loopexit.split.loop.exit263: ; preds = %bb.ab
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i129, i64 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit.loopexit.split.loop.exit265: ; preds = %bb.aa
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i129, i64 4
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit: ; preds = %bb.z, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit.loopexit.split.loop.exit263, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit.loopexit.split.loop.exit265, %._crit_edge._crit_edge57.i.i.i118, %._crit_edge._crit_edge.i.i.i123, %bb.ae
  %.sroa.08.0.in.sroa.speculated.i.i.i122 = phi ptr [ %.sroa.032.1.i.i.i125, %._crit_edge._crit_edge.i.i.i123 ], [ %spec.select.i.i.i121, %._crit_edge._crit_edge57.i.i.i118 ], [ %.sroa.032.0.lcssa.i.i.i117, %bb.ae ], [ %i.es, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit.loopexit.split.loop.exit265 ], [ %i.er, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit.loopexit.split.loop.exit263 ], [ %i.eq, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i129, %bb.z ]
  %i.et = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i122, %i.dm
  br i1 %i.et, label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA31_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvDpOT_.exit, label %.preheader

bb.ah:                                            ; preds = %bb.x
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

.preheader:                                       ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135
  %.072212 = phi i32 [ %i.fn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135 ], [ 0, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit ] ; 6 uses
  %.073211 = phi i32 [ %i.fi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135 ], [ -1, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit ] ; 3 uses
  %i.ev = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6Assimp3FBX12MeshGeometry16GetTextureCoordsEj(ptr noundef nonnull align 8 dereferenceable(1000) %i.di, i32 noundef %.072212)
          to label %bb.ai unwind label %bb.aj     ; 2 uses

bb.ai:                                            ; preds = %.preheader
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = icmp eq ptr %i.ew, %i.ey
  br i1 %i.ez, label %bb.ao, label %bb.ak

bb.aj:                                            ; preds = %.preheader
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  invoke void @_ZNK6Assimp3FBX12MeshGeometry26GetTextureCoordChannelNameB5cxx11Ej(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(1000) %i.di, i32 noundef %.072212)
          to label %bb.al unwind label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.fb = load i64, ptr %i.cw, align 8            ; 4 uses
  %i.fc = load i64, ptr %i.au, align 8
  %i.fd = icmp eq i64 %i.fb, %i.fc
  br i1 %i.fd, label %bb.am, label %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread182_crit_edge

._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread182_crit_edge: ; preds = %bb.al
  %.pre226 = load ptr, ptr %10, align 8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread182

bb.am:                                            ; preds = %bb.al
  %i.fe = icmp eq i64 %i.fb, 0
  %.pre227 = load ptr, ptr %10, align 8           ; 3 uses
  br i1 %i.fe, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread182, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.am
  %i.ff = load ptr, ptr %8, align 8
  %bcmp.i = call i32 @bcmp(ptr %.pre227, ptr %i.ff, i64 %i.fb)
  %bcmp.i.fr = freeze i32 %bcmp.i
  %i.fg = icmp ne i32 %bcmp.i.fr, 0               ; 2 uses
  %spec.select = select i1 %i.fg, i32 %.073211, i32 %.072212
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread182

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread182: ; preds = %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread182_crit_edge, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %bb.am
  %i.fh = phi ptr [ %.pre227, %bb.am ], [ %.pre227, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ %.pre226, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread182_crit_edge ] ; 2 uses
  %.not216 = phi i1 [ false, %bb.am ], [ %i.fg, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ true, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread182_crit_edge ]
  %i.fi = phi i32 [ %.072212, %bb.am ], [ %spec.select, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ %.073211, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread182_crit_edge ] ; 2 uses
  %i.fj = icmp eq ptr %i.fh, %i.cx
  br i1 %i.fj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i134, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i134: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread182
  %i.fk = icmp ult i64 %i.fb, 16
  call void @llvm.assume(i1 %i.fk)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread182
  %i.fl = load i64, ptr %i.cx, align 8
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fm) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i134, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  %i.fn = add nuw nsw i32 %.072212, 1
  %i.fo = icmp samesign ult i32 %.072212, 7
  %or.cond = select i1 %.not216, i1 %i.fo, i1 false
  br i1 %or.cond, label %.preheader, label %bb.ao, !llvm.loop !269

bb.an:                                            ; preds = %bb.ak
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.ao:                                            ; preds = %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135
  %.275 = phi i32 [ %.073211, %bb.ai ], [ %i.fi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135 ] ; 2 uses
  %i.fq = icmp eq i32 %.275, -1
  br i1 %i.fq, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.fr = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc136 unwind label %bb.ar

.noexc136:                                        ; preds = %bb.ap
  br i1 %i.fr, label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA31_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvDpOT_.exit, label %bb.aq

bb.aq:                                            ; preds = %.noexc136
  %i.fs = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc137 unwind label %bb.ar

.noexc137:                                        ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.ft = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11FBXImporterEE6PrefixEv()
          to label %.noexc138 unwind label %bb.ar

.noexc138:                                        ; preds = %.noexc137
  store ptr %i.ft, ptr %i.b, align 8
  invoke void @_ZN6Assimp6Logger4warnIJPKcRA31_S2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.fs, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(31) @.str.66, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 1 dereferenceable(31) @.str.67)
          to label %.noexc139 unwind label %bb.ar

.noexc139:                                        ; preds = %.noexc138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA31_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvDpOT_.exit

bb.ar:                                            ; preds = %.noexc142, %.noexc141, %bb.av, %bb.au, %.noexc138, %.noexc137, %bb.aq, %bb.ap
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.as:                                            ; preds = %bb.ao
  %12 = load i32, ptr %i.d, align 4
  %i.fv = icmp eq i32 %12, -1
  br i1 %i.fv, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i32 %.275, ptr %i.d, align 4
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA31_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvDpOT_.exit

bb.au:                                            ; preds = %bb.as
  %i.fw = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc140 unwind label %bb.ar

.noexc140:                                        ; preds = %bb.au
  br i1 %i.fw, label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA31_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvDpOT_.exit, label %bb.av

bb.av:                                            ; preds = %.noexc140
  %i.fx = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc141 unwind label %bb.ar

.noexc141:                                        ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.fy = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11FBXImporterEE6PrefixEv()
          to label %.noexc142 unwind label %bb.ar

.noexc142:                                        ; preds = %.noexc141
  store ptr %i.fy, ptr %i.a, align 8
  invoke void @_ZN6Assimp6Logger4warnIJPKcRA22_S2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA65_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.fx, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(22) @.str.68, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 1 dereferenceable(65) @.str.69)
          to label %.noexc143 unwind label %bb.ar

.noexc143:                                        ; preds = %.noexc142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA31_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA31_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvDpOT_.exit: ; preds = %._crit_edge.i.i.i115, %bb.v, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit, %bb.at, %.noexc136, %.noexc139, %.noexc140, %.noexc143, %bb.w
  %.sroa.0161.0 = load ptr, ptr %.sroa.0161.0215, align 8 ; 2 uses
  %.not191 = icmp eq ptr %.sroa.0161.0, null
  br i1 %.not191, label %thread-pre-split.loopexit, label %bb.v

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, %.preheader192
  %.063202 = phi i32 [ 0, %.preheader192 ], [ %i.gs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148 ] ; 5 uses
  %.064201 = phi i32 [ -1, %.preheader192 ], [ %i.gn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148 ] ; 3 uses
  %i.fz = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6Assimp3FBX12MeshGeometry16GetTextureCoordsEj(ptr noundef nonnull align 8 dereferenceable(1000) %5, i32 noundef %.063202)
          to label %bb.ax unwind label %bb.ay     ; 2 uses

bb.ax:                                            ; preds = %bb.aw
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8
  %i.gd = icmp eq ptr %i.ga, %i.gc
  br i1 %i.gd, label %bb.bd, label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  invoke void @_ZNK6Assimp3FBX12MeshGeometry26GetTextureCoordChannelNameB5cxx11Ej(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(1000) %5, i32 noundef %.063202)
          to label %bb.ba unwind label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.gf = load i64, ptr %i.ct, align 8            ; 4 uses
  %i.gg = load i64, ptr %i.au, align 8
  %i.gh = icmp eq i64 %i.gf, %i.gg
  br i1 %i.gh, label %bb.bb, label %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit145.thread186_crit_edge

._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit145.thread186_crit_edge: ; preds = %bb.ba
  %.pre = load ptr, ptr %11, align 8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit145.thread186

bb.bb:                                            ; preds = %bb.ba
  %i.gi = icmp eq i64 %i.gf, 0
  %.pre225 = load ptr, ptr %11, align 8           ; 3 uses
  br i1 %i.gi, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit145.thread186, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit145

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit145: ; preds = %bb.bb
  %i.gj = load ptr, ptr %8, align 8
  %bcmp.i144 = call i32 @bcmp(ptr %.pre225, ptr %i.gj, i64 %i.gf)
  %bcmp.i144.fr = freeze i32 %bcmp.i144
  %i.gk = icmp eq i32 %bcmp.i144.fr, 0            ; 2 uses
  %spec.select189 = select i1 %i.gk, i32 %.063202, i32 %.064201
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit145.thread186

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit145.thread186: ; preds = %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit145.thread186_crit_edge, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit145, %bb.bb
  %i.gl = phi ptr [ %.pre225, %bb.bb ], [ %.pre225, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit145 ], [ %.pre, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit145.thread186_crit_edge ] ; 2 uses
  %i.gm = phi i1 [ true, %bb.bb ], [ %i.gk, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit145 ], [ false, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit145.thread186_crit_edge ]
  %i.gn = phi i32 [ %.063202, %bb.bb ], [ %spec.select189, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit145 ], [ %.064201, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit145.thread186_crit_edge ] ; 2 uses
  %i.go = icmp eq ptr %i.gl, %i.cu
  br i1 %i.go, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i147, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i147: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit145.thread186
  %i.gp = icmp ult i64 %i.gf, 16
  call void @llvm.assume(i1 %i.gp)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit145.thread186
  %i.gq = load i64, ptr %i.cu, align 8
  %i.gr = add i64 %i.gq, 1
  call void @_ZdlPvm(ptr noundef %i.gl, i64 noundef %i.gr) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i147, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  %i.gs = add nuw nsw i32 %.063202, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.gs, 8
  %or.cond271 = select i1 %i.gm, i1 true, i1 %exitcond.not
  br i1 %or.cond271, label %bb.bd, label %bb.aw, !llvm.loop !270

bb.bc:                                            ; preds = %bb.az
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bd:                                            ; preds = %bb.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148
  %.266 = phi i32 [ %.064201, %bb.ax ], [ %i.gn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148 ] ; 3 uses
  %i.gu = icmp eq i32 %.266, -1
  br i1 %i.gu, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA31_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvDpOT_(ptr noundef nonnull align 1 dereferenceable(31) @.str.66, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 1 dereferenceable(31) @.str.67)
          to label %bb.bg unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bg:                                            ; preds = %bb.bd, %bb.be
  store i32 %.266, ptr %i.d, align 4
  br label %thread-pre-split

thread-pre-split.loopexit:                        ; preds = %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA31_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvDpOT_.exit
  %.pr.pre = load i32, ptr %i.d, align 4
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %thread-pre-split.loopexit, %bb.bg
  %i.gw = phi i32 [ %.266, %bb.bg ], [ %.pr.pre, %thread-pre-split.loopexit ]
  %i.gx = icmp eq i32 %i.gw, -1
  br i1 %i.gx, label %thread-pre-split.thread, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread176

thread-pre-split.thread:                          ; preds = %bb.r, %thread-pre-split
  invoke void @_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA30_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA25_S4_EEEvDpOT_(ptr noundef nonnull align 1 dereferenceable(30) @.str.70, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 1 dereferenceable(25) @.str.71)
          to label %bb.bh unwind label %bb.u

bb.bh:                                            ; preds = %thread-pre-split.thread
  store i32 0, ptr %i.d, align 4
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread176

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread176: ; preds = %bb.i, %thread-pre-split, %bb.bh, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.gy = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.d, i32 noundef 4, ptr noundef nonnull @.str.72, i32 noundef %4, i32 noundef 0, i32 noundef 4)
          to label %_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit unwind label %bb.t ; 0 uses

_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit:      ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread176
  %i.gz = load ptr, ptr %8, align 8               ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.hb = icmp eq ptr %i.gz, %i.ha
  br i1 %i.hb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150: ; preds = %_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit
  %i.hc = load i64, ptr %i.ha, align 8
  %i.hd = add i64 %i.hc, 1
  call void @_ZdlPvm(ptr noundef %i.gz, i64 noundef %i.hd) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152: ; preds = %_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.bk

bb.bi:                                            ; preds = %bb.ah, %bb.ar, %bb.an, %bb.aj, %bb.u, %bb.ay, %bb.bc, %bb.bf, %bb.t
  %.pn106 = phi { ptr, i32 } [ %i.dd, %bb.t ], [ %i.de, %bb.u ], [ %i.ge, %bb.ay ], [ %i.gv, %bb.bf ], [ %i.gt, %bb.bc ], [ %i.eu, %bb.ah ], [ %i.fa, %bb.aj ], [ %i.fu, %bb.ar ], [ %i.fp, %bb.an ]
  %i.he = load ptr, ptr %8, align 8               ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.hg = icmp eq ptr %i.he, %i.hf
  br i1 %i.hg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153: ; preds = %bb.bi
  %i.hh = load i64, ptr %i.hf, align 8
  %i.hi = add i64 %i.hh, 1
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hi) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.bj

bb.bj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114
  %.pn106.pn = phi { ptr, i32 } [ %.pn106, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155 ], [ %i.cy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  resume { ptr, i32 } %.pn106.pn

bb.bk:                                            ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA31_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvDpOT_(ptr noundef nonnull align 1 dereferenceable(31) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(31) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.d = tail call noundef ptr @_ZN6Assimp12LogFunctionsINS_11FBXImporterEE6PrefixEv()
  store ptr %i.d, ptr %i.a, align 8
  call void @_ZN6Assimp6Logger4warnIJPKcRA31_S2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(31) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(31) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA30_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA25_S4_EEEvDpOT_(ptr noundef nonnull align 1 dereferenceable(30) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(25) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.d = tail call noundef ptr @_ZN6Assimp12LogFunctionsINS_11FBXImporterEE6PrefixEv()
  store ptr %i.d, ptr %i.a, align 8
  call void @_ZN6Assimp6Logger4warnIJPKcRA30_S2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA25_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(30) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(25) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX12FBXConverter23TrySetTexturePropertiesEP10aiMaterialRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_14LayeredTextureESt4hashISA_ESt8equal_toISA_ESaISt4pairIKSA_SD_EEERSJ_13aiTextureTypePKNS0_12MeshGeometryE(ptr noundef nonnull align 8 dereferenceable(529) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %6 = alloca %struct.aiString, align 4           ; 5 uses
  %7 = alloca %struct.aiUVTransform, align 16     ; 6 uses
  %i.g = alloca i32, align 4                      ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 20 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.h = tail call ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX14LayeredTextureEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.bj, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = load ptr, ptr %i.l, align 8
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = lshr i64 %i.r, 3                         ; 2 uses
  %i.t = trunc i64 %i.s to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.v = load i32, ptr %i.u, align 8
  store i32 %i.v, ptr %i.f, align 4
  %i.w = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.f, i32 noundef 4, ptr noundef nonnull @.str.73, i32 noundef %4, i32 noundef 0, i32 noundef 4) ; 0 uses
  %i.x = icmp sgt i32 %i.t, 0
  br i1 %i.x, label %._crit_edge.i.i.lr.ph, label %._crit_edge

._crit_edge.i.i.lr.ph:                            ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 11 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.not98 = icmp eq ptr %5, null
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %wide.trip.count = and i64 %i.s, 2147483647
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 21
  br label %._crit_edge.i.i

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  br label %bb.bj

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167
  %indvars.iv = phi i64 [ 0, %._crit_edge.i.i.lr.ph ], [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167 ] ; 3 uses
  %i.al = load ptr, ptr %i.j, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv
  %i.ap = load ptr, ptr %i.ao, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @_ZN6Assimp3FBX12FBXConverter14GetTexturePathEPKNS0_7TextureE(ptr dead_on_unwind nonnull writable sret(%struct.aiString) align 4 %6, ptr noundef nonnull align 8 dereferenceable(529) %0, ptr noundef %i.ap)
  %i.aq = trunc nuw nsw i64 %indvars.iv to i32    ; 3 uses
  %i.ar = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %6, ptr noundef nonnull @.str.62, i32 noundef %4, i32 noundef %i.aq) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.at = load <2 x i64>, ptr %i.as, align 4
  store <2 x i64> %i.at, ptr %7, align 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  %i.av = load float, ptr %i.au, align 4
  store float %i.av, ptr %i.y, align 16
  %i.aw = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %7, i32 noundef 20, ptr noundef nonnull @.str.63, i32 noundef %4, i32 noundef %i.aq, i32 noundef 1) ; 0 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 208
  %i.ay = load ptr, ptr %i.ax, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #27
  store i32 0, ptr %i.g, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  store ptr %i.z, ptr %9, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.z, ptr noundef nonnull align 1 dereferenceable(5) @.str.64, i64 5, i1 false)
  store i64 5, ptr %i.aa, align 8
  store i8 0, ptr %i.ak, align 1
  call void @llvm.experimental.noalias.scope.decl(metadata !271)
  %i.az = invoke noundef ptr @_ZNK6Assimp3FBX13PropertyTable3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %.noexc115 unwind label %bb.s  ; 2 uses

.noexc115:                                        ; preds = %._crit_edge.i.i
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.c, label %bb.d
end_hunk_1
begin_hunk_2_@_ZN6Assimp3FBX12FBXConverter24GetColorPropertyFactoredERKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_Rbb:bb.a
bb.g:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.0.0.copyload31.i = load <2 x float>, ptr %i.j, align 4 ; 6 uses
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.10.0.copyload.i = load float, ptr %.sroa.10.0..sroa_idx.i, align 4 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = load i64, ptr %i.k, align 8
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = tail call noundef ptr @_ZNK6Assimp3FBX13PropertyTable3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 8 dereferenceable(32) %4) ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  br i1 %6, label %bb.j, label %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = tail call noundef ptr @_ZNK6Assimp3FBX13PropertyTable3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %4) ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %.119.i = phi ptr [ %i.n, %bb.h ], [ %i.s, %bb.k ]
  %i.u = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %.119.i, ptr nonnull @_ZTIN6Assimp3FBX8PropertyE, ptr nonnull @_ZTIN6Assimp3FBX13TypedPropertyIfEE, i64 0) #27 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load float, ptr %i.w, align 4            ; 2 uses
  %i.y = insertelement <2 x float> poison, float %i.x, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aa = fmul <2 x float> %.sroa.0.0.copyload31.i, %i.z
  %i.ab = fmul float %.sroa.10.0.copyload.i, %i.x
  br label %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit.thread

_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit.thread: ; preds = %bb.m, %bb.i, %bb.j, %bb.k, %bb.l, %bb.g, %bb.f
  %.sroa.11.0.sink = phi float [ %.sroa.10.0.copyload.i, %bb.g ], [ 0.000000e+00, %bb.f ], [ %i.ab, %bb.m ], [ %.sroa.10.0.copyload.i, %bb.i ], [ %.sroa.10.0.copyload.i, %bb.j ], [ %.sroa.10.0.copyload.i, %bb.k ], [ %.sroa.10.0.copyload.i, %bb.l ]
  %i.ac = phi <2 x float> [ %.sroa.0.0.copyload31.i, %bb.g ], [ zeroinitializer, %bb.f ], [ %i.aa, %bb.m ], [ %.sroa.0.0.copyload31.i, %bb.i ], [ %.sroa.0.0.copyload31.i, %bb.j ], [ %.sroa.0.0.copyload31.i, %bb.k ], [ %.sroa.0.0.copyload31.i, %bb.l ]
  store <2 x float> %i.ac, ptr %0, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.sroa.11.0.sink, ptr %i.ad, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX12FBXConverter28GetColorPropertyFromMaterialERKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERb(ptr dead_on_unwind noalias writable writeonly sret(%struct.aiColor3D) align 4 captures(none) %0, ptr nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, ptr noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %4) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !277)
  %i.a = load ptr, ptr %3, align 8, !noalias !277
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noalias !277 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr %i.d, ptr %5, align 8, !alias.scope !280
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 0, ptr %i.e, align 8, !alias.scope !280
  store i8 0, ptr %i.d, align 8, !alias.scope !280
  %i.f = add i64 %i.c, 5
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.f)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.e, align 8, !alias.scope !280
  %i.h = sub i64 4611686018427387903, %i.g
  %i.i = icmp ult i64 %i.h, %i.c
  br i1 %i.i, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.b
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.a, i64 noundef %i.c)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.k = load i64, ptr %i.e, align 8, !alias.scope !280
  %i.l = add i64 %i.k, -4611686018427387899
  %i.m = icmp ult i64 %i.l, 5
  br i1 %i.m, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.225) #31
          to label %.cont.i.i unwind label %bb.c

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.124, i64 noundef 5)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %5, align 8, !alias.scope !280 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.d
  br i1 %i.q, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.r = load i64, ptr %i.d, align 8, !alias.scope !280
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #29
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.o, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !283)
  %i.t = load ptr, ptr %3, align 8, !noalias !283
  %i.u = load i64, ptr %i.b, align 8, !noalias !283 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.v, ptr %6, align 8, !alias.scope !286
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i64 0, ptr %i.w, align 8, !alias.scope !286
  store i8 0, ptr %i.v, align 8, !alias.scope !286
  %i.x = add i64 %i.u, 6
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.x)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.y = load i64, ptr %i.w, align 8, !alias.scope !286
  %i.z = sub i64 4611686018427387903, %i.y
  %i.aa = icmp ult i64 %i.z, %i.u
  br i1 %i.aa, label %.invoke.i.i14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i11: ; preds = %bb.d
  %i.ab = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.t, i64 noundef %i.u)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i12 unwind label %bb.e ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i12: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i11
  %i.ac = load i64, ptr %i.w, align 8, !alias.scope !286
  %i.ad = add i64 %i.ac, -4611686018427387898
  %i.ae = icmp ult i64 %i.ad, 6
  br i1 %i.ae, label %.invoke.i.i14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i13

.invoke.i.i14:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i12, %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.225) #31
          to label %.cont.i.i15 unwind label %bb.e

.cont.i.i15:                                      ; preds = %.invoke.i.i14
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i12
  %i.af = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.125, i64 noundef 6)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit16 unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i13, %.invoke.i.i14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i11, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load ptr, ptr %6, align 8, !alias.scope !286 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.v
  br i1 %i.ai, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit16: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i13
  call void @llvm.experimental.noalias.scope.decl(metadata !289)
  store i8 1, ptr %4, align 1, !noalias !289
  %i.aj = invoke noundef ptr @_ZNK6Assimp3FBX13PropertyTable3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.noexc unwind label %bb.p     ; 2 uses

.noexc:                                           ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit16
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.noexc
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.am = load ptr, ptr %i.al, align 8, !noalias !289 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = invoke noundef ptr @_ZNK6Assimp3FBX13PropertyTable3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.noexc17 unwind label %bb.p   ; 2 uses

.noexc17:                                         ; preds = %bb.g
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.noexc17, %.noexc
  %.1.i.i = phi ptr [ %i.aj, %.noexc ], [ %i.ao, %.noexc17 ]
  %i.aq = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %.1.i.i, ptr nonnull @_ZTIN6Assimp3FBX8PropertyE, ptr nonnull @_ZTIN6Assimp3FBX13TypedPropertyI10aiVector3tIfEEE, i64 0) #27, !noalias !289 ; 3 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %.noexc17, %bb.f
  store i8 0, ptr %4, align 1, !noalias !289
  br label %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit.thread.i

bb.j:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.0.0.copyload31.i.i = load <2 x float>, ptr %i.as, align 4 ; 5 uses
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.sroa.10.0.copyload.i.i = load float, ptr %.sroa.10.0..sroa_idx.i.i, align 4 ; 5 uses
  %i.at = load i64, ptr %i.w, align 8, !noalias !289
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = invoke noundef ptr @_ZNK6Assimp3FBX13PropertyTable3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.noexc18 unwind label %bb.p   ; 2 uses

.noexc18:                                         ; preds = %bb.k
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.l, label %bb.n

bb.l:                                             ; preds = %.noexc18
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !289 ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = invoke noundef ptr @_ZNK6Assimp3FBX13PropertyTable3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.noexc19 unwind label %bb.p   ; 2 uses

.noexc19:                                         ; preds = %bb.m
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit.thread.i, label %bb.n

bb.n:                                             ; preds = %.noexc19, %.noexc18
  %.119.i.i = phi ptr [ %i.av, %.noexc18 ], [ %i.ba, %.noexc19 ]
  %i.bc = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %.119.i.i, ptr nonnull @_ZTIN6Assimp3FBX8PropertyE, ptr nonnull @_ZTIN6Assimp3FBX13TypedPropertyIfEE, i64 0) #27, !noalias !289 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit.thread.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bf = load float, ptr %i.be, align 4          ; 2 uses
  %i.bg = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bi = fmul <2 x float> %.sroa.0.0.copyload31.i.i, %i.bh
  %i.bj = fmul float %.sroa.10.0.copyload.i.i, %i.bf
  br label %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit.thread.i

_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit.thread.i: ; preds = %bb.l, %.noexc19, %bb.n, %bb.o, %bb.j, %bb.i
  %.sroa.11.0.sink.i = phi float [ %.sroa.10.0.copyload.i.i, %bb.j ], [ 0.000000e+00, %bb.i ], [ %i.bj, %bb.o ], [ %.sroa.10.0.copyload.i.i, %bb.n ], [ %.sroa.10.0.copyload.i.i, %bb.l ], [ %.sroa.10.0.copyload.i.i, %.noexc19 ]
  %i.bk = phi <2 x float> [ %.sroa.0.0.copyload31.i.i, %bb.j ], [ zeroinitializer, %bb.i ], [ %i.bi, %bb.o ], [ %.sroa.0.0.copyload31.i.i, %bb.n ], [ %.sroa.0.0.copyload31.i.i, %bb.l ], [ %.sroa.0.0.copyload31.i.i, %.noexc19 ]
  store <2 x float> %i.bk, ptr %0, align 4, !alias.scope !289
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.sroa.11.0.sink.i, ptr %i.bl, align 4, !alias.scope !289
  %i.bm = load ptr, ptr %6, align 8               ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.v
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit.thread.i
  %i.bo = load i64, ptr %i.v, align 8
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp3FBX11PropertyGetIfEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.bq = load ptr, ptr %5, align 8               ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.d
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bs = load i64, ptr %i.d, align 8
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret void

bb.p:                                             ; preds = %bb.m, %bb.k, %bb.g, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit16
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = load ptr, ptr %6, align 8               ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.v
  br i1 %i.bw, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.p, %bb.e
  %.sink = phi ptr [ %i.ah, %bb.e ], [ %i.bv, %bb.p ]
  %.pn.ph = phi { ptr, i32 } [ %i.ag, %bb.e ], [ %i.bu, %bb.p ]
  %i.bx = load i64, ptr %i.v, align 8
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.by) #29
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.p, %bb.e
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.e ], [ %i.bu, %bb.p ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.bz = load ptr, ptr %5, align 8               ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.d
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %.body
  %i.cb = load i64, ptr %i.d, align 8
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX12FBXConverter16GetColorPropertyERKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbb(ptr dead_on_unwind noalias writable writeonly sret(%struct.aiColor3D) align 4 captures(none) initializes((0, 12)) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(529) %1, ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull writeonly align 1 captures(none) dereferenceable(1) initializes((0, 1)) %4, i1 noundef zeroext %5) local_unnamed_addr #5 align 2 {
bb.a:
  store i8 1, ptr %4, align 1
  %i.a = tail call noundef ptr @_ZNK6Assimp3FBX13PropertyTable3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %5, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef ptr @_ZNK6Assimp3FBX13PropertyTable3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %3) ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.1.i = phi ptr [ %i.a, %bb.a ], [ %i.f, %bb.d ]
  %i.h = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %.1.i, ptr nonnull @_ZTIN6Assimp3FBX8PropertyE, ptr nonnull @_ZTIN6Assimp3FBX13TypedPropertyI10aiVector3tIfEEE, i64 0) #27 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  store i8 0, ptr %4, align 1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.0.0.copyload31.i = load <2 x float>, ptr %i.j, align 4
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.10.0.copyload.i = load float, ptr %.sroa.10.0..sroa_idx.i, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.10.0.copyload.i.sink = phi float [ %.sroa.10.0.copyload.i, %bb.g ], [ 0.000000e+00, %bb.f ]
  %i.k = phi <2 x float> [ %.sroa.0.0.copyload31.i, %bb.g ], [ zeroinitializer, %bb.f ]
  store <2 x float> %i.k, ptr %0, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.sroa.10.0.copyload.i.sink, ptr %i.l, align 4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef double @_ZN6Assimp3FBX12FBXConverter17FrameRateToDoubleENS0_18FileGlobalSettings9FrameRateEd(i32 noundef %0, double noundef %1) local_unnamed_addr #13 align 2 {
bb.a:
  switch i32 %0, label %bb.n [
    i32 0, label %bb.o
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 5, label %bb.f
    i32 6, label %bb.g
    i32 7, label %bb.g
    i32 8, label %bb.h
    i32 9, label %bb.h
    i32 10, label %bb.i
    i32 11, label %bb.j
    i32 12, label %bb.k
    i32 13, label %bb.l
    i32 14, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  br label %bb.o

bb.d:                                             ; preds = %bb.a
  br label %bb.o

bb.e:                                             ; preds = %bb.a
  br label %bb.o

bb.f:                                             ; preds = %bb.a
  br label %bb.o

bb.g:                                             ; preds = %bb.a, %bb.a
  br label %bb.o

bb.h:                                             ; preds = %bb.a, %bb.a
  br label %bb.o

bb.i:                                             ; preds = %bb.a
  br label %bb.o

bb.j:                                             ; preds = %bb.a
  br label %bb.o

bb.k:                                             ; preds = %bb.a
  br label %bb.o

bb.l:                                             ; preds = %bb.a
  br label %bb.o

bb.m:                                             ; preds = %bb.a
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi double [ -1.000000e+00, %bb.n ], [ %1, %bb.m ], [ 1.200000e+02, %bb.b ], [ 1.000000e+02, %bb.c ], [ 6.000000e+01, %bb.d ], [ 5.000000e+01, %bb.e ], [ 4.800000e+01, %bb.f ], [ 3.000000e+01, %bb.g ], [ f0x403DF853A315435E, %bb.h ], [ 2.500000e+01, %bb.i ], [ 2.400000e+01, %bb.j ], [ 1.000000e+03, %bb.k ], [ 2.397600e+01, %bb.l ], [ 1.000000e+00, %bb.a ]
  ret double %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZNK6Assimp3FBX18FileGlobalSettings8TimeModeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.c, ptr %1, align 8
  store i64 7306086873706621268, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 8, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
end_hunk_2
