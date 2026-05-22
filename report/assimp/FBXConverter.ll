inline.NumInlined: 7594
inline.NumDeleted: 2896
begin_hunk_0_@_ZN6Assimp3FBX12FBXConverter26SetShadingPropertiesCommonEP10aiMaterialRKNS0_13PropertyTableE:._crit_edge.i.i
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
  %.sroa.0.0.copyload31.i.i215 = load <2 x float>, ptr %i.di, align 4, !noalias !215
  %.sroa.10.0..sroa_idx.i.i216 = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %.sroa.10.0.copyload.i.i217 = load float, ptr %.sroa.10.0..sroa_idx.i.i216, align 4, !noalias !215
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
  %i.ek = phi i1 [ false, %bb.ad ], [ true, %bb.ag ], [ false, %bb.af ], [ false, %bb.ab ]
  %.2.i = phi float [ 0.000000e+00, %bb.ad ], [ %i.ej, %bb.ag ], [ 0.000000e+00, %bb.af ], [ 0.000000e+00, %bb.ab ]
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

end_hunk_0
begin_hunk_1_@_ZN6Assimp3FBX12FBXConverter26SetShadingPropertiesCommonEP10aiMaterialRKNS0_13PropertyTableE:._crit_edge.i.i
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
  %.sroa.0.0.copyload31.i.i322 = load <2 x float>, ptr %i.ky, align 4, !noalias !221
  %.sroa.10.0..sroa_idx.i.i323 = getelementptr inbounds nuw i8, ptr %i.kw, i64 16
  %.sroa.10.0.copyload.i.i324 = load float, ptr %.sroa.10.0..sroa_idx.i.i323, align 4, !noalias !221
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
  %i.md = phi i1 [ false, %bb.cc ], [ true, %bb.cf ], [ false, %bb.ce ], [ false, %bb.ca ]
  %.2.i344 = phi float [ 0.000000e+00, %bb.cc ], [ %i.mc, %bb.cf ], [ 0.000000e+00, %bb.ce ], [ 0.000000e+00, %bb.ca ]
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
end_hunk_1
begin_hunk_2_@_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfER13aiQuaterniontIfES3_:bb.a
  %i.ek = fmul float %i.ej, %i.ee
  %.sroa.17.0 = select i1 %i.ed, float %i.eg, float %i.ef ; 4 uses
  %.sroa.22.0 = select i1 %i.ed, float %i.ei, float %i.eh ; 6 uses
  %.sroa.27.0 = select i1 %i.ed, float %i.ek, float %i.ej ; 4 uses
  %i.el = fcmp une float %i.ds, 0.000000e+00      ; 3 uses
  %i.em = fdiv float 1.000000e+00, %i.ds          ; 3 uses
  %i.en = fmul float %i.o, %i.em
  %i.eo = fmul float %i.q, %i.em
  %i.ep = fmul float %i.s, %i.em
  %.sroa.32.0 = select i1 %i.el, float %i.en, float %i.o ; 4 uses
  %.sroa.37.0 = select i1 %i.el, float %i.eo, float %i.q ; 4 uses
  %.sroa.42.0 = select i1 %i.el, float %i.ep, float %i.s ; 6 uses
  %i.eq = fadd float %.sroa.055.0, %.sroa.22.0
  %i.er = fadd float %i.eq, %.sroa.42.0           ; 2 uses
  %i.es = fcmp ogt float %i.er, 0.000000e+00
  br i1 %i.es, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.et = fadd float %i.er, 1.000000e+00
  %i.eu = tail call noundef float @sqrtf(float noundef %i.et) #27
  %i.ev = fsub float %.sroa.7.0, %.sroa.17.0
  %.scalar = fmul float %i.eu, 2.000000e+00
  %i.ew = insertelement <2 x float> <float 2.500000e-01, float poison>, float %.scalar, i64 1 ; 2 uses
  %i.ex = shufflevector <2 x float> %i.ew, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1> ; 2 uses
  %i.ey = fsub float %.sroa.32.0, %.sroa.1260.0
  %i.ez = fsub float %.sroa.27.0, %.sroa.37.0
  %i.fa = shufflevector <2 x float> %i.ew, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.fb = insertelement <4 x float> %i.fa, float %i.ez, i64 1
  %i.fc = insertelement <4 x float> %i.fb, float %i.ey, i64 2
  %i.fd = insertelement <4 x float> %i.fc, float %i.ev, i64 3 ; 2 uses
  %i.fe = fmul <4 x float> %i.fd, %i.ex
  %i.ff = fdiv <4 x float> %i.fd, %i.ex
  %i.fg = shufflevector <4 x float> %i.fe, <4 x float> %i.ff, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.e:                                             ; preds = %bb.c
  %i.fh = fcmp ogt float %.sroa.055.0, %.sroa.22.0
  %i.fi = fcmp ogt float %.sroa.055.0, %.sroa.42.0
  %or.cond.i = and i1 %i.fh, %i.fi
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.fj = fadd float %.sroa.055.0, 1.000000e+00
  %i.fk = fsub float %i.fj, %.sroa.22.0
  %i.fl = fsub float %i.fk, %.sroa.42.0
  %i.fm = tail call noundef float @sqrtf(float noundef %i.fl) #27
  %.scalar76 = fmul float %i.fm, 2.000000e+00
  %i.fn = insertelement <2 x float> <float poison, float 2.500000e-01>, float %.scalar76, i64 0
  %i.fo = shufflevector <2 x float> %i.fn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0> ; 3 uses
  %i.fp = fadd float %.sroa.7.0, %.sroa.17.0
  %i.fq = fadd float %.sroa.1260.0, %.sroa.32.0
  %i.fr = fsub float %.sroa.27.0, %.sroa.37.0
  %i.fs = insertelement <4 x float> poison, float %i.fr, i64 0
  %i.ft = shufflevector <4 x float> %i.fs, <4 x float> %i.fo, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.fu = insertelement <4 x float> %i.ft, float %i.fp, i64 2
  %i.fv = insertelement <4 x float> %i.fu, float %i.fq, i64 3 ; 2 uses
  %i.fw = fdiv <4 x float> %i.fv, %i.fo
  %i.fx = fmul <4 x float> %i.fv, %i.fo
  %i.fy = shufflevector <4 x float> %i.fw, <4 x float> %i.fx, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.g:                                             ; preds = %bb.e
  %i.fz = fcmp ogt float %.sroa.22.0, %.sroa.42.0
  br i1 %i.fz, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ga = fadd float %.sroa.22.0, 1.000000e+00
  %i.gb = fsub float %i.ga, %.sroa.055.0
  %i.gc = fsub float %i.gb, %.sroa.42.0
  %i.gd = tail call noundef float @sqrtf(float noundef %i.gc) #27
  %i.ge = fmul float %i.gd, 2.000000e+00
  %i.gf = fadd float %.sroa.7.0, %.sroa.17.0
  %i.gg = fadd float %.sroa.27.0, %.sroa.37.0
  %i.gh = fsub float %.sroa.32.0, %.sroa.1260.0
  %i.gi = insertelement <4 x float> <float poison, float poison, float 2.500000e-01, float poison>, float %i.gh, i64 0
  %i.gj = insertelement <4 x float> %i.gi, float %i.gf, i64 1
  %i.gk = insertelement <4 x float> %i.gj, float %i.gg, i64 3 ; 2 uses
  %i.gl = insertelement <4 x float> poison, float %i.ge, i64 0
  %i.gm = shufflevector <4 x float> %i.gl, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gn = fdiv <4 x float> %i.gk, %i.gm
  %i.go = fmul <4 x float> %i.gk, %i.gm
  %i.gp = shufflevector <4 x float> %i.gn, <4 x float> %i.go, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.i:                                             ; preds = %bb.g
  %i.gq = fadd float %.sroa.42.0, 1.000000e+00
  %i.gr = fsub float %i.gq, %.sroa.055.0
  %i.gs = fsub float %i.gr, %.sroa.22.0
  %i.gt = tail call noundef float @sqrtf(float noundef %i.gs) #27
  %i.gu = fmul float %i.gt, 2.000000e+00
  %i.gv = fadd float %.sroa.1260.0, %.sroa.32.0
  %i.gw = fadd float %.sroa.27.0, %.sroa.37.0
  %i.gx = fsub float %.sroa.7.0, %.sroa.17.0
  %i.gy = insertelement <4 x float> <float poison, float poison, float poison, float 2.500000e-01>, float %i.gx, i64 0
  %i.gz = insertelement <4 x float> %i.gy, float %i.gv, i64 1
  %i.ha = insertelement <4 x float> %i.gz, float %i.gw, i64 2 ; 2 uses
  %i.hb = insertelement <4 x float> poison, float %i.gu, i64 0
  %i.hc = shufflevector <4 x float> %i.hb, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.hd = fdiv <4 x float> %i.ha, %i.hc
  %i.he = fmul <4 x float> %i.ha, %i.hc
  %i.hf = shufflevector <4 x float> %i.hd, <4 x float> %i.he, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit: ; preds = %bb.d, %bb.f, %bb.h, %bb.i
  %i.hg = phi <4 x float> [ %i.fg, %bb.d ], [ %i.fy, %bb.f ], [ %i.gp, %bb.h ], [ %i.hf, %bb.i ]
  store <4 x float> %i.hg, ptr %2, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 230584300921369395
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.223) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %0, align 8                ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 40
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %_ZNSt12_Vector_baseISt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEESaIS9_EE11_M_allocateEm.exit, label %bb.e

_ZNSt12_Vector_baseISt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEESaIS9_EE11_M_allocateEm.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = mul nuw nsw i64 %1, 40
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #30 ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.d, %i.k
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseISt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEESaIS9_EE11_M_allocateEm.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseISt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEESaIS9_EE11_M_allocateEm.exit ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %i.d, %_ZNSt12_Vector_baseISt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEESaIS9_EE11_M_allocateEm.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !397)
  %i.p = load i32, ptr %.0911.i.i.i, align 4, !alias.scope !397, !noalias !394
  store i32 %i.p, ptr %.012.i.i.i, align 4, !alias.scope !394, !noalias !397
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.s = load <2 x ptr>, ptr %i.r, align 8, !alias.scope !397, !noalias !394
  store <2 x ptr> %i.s, ptr %i.q, align 8, !alias.scope !394, !noalias !397
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.v = load <2 x ptr>, ptr %i.u, align 8, !alias.scope !397, !noalias !394
  store <2 x ptr> %i.v, ptr %i.t, align 8, !alias.scope !394, !noalias !397
  store <4 x ptr> splat (ptr null), ptr %i.r, align 8, !alias.scope !397, !noalias !394
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %.not.i.i.i = icmp eq ptr %i.w, %i.k
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !383

_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit.loopexit: ; preds = %.lr.ph.i.i.i
  %.pre = load ptr, ptr %0, align 8
  br label %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit

_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit: ; preds = %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit.loopexit, %_ZNSt12_Vector_baseISt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEESaIS9_EE11_M_allocateEm.exit
  %i.y = phi ptr [ %.pre, %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit.loopexit ], [ %i.d, %_ZNSt12_Vector_baseISt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEESaIS9_EE11_M_allocateEm.exit ] ; 3 uses
  %.not.i8 = icmp eq ptr %i.y, null
  br i1 %.not.i8, label %_ZNSt12_Vector_baseISt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEESaIS9_EE13_M_deallocateEPS9_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit
  %i.z = load ptr, ptr %i.b, align 8
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ac) #29
  br label %_ZNSt12_Vector_baseISt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEESaIS9_EE13_M_deallocateEPS9_m.exit

_ZNSt12_Vector_baseISt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEESaIS9_EE13_M_deallocateEPS9_m.exit: ; preds = %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit, %bb.d
  store ptr %i.o, ptr %0, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.ad, ptr %i.j, align 8
  %i.ae = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %1
  store ptr %i.ae, ptr %i.b, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt12_Vector_baseISt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEESaIS9_EE13_M_deallocateEPS9_m.exit, %bb.c
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #12

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX12FBXConverter14GetKeyTimeListERKSt6vectorISt5tupleIJSt10shared_ptrIS2_IlSaIlEEES4_IS2_IfSaIfEEEjEESaISB_EE(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::vector.562") align 8 captures(none) initializes((0, 24)) %0, ptr nonnull readnone align 8 captures(none) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.311", align 8   ; 12 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.b = load ptr, ptr %2, align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %.not72 = icmp eq ptr %i.b, %i.d
  br i1 %.not72, label %.thread, label %.lr.ph

.thread:                                          ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNSt6vectorIlSaIlEE7reserveEm.exit

._crit_edge:                                      ; preds = %.lr.ph
  %i.f = icmp ugt i64 %.sroa.speculated, 1152921504606846975
  br i1 %i.f, label %.noexc, label %bb.b

.noexc:                                           ; preds = %._crit_edge
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.223) #31
  unreachable

bb.b:                                             ; preds = %._crit_edge
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.not131 = icmp eq i64 %.sroa.speculated, 0
  br i1 %.not131, label %_ZNSt6vectorIlSaIlEE7reserveEm.exit, label %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.h = shl nuw nsw i64 %.sroa.speculated, 3
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #30 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %0, align 8
  store ptr %i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.sroa.speculated ; 2 uses
  store ptr %i.k, ptr %i.g, align 8
  br label %_ZNSt6vectorIlSaIlEE7reserveEm.exit

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.06974 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ 0, %bb.a ]
  %.sroa.062.073 = phi ptr [ %i.u, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.062.073, i64 24
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load ptr, ptr %i.m, align 8
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %.06974, i64 %i.t) ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.062.073, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.u, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

_ZNSt6vectorIlSaIlEE7reserveEm.exit:              ; preds = %.thread, %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i, %bb.b
  %i.v = phi ptr [ %i.g, %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i ], [ %i.g, %bb.b ], [ %i.e, %.thread ] ; 3 uses
  %.promoted88 = phi ptr [ %i.i, %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i ], [ null, %bb.b ], [ null, %.thread ] ; 4 uses
  %.promoted = phi ptr [ %i.k, %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i ], [ null, %bb.b ], [ null, %.thread ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i32 0, ptr %i.a, align 4
  %.not132 = icmp eq ptr %i.d, %i.b
  br i1 %.not132, label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIlSaIlEE7reserveEm.exit
  %i.w = ptrtoint ptr %i.d to i64
  %i.x = ptrtoint ptr %i.b to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = sdiv exact i64 %i.y, 40
  invoke void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr null, i64 noundef %i.z, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %._ZNSt6vectorIjSaIjEE6resizeEmRKj.exit_crit_edge101 unwind label %bb.d

._ZNSt6vectorIjSaIjEE6resizeEmRKj.exit_crit_edge101: ; preds = %bb.c
  %.pre = load ptr, ptr %i.c, align 8             ; 2 uses
  %.pre102 = load ptr, ptr %2, align 8            ; 2 uses
  %.pre106 = ptrtoint ptr %.pre to i64
  %.pre107 = ptrtoint ptr %.pre102 to i64
  %.pre109 = sub i64 %.pre106, %.pre107
  %.pre111 = sdiv exact i64 %.pre109, 40
  %i.aa = icmp eq ptr %.pre, %.pre102
  %i.ab = call i64 @llvm.umax.i64(i64 %.pre111, i64 1)
  br label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit

_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit:            ; preds = %_ZNSt6vectorIlSaIlEE7reserveEm.exit, %._ZNSt6vectorIjSaIjEE6resizeEmRKj.exit_crit_edge101
  %.pre-phi112 = phi i64 [ %i.ab, %._ZNSt6vectorIjSaIjEE6resizeEmRKj.exit_crit_edge101 ], [ 1, %_ZNSt6vectorIlSaIlEE7reserveEm.exit ] ; 2 uses
  %.not92 = phi i1 [ %i.aa, %._ZNSt6vectorIjSaIjEE6resizeEmRKj.exit_crit_edge101 ], [ true, %_ZNSt6vectorIlSaIlEE7reserveEm.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not92, label %._crit_edge79.thread, label %.lr.ph78

.lr.ph78.loopexit:                                ; preds = %.critedge
  br label %.lr.ph78, !llvm.loop !399

.lr.ph78:                                         ; preds = %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit, %.lr.ph78.loopexit
  %i.ac = phi ptr [ %i.bs, %.lr.ph78.loopexit ], [ %.promoted, %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit ] ; 5 uses
  %i.ad = phi ptr [ %i.br, %.lr.ph78.loopexit ], [ %.promoted88, %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit ] ; 10 uses
  %i.ae = phi ptr [ %i.bq, %.lr.ph78.loopexit ], [ %.promoted88, %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit ] ; 6 uses
  %i.af = load ptr, ptr %2, align 8
  %i.ag = load ptr, ptr %3, align 8
  br label %bb.e

._crit_edge79:                                    ; preds = %_ZNSt6vectorIlSaIlEE2atEm.exit46
  %i.ah = icmp eq i64 %.1, 9223372036854775807
  br i1 %i.ah, label %._crit_edge79.thread, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.n

bb.e:                                             ; preds = %.lr.ph78, %_ZNSt6vectorIlSaIlEE2atEm.exit46
  %.03276 = phi i64 [ 0, %.lr.ph78 ], [ %i.az, %_ZNSt6vectorIlSaIlEE2atEm.exit46 ] ; 3 uses
  %.06875 = phi i64 [ 9223372036854775807, %.lr.ph78 ], [ %.1, %_ZNSt6vectorIlSaIlEE2atEm.exit46 ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [40 x i8], ptr %i.af, i64 %.03276
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 3
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.03276
  %i.au = load i32, ptr %i.at, align 4
  %i.av = zext i32 %i.au to i64                   ; 2 uses
  %i.aw = icmp ugt i64 %i.as, %i.av
  br i1 %i.aw, label %bb.f, label %_ZNSt6vectorIlSaIlEE2atEm.exit46

bb.f:                                             ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.av
  %i.ay = load i64, ptr %i.ax, align 8
  %spec.select = call i64 @llvm.smin.i64(i64 %i.ay, i64 %.06875)
  br label %_ZNSt6vectorIlSaIlEE2atEm.exit46

_ZNSt6vectorIlSaIlEE2atEm.exit46:                 ; preds = %bb.f, %bb.e
  %.1 = phi i64 [ %.06875, %bb.e ], [ %spec.select, %bb.f ] ; 6 uses
  %i.az = add nuw i64 %.03276, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.az, %.pre-phi112
  br i1 %exitcond.not, label %._crit_edge79, label %bb.e, !llvm.loop !400

bb.g:                                             ; preds = %._crit_edge79
  %.not.i = icmp eq ptr %i.ae, %i.ac
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 %.1, ptr %i.ae, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  store ptr %i.ba, ptr %4, align 8
  br label %.lr.ph85.preheader

bb.i:                                             ; preds = %bb.g
  %i.bb = ptrtoint ptr %i.ae to i64
  %i.bc = ptrtoint ptr %i.ad to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 6 uses
  %i.be = icmp eq i64 %i.bd, 9223372036854775800
  br i1 %i.be, label %bb.j, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  store ptr %i.ac, ptr %i.v, align 1
  store ptr %i.ad, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.224) #31
          to label %.noexc47 unwind label %.loopexit.split-lp

.noexc47:                                         ; preds = %bb.j
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.bf = ashr exact i64 %i.bd, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bf, i64 1)
  %i.bg = add nsw i64 %.sroa.speculated.i.i.i, %i.bf ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %i.bf
  %i.bi = call i64 @llvm.umin.i64(i64 %i.bg, i64 1152921504606846975)
  %i.bj = select i1 %i.bh, i64 1152921504606846975, i64 %i.bi ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bj, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bk = shl nuw nsw i64 %i.bj, 3
  %i.bl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #30
          to label %.noexc48 unwind label %.loopexit71 ; 4 uses

.noexc48:                                         ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 %i.bd ; 2 uses
  store i64 %.1, ptr %i.bm, align 8
  %i.bn = icmp sgt i64 %i.bd, 0
  br i1 %i.bn, label %bb.k, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i

bb.k:                                             ; preds = %.noexc48
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bl, ptr align 8 %i.ad, i64 %i.bd, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i: ; preds = %bb.k, %.noexc48
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.bd) #29
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i
  store ptr %i.bo, ptr %4, align 8
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bj
  br label %.lr.ph85.preheader

.lr.ph85.preheader:                               ; preds = %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i, %bb.h
  %i.bq = phi ptr [ %i.ba, %bb.h ], [ %i.bo, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i ]
  %i.br = phi ptr [ %i.ad, %bb.h ], [ %i.bl, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i ]
  %i.bs = phi ptr [ %i.ac, %bb.h ], [ %i.bp, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i ]
  %.pre105 = load ptr, ptr %3, align 8
  br label %.lr.ph85

.lr.ph85:                                         ; preds = %.lr.ph85.preheader, %.critedge
  %i.bt = phi ptr [ %i.df, %.critedge ], [ %.pre105, %.lr.ph85.preheader ] ; 3 uses
  %.084 = phi i64 [ %i.dg, %.critedge ], [ 0, %.lr.ph85.preheader ] ; 4 uses
  %i.bu = load ptr, ptr %2, align 8
  %i.bv = getelementptr inbounds nuw [40 x i8], ptr %i.bu, i64 %.084
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8            ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = load ptr, ptr %i.bx, align 8            ; 2 uses
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = ashr exact i64 %i.cd, 3
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %.084 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4            ; 2 uses
  %i.ch = zext i32 %i.cg to i64                   ; 2 uses
  %i.ci = icmp ugt i64 %i.ce, %i.ch
  br i1 %i.ci, label %.lr.ph82.preheader, label %.critedge

.lr.ph82.preheader:                               ; preds = %.lr.ph85
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.ch
  %i.ck = load i64, ptr %i.cj, align 8
  %i.cl = icmp eq i64 %i.ck, %.1
  br i1 %i.cl, label %.lr.ph158, label %.critedge

.lr.ph82:                                         ; preds = %.lr.ph158
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.dd
  %i.cn = load i64, ptr %i.cm, align 8
  %i.co = icmp eq i64 %i.cn, %.1
  br i1 %i.co, label %.lr.ph158, label %.critedge, !llvm.loop !401

.lr.ph158:                                        ; preds = %.lr.ph82.preheader, %.lr.ph82
  %i.cp = phi ptr [ %i.db, %.lr.ph82 ], [ %i.cf, %.lr.ph82.preheader ]
  %i.cq = phi i32 [ %i.dc, %.lr.ph82 ], [ %i.cg, %.lr.ph82.preheader ]
  %i.cr = add i32 %i.cq, 1
  store i32 %i.cr, ptr %i.cp, align 4
  %i.cs = load ptr, ptr %i.bw, align 8            ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = load ptr, ptr %i.cs, align 8            ; 2 uses
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = ashr exact i64 %i.cy, 3
  %i.da = load ptr, ptr %3, align 8               ; 3 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %.084 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4            ; 2 uses
  %i.dd = zext i32 %i.dc to i64                   ; 2 uses
  %i.de = icmp ugt i64 %i.cz, %i.dd
  br i1 %i.de, label %.lr.ph82, label %..critedge.loopexit_crit_edge, !llvm.loop !401

..critedge.loopexit_crit_edge:                    ; preds = %.lr.ph158
  br label %.critedge, !llvm.loop !401

.critedge:                                        ; preds = %.lr.ph82, %.lr.ph82.preheader, %..critedge.loopexit_crit_edge, %.lr.ph85
  %i.df = phi ptr [ %i.bt, %.lr.ph85 ], [ %i.da, %..critedge.loopexit_crit_edge ], [ %i.bt, %.lr.ph82.preheader ], [ %i.da, %.lr.ph82 ]
  %i.dg = add nuw i64 %.084, 1                    ; 2 uses
  %exitcond100.not = icmp eq i64 %i.dg, %.pre-phi112
  br i1 %exitcond100.not, label %.lr.ph78.loopexit, label %.lr.ph85, !llvm.loop !399

.loopexit71:                                      ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ac, ptr %i.v, align 1
  store ptr %i.ad, ptr %0, align 8
  br label %bb.n

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

._crit_edge79.thread:                             ; preds = %._crit_edge79, %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit
  %.lcssa152 = phi ptr [ %.promoted88, %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit ], [ %i.ad, %._crit_edge79 ]
  %.lcssa = phi ptr [ %.promoted, %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit ], [ %i.ac, %._crit_edge79 ]
  store ptr %.lcssa, ptr %i.v, align 1
  store ptr %.lcssa152, ptr %0, align 8
  %i.dh = load ptr, ptr %3, align 8               ; 3 uses
  %.not.i.i.i52 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i52, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge79.thread
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = ptrtoint ptr %i.dh to i64
  %i.dm = sub i64 %i.dk, %i.dl
  call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef %i.dm) #29
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %._crit_edge79.thread, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.n:                                             ; preds = %.loopexit71, %.loopexit.split-lp, %bb.d
  %i.dn = phi ptr [ %.promoted, %bb.d ], [ %i.ae, %.loopexit71 ], [ %i.ae, %.loopexit.split-lp ]
  %i.do = phi ptr [ %.promoted88, %bb.d ], [ %i.ad, %.loopexit71 ], [ %i.ad, %.loopexit.split-lp ] ; 3 uses
  %.pn.pn = phi { ptr, i32 } [ %i.ai, %bb.d ], [ %lpad.loopexit, %.loopexit71 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.dp = load ptr, ptr %3, align 8               ; 3 uses
  %.not.i.i.i53 = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i53, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %i.dp to i64
  %i.du = sub i64 %i.ds, %i.dt
  call void @_ZdlPvm(ptr noundef nonnull %i.dp, i64 noundef %i.du) #29
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %.not.i.i.i55 = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i55, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dv = ptrtoint ptr %i.dn to i64
  %i.dw = ptrtoint ptr %i.do to i64
  %i.dx = sub i64 %i.dv, %i.dw
  call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef %i.dx) #29
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %bb.p, %bb.q
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZNK6Assimp3FBX18FileGlobalSettings6UpAxisEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.c, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.c, ptr noundef nonnull align 1 dereferenceable(6) @.str.186, i64 6, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 6, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 22
  store i8 0, ptr %i.e, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 1, ptr %i.a, align 4
  %i.f = invoke noundef ptr @_ZNK6Assimp3FBX13PropertyTable3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %.noexc4 unwind label %bb.c    ; 2 uses

.noexc4:                                          ; preds = %._crit_edge.i.i
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.a

bb.a:                                             ; preds = %.noexc4
  %i.h = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %i.f, ptr nonnull @_ZTIN6Assimp3FBX8PropertyE, ptr nonnull @_ZTIN6Assimp3FBX13TypedPropertyIiEE, i64 0) #27 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %spec.select.i = select i1 %i.i, ptr %i.a, ptr %i.j
  %.1.i.pre = load i32, ptr %spec.select.i, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.noexc4
  %.1.i = phi i32 [ 1, %.noexc4 ], [ %.1.i.pre, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.k = load ptr, ptr %1, align 8                ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.c
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.c, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  ret i32 %.1.i

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = load ptr, ptr %1, align 8                ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.c
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.c
  %i.r = load i64, ptr %i.c, align 8
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  resume { ptr, i32 } %i.o
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZNK6Assimp3FBX18FileGlobalSettings10UpAxisSignEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.c, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.c, ptr noundef nonnull align 1 dereferenceable(10) @.str.187, i64 10, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 10, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 26
  store i8 0, ptr %i.e, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 1, ptr %i.a, align 4
  %i.f = invoke noundef ptr @_ZNK6Assimp3FBX13PropertyTable3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %.noexc4 unwind label %bb.c    ; 2 uses

.noexc4:                                          ; preds = %._crit_edge.i.i
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.a

bb.a:                                             ; preds = %.noexc4
  %i.h = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %i.f, ptr nonnull @_ZTIN6Assimp3FBX8PropertyE, ptr nonnull @_ZTIN6Assimp3FBX13TypedPropertyIiEE, i64 0) #27 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %spec.select.i = select i1 %i.i, ptr %i.a, ptr %i.j
  %.1.i.pre = load i32, ptr %spec.select.i, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.noexc4
  %.1.i = phi i32 [ 1, %.noexc4 ], [ %.1.i.pre, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.k = load ptr, ptr %1, align 8                ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.c
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.c, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  ret i32 %.1.i

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = load ptr, ptr %1, align 8                ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.c
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.c
  %i.r = load i64, ptr %i.c, align 8
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  resume { ptr, i32 } %i.o
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZNK6Assimp3FBX18FileGlobalSettings9FrontAxisEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.c, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.c, ptr noundef nonnull align 1 dereferenceable(9) @.str.188, i64 9, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 9, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 25
  store i8 0, ptr %i.e, align 1
end_hunk_2
