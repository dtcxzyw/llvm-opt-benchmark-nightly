inline.NumInlined: 713
inline.NumDeleted: 370
begin_hunk_0_@_ZN6Assimp3FBX12_GLOBAL__N_117ReadTypedPropertyERKNS0_7ElementE:bb.a
          to label %bb.ay unwind label %bb.j      ; 6 uses

bb.ay:                                            ; preds = %bb.ax
  %i.cn = load ptr, ptr %i.b, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = invoke noundef float @_ZN6Assimp3FBX17ParseTokenAsFloatERKNS0_5TokenE(ptr noundef nonnull align 8 dereferenceable(36) %i.cp)
          to label %bb.az unwind label %bb.bc

bb.az:                                            ; preds = %bb.ay
  %i.cr = load ptr, ptr %i.b, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 40
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = invoke noundef float @_ZN6Assimp3FBX17ParseTokenAsFloatERKNS0_5TokenE(ptr noundef nonnull align 8 dereferenceable(36) %i.ct)
          to label %bb.ba unwind label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.cv = load ptr, ptr %i.b, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 48
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = invoke noundef float @_ZN6Assimp3FBX17ParseTokenAsFloatERKNS0_5TokenE(ptr noundef nonnull align 8 dereferenceable(36) %i.cx)
          to label %bb.bb unwind label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp3FBX13TypedPropertyI10aiVector3tIfEEE, i64 16), ptr %i.cm, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store float %i.cq, ptr %i.cz, align 8
  %.sroa.599.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 12
  store float %i.cu, ptr %.sroa.599.0..sroa_idx, align 4
  %.sroa.6100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store float %i.cy, ptr %.sroa.6100.0..sroa_idx, align 8
  br label %bb.bx

bb.bc:                                            ; preds = %bb.ba, %bb.az, %bb.ay
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef 24) #19
  br label %bb.by

bb.bd:                                            ; preds = %bb.av
  %i.db = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.l, ptr noundef nonnull dereferenceable(7) @.str.21) #21
  %.not80 = icmp eq i32 %i.db, 0
  br i1 %.not80, label %bb.bj, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.dc = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.l, ptr noundef nonnull dereferenceable(7) @.str.22) #21
  %.not81 = icmp eq i32 %i.dc, 0
  br i1 %.not81, label %bb.bj, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.dd = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.l, ptr noundef nonnull dereferenceable(6) @.str.23) #21
  %.not82 = icmp eq i32 %i.dd, 0
  br i1 %.not82, label %bb.bj, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.de = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.l, ptr noundef nonnull dereferenceable(6) @.str.24) #21
  %.not83 = icmp eq i32 %i.de, 0
  br i1 %.not83, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.df = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.l, ptr noundef nonnull dereferenceable(12) @.str.25) #21
  %.not84 = icmp eq i32 %i.df, 0
  br i1 %.not84, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.dg = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.l, ptr noundef nonnull dereferenceable(16) @.str.26) #21
  %.not85 = icmp eq i32 %i.dg, 0
  br i1 %.not85, label %bb.bj, label %bb.bo

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd
  invoke fastcc void @_ZN6Assimp3FBX12_GLOBAL__N_115checkTokenCountERKSt6vectorIPKNS0_5TokenESaIS5_EEj(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i32 noundef 5)
          to label %bb.bk unwind label %bb.j

bb.bk:                                            ; preds = %bb.bj
  %i.dh = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #22
          to label %bb.bl unwind label %bb.j      ; 4 uses

bb.bl:                                            ; preds = %bb.bk
  %i.di = load ptr, ptr %i.b, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = invoke noundef float @_ZN6Assimp3FBX17ParseTokenAsFloatERKNS0_5TokenE(ptr noundef nonnull align 8 dereferenceable(36) %i.dk)
          to label %bb.bm unwind label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp3FBX13TypedPropertyIfEE, i64 16), ptr %i.dh, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store float %i.dl, ptr %i.dm, align 8
  br label %bb.bx

bb.bn:                                            ; preds = %bb.bl
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef 16) #19
  br label %bb.by

bb.bo:                                            ; preds = %bb.bi
  %i.do = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.l, ptr noundef nonnull dereferenceable(14) @.str.27) #21
  %.not86 = icmp eq i32 %i.do, 0
  br i1 %.not86, label %bb.bp, label %bb.bx

bb.bp:                                            ; preds = %bb.bo
  invoke fastcc void @_ZN6Assimp3FBX12_GLOBAL__N_115checkTokenCountERKSt6vectorIPKNS0_5TokenESaIS5_EEj(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i32 noundef 8)
          to label %bb.bq unwind label %bb.j

bb.bq:                                            ; preds = %bb.bp
  %i.dp = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22
          to label %bb.br unwind label %bb.j      ; 7 uses

bb.br:                                            ; preds = %bb.bq
  %i.dq = load ptr, ptr %i.b, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 32
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = invoke noundef float @_ZN6Assimp3FBX17ParseTokenAsFloatERKNS0_5TokenE(ptr noundef nonnull align 8 dereferenceable(36) %i.ds)
          to label %bb.bs unwind label %bb.bw

bb.bs:                                            ; preds = %bb.br
  %i.du = load ptr, ptr %i.b, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 40
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = invoke noundef float @_ZN6Assimp3FBX17ParseTokenAsFloatERKNS0_5TokenE(ptr noundef nonnull align 8 dereferenceable(36) %i.dw)
          to label %bb.bt unwind label %bb.bw

bb.bt:                                            ; preds = %bb.bs
  %i.dy = load ptr, ptr %i.b, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 48
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = invoke noundef float @_ZN6Assimp3FBX17ParseTokenAsFloatERKNS0_5TokenE(ptr noundef nonnull align 8 dereferenceable(36) %i.ea)
          to label %bb.bu unwind label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  %i.ec = load ptr, ptr %i.b, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 56
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = invoke noundef float @_ZN6Assimp3FBX17ParseTokenAsFloatERKNS0_5TokenE(ptr noundef nonnull align 8 dereferenceable(36) %i.ee)
          to label %bb.bv unwind label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp3FBX13TypedPropertyI9aiColor4tIfEEE, i64 16), ptr %i.dp, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store float %i.dt, ptr %i.eg, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 12
  store float %i.dx, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  store float %i.eb, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 20
  store float %i.ef, ptr %.sroa.7.0..sroa_idx, align 4
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bu, %bb.bt, %bb.bs, %bb.br
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.dp, i64 noundef 24) #19
  br label %bb.by

bb.bx:                                            ; preds = %bb.bo, %bb.bv, %bb.bm, %bb.bb, %bb.an, %bb.ah, %bb.ab, %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.061 = phi ptr [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.dp, %bb.bv ], [ %i.dh, %bb.bm ], [ %i.cm, %bb.bb ], [ %i.by, %bb.an ], [ %i.bq, %bb.ah ], [ %i.bi, %bb.ab ], [ %i.au, %bb.r ], [ null, %bb.bo ]
  %i.ei = load ptr, ptr %1, align 8               ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ek = icmp eq ptr %i.ei, %i.ej
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %bb.bx
  %i.el = load i64, ptr %i.ej, align 8
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.em) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw, %bb.bn, %bb.bc, %bb.ao, %bb.ai, %bb.ac, %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %bb.j
  %.pn87 = phi { ptr, i32 } [ %i.eh, %bb.bw ], [ %i.bw, %bb.ai ], [ %i.ak, %bb.j ], [ %i.dn, %bb.bn ], [ %i.bc, %bb.s ], [ %i.da, %bb.bc ], [ %i.bo, %bb.ac ], [ %i.ce, %bb.ao ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91 ]
  %i.en = load ptr, ptr %1, align 8               ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ep = icmp eq ptr %i.en, %i.eo
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %bb.by
  %i.eq = load i64, ptr %i.eo, align 8
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.er) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %bb.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  resume { ptr, i32 } %.pn87

bb.bz:                                            ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  %.162 = phi ptr [ %.061, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94 ], [ null, %bb.a ]
  ret ptr %.162
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK6Assimp3FBX13PropertyTable21GetUnparsedPropertiesB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::unordered_map.32") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.46", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.017.024 = load ptr, ptr %i.f, align 8    ; 2 uses
  %.not25 = icmp eq ptr %.sroa.017.024, null
  br i1 %.not25, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.ac, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.ac
  %.sroa.017.026 = phi ptr [ %.sroa.017.024, %.lr.ph ], [ %.sroa.017.0, %bb.ac ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.017.026, i64 8 ; 2 uses
  %i.j = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX8PropertyEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX8PropertyESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEE4findERSG_.exit unwind label %bb.c

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX8PropertyESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEE4findERSG_.exit: ; preds = %bb.b
  %.not21 = icmp eq ptr %i.j, null
  br i1 %.not21, label %bb.d, label %bb.ac

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.d:                                             ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX8PropertyESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEE4findERSG_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.017.026, i64 40
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = invoke fastcc noundef ptr @_ZN6Assimp3FBX12_GLOBAL__N_117ReadTypedPropertyERKNS0_7ElementE(ptr noundef nonnull align 8 dereferenceable(40) %i.m)
          to label %bb.e unwind label %bb.m       ; 7 uses

bb.e:                                             ; preds = %bb.d
  store ptr %i.n, ptr %2, align 8
  %i.o = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22
          to label %bb.l unwind label %bb.f       ; 9 uses

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  %i.r = tail call ptr @__cxa_begin_catch(ptr %i.q) #18 ; 0 uses
  %i.s = icmp eq ptr %i.n, null
  br i1 %i.s, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.n, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #18, !inline_history !18
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  invoke void @__cxa_rethrow() #20
          to label %bb.k unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #23
  unreachable

bb.k:                                             ; preds = %bb.h
  unreachable

bb.l:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  store i32 1, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 1, ptr %i.aa, align 4
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN6Assimp3FBX8PropertyELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.o, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.n, ptr %i.ab, align 8
  store ptr %i.o, ptr %i.h, align 8
  %.not22 = icmp eq ptr %i.n, null
  br i1 %.not22, label %_ZNSt10shared_ptrIN6Assimp3FBX8PropertyEEaSERKS3_.exit.thread, label %bb.n

bb.m:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %bb.l
  %i.ad = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN6Assimp3FBX8PropertyEEESaISE_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN6Assimp3FBX8PropertyEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEEixERSG_.exit unwind label %bb.ad ; 2 uses

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN6Assimp3FBX8PropertyEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEEixERSG_.exit: ; preds = %bb.n
  store ptr %i.n, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8
  %.not.i.i.i = icmp eq ptr %i.o, %i.af
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN6Assimp3FBX8PropertyEEaSERKS3_.exit.thread, label %bb.o

bb.o:                                             ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN6Assimp3FBX8PropertyEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEEixERSG_.exit
  %i.ag = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ah = load i32, ptr %i.z, align 8
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.z, align 8
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.aj = atomicrmw volatile add ptr %i.z, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.p, %bb.q
  %.pr.i.i.i = load ptr, ptr %i.ae, align 8       ; 8 uses
  %.not8.i.i.i = icmp eq ptr %.pr.i.i.i, null
  br i1 %.not8.i.i.i, label %_ZNSt10shared_ptrIN6Assimp3FBX8PropertyEEaSERKS3_.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.pr.i.i.i, i64 8 ; 4 uses
  %i.al = load atomic i64, ptr %i.ak acquire, align 8 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4294967297
  %i.an = trunc i64 %i.al to i32                  ; 2 uses
  br i1 %i.am, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.ak, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.pr.i.i.i, i64 12
  store i32 0, ptr %i.ao, align 4
  %i.ap = load ptr, ptr %.pr.i.i.i, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %.pr.i.i.i) #18, !inline_history !19
  %i.as = load ptr, ptr %.pr.i.i.i, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %.pr.i.i.i) #18, !inline_history !19
  br label %_ZNSt10shared_ptrIN6Assimp3FBX8PropertyEEaSERKS3_.exit

bb.t:                                             ; preds = %bb.r
  %i.av = load i8, ptr @__libc_single_threaded, align 1
  %.not.i9.i.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i9.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aw = add nsw i32 %i.an, -1
  store i32 %i.aw, ptr %i.ak, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.ax = atomicrmw volatile add ptr %i.ak, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i = phi i32 [ %i.an, %bb.u ], [ %i.ax, %bb.v ]
  %i.ay = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ay, label %bb.w, label %_ZNSt10shared_ptrIN6Assimp3FBX8PropertyEEaSERKS3_.exit, !prof !13

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.i.i.i) #18
  br label %_ZNSt10shared_ptrIN6Assimp3FBX8PropertyEEaSERKS3_.exit

_ZNSt10shared_ptrIN6Assimp3FBX8PropertyEEaSERKS3_.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.w
  store ptr %i.o, ptr %i.ae, align 8
  %.pr = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6Assimp3FBX8PropertyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %_ZNSt10shared_ptrIN6Assimp3FBX8PropertyEEaSERKS3_.exit.thread

_ZNSt10shared_ptrIN6Assimp3FBX8PropertyEEaSERKS3_.exit.thread: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN6Assimp3FBX8PropertyEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEEixERSG_.exit, %bb.l, %_ZNSt10shared_ptrIN6Assimp3FBX8PropertyEEaSERKS3_.exit
  %i.az = phi ptr [ %.pr, %_ZNSt10shared_ptrIN6Assimp3FBX8PropertyEEaSERKS3_.exit ], [ %i.o, %bb.l ], [ %i.o, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN6Assimp3FBX8PropertyEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEEixERSG_.exit ] ; 7 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 4 uses
  %i.bb = load atomic i64, ptr %i.ba acquire, align 8 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 4294967297
  %i.bd = trunc i64 %i.bb to i32                  ; 2 uses
  br i1 %i.bc, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZNSt10shared_ptrIN6Assimp3FBX8PropertyEEaSERKS3_.exit.thread
  store i32 0, ptr %i.ba, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i32 0, ptr %i.be, align 4
  %i.bf = load ptr, ptr %i.az, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #18, !inline_history !20
  %i.bi = load ptr, ptr %i.az, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #18, !inline_history !20
  br label %_ZNSt12__shared_ptrIN6Assimp3FBX8PropertyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.y:                                             ; preds = %_ZNSt10shared_ptrIN6Assimp3FBX8PropertyEEaSERKS3_.exit.thread
  %i.bl = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i14 = icmp eq i8 %i.bl, 0
  br i1 %.not.i.i.i14, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bm = add nsw i32 %i.bd, -1
  store i32 %i.bm, ptr %i.ba, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.bn = atomicrmw volatile add ptr %i.ba, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i = phi i32 [ %i.bd, %bb.z ], [ %i.bn, %bb.aa ]
  %i.bo = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bo, label %bb.ab, label %_ZNSt12__shared_ptrIN6Assimp3FBX8PropertyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !13

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #18
  br label %_ZNSt12__shared_ptrIN6Assimp3FBX8PropertyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6Assimp3FBX8PropertyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN6Assimp3FBX8PropertyEEaSERKS3_.exit, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3FBX8PropertyESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEE4findERSG_.exit, %_ZNSt12__shared_ptrIN6Assimp3FBX8PropertyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.sroa.017.0 = load ptr, ptr %.sroa.017.026, align 8 ; 2 uses
  %.not = icmp eq ptr %.sroa.017.0, null
  br i1 %.not, label %._crit_edge, label %bb.b

bb.ad:                                            ; preds = %bb.n
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN6Assimp3FBX8PropertyELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #18
  br label %.body

.body:                                            ; preds = %bb.m, %bb.i, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.bp, %bb.ad ], [ %i.ac, %bb.m ], [ %i.w, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.ae

bb.ae:                                            ; preds = %.body, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.k, %bb.c ]
  call void @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN6Assimp3FBX8PropertyEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #18
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN6Assimp3FBX8PropertyELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !12
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !12
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !13

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
end_hunk_0
