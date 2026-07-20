inline.NumInlined: 1883
inline.NumDeleted: 548
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN6Assimp3FBX12MeshGeometry14ReadVertexDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiRKNS0_5ScopeE:.noexc.i
  %i.cw = load i64, ptr %i.cn, align 8
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cx) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %.not56 = icmp eq ptr %i.cm, null
  br i1 %.not56, label %bb.aa, label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.cy = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN6Assimp3FBX16GetRequiredTokenERKNS0_7ElementEj(ptr noundef nonnull align 8 dereferenceable(40) %i.cm, i32 noundef 0)
          to label %bb.r unwind label %bb.z

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN6Assimp3FBX18ParseTokenAsStringB5cxx11ERKNS0_5TokenE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(36) %i.cy)
          to label %bb.s unwind label %bb.z

bb.s:                                             ; preds = %bb.r
  %i.cz = load i32, ptr %i.h, align 4
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [32 x i8], ptr %i.cp, i64 %i.da ; 9 uses
  %i.dc = load ptr, ptr %i.db, align 8            ; 6 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 2 uses
  %i.de = icmp eq ptr %i.dc, %i.dd
  %i.df = load ptr, ptr %10, align 8              ; 6 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.dh = icmp eq ptr %i.df, %i.dg                ; 2 uses
  br i1 %i.de, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i96: ; preds = %bb.s
  br i1 %i.dh, label %bb.t, label %.thread.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i90: ; preds = %bb.s
  br i1 %i.dh, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i91

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i90, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i96
  %i.di = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.dj = load i64, ptr %i.di, align 8            ; 3 uses
  %i.dk = icmp ult i64 %i.dj, 16
  call void @llvm.assume(i1 %i.dk)
  %.not21.i93 = icmp eq ptr %10, %i.db
  br i1 %.not21.i93, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit98, label %bb.u, !prof !62

bb.u:                                             ; preds = %bb.t
  switch i64 %i.dj, label %bb.w [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i94
    i64 1, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u
  %i.dl = load i8, ptr %i.df, align 1
  store i8 %i.dl, ptr %i.dc, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i94

bb.w:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dc, ptr align 1 %i.df, i64 %i.dj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i94: ; preds = %bb.w, %bb.v, %bb.u
  %i.dm = load i64, ptr %i.di, align 8            ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store i64 %i.dm, ptr %i.dn, align 8
  %i.do = load ptr, ptr %i.db, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dm
  store i8 0, ptr %i.dp, align 1
  %.pre.i95 = load ptr, ptr %10, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit98

.thread.i97:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i96
  %i.dq = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store ptr %i.df, ptr %i.db, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ds = load <2 x i64>, ptr %i.dr, align 8
  store <2 x i64> %i.ds, ptr %i.dq, align 8
  br label %bb.y

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i91: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i90
  %i.dt = load i64, ptr %i.dd, align 8
  store ptr %i.df, ptr %i.db, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dw = load <2 x i64>, ptr %i.du, align 8
  store <2 x i64> %i.dw, ptr %i.dv, align 8
  %.not.i92 = icmp eq ptr %i.dc, null
  br i1 %.not.i92, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i91
  store ptr %i.dc, ptr %10, align 8
  store i64 %i.dt, ptr %i.dg, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit98

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i91, %.thread.i97
  store ptr %i.dg, ptr %10, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit98

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit98: ; preds = %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i94, %bb.x, %bb.y
  %i.dx = phi ptr [ %.pre.i95, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i94 ], [ %i.dc, %bb.x ], [ %i.dg, %bb.y ], [ %i.df, %bb.t ]
  %i.dy = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.dy, align 8
  store i8 0, ptr %i.dx, align 1
  %i.dz = load ptr, ptr %10, align 8              ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit98
  %i.ec = load i64, ptr %i.ea, align 8
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ed) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit98, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.aa

bb.z:                                             ; preds = %bb.r, %bb.q
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.ba

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.eg = load i32, ptr %i.h, align 4
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [24 x i8], ptr %i.ef, i64 %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = load ptr, ptr %i.ej, align 8
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = sdiv exact i64 %i.ep, 12
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 976
  invoke void @_ZN6Assimp3FBX22ResolveVertexDataArrayI10aiVector2tIfEEEvRSt6vectorIT_SaIS5_EERKNS0_5ScopeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_PKcSL_mRKS4_IjSaIjEESP_SP_(ptr noundef nonnull align 8 dereferenceable(24) %i.ei, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, i64 noundef %i.eq, ptr noundef nonnull align 8 dereferenceable(24) %i.er, ptr noundef nonnull align 8 dereferenceable(24) %i.es, ptr noundef nonnull align 8 dereferenceable(24) %i.et)
          to label %_ZN6Assimp3FBX12MeshGeometry16ReadVertexDataUVERSt6vectorI10aiVector2tIfESaIS4_EERKNS0_5ScopeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_.exit unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit107: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69
  %.pre = load ptr, ptr %1, align 8               ; 2 uses
  %bcmp.i106 = call i32 @bcmp(ptr %.pre, ptr nonnull @.str.25, i64 %i.aj)
  %i.ev = icmp eq i32 %bcmp.i106, 0
  br i1 %i.ev, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit107.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit132

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit107.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit107
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = load ptr, ptr %i.ew, align 8
  %.not50 = icmp eq ptr %i.ey, %i.ez
  br i1 %.not50, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit107.thread
  %i.fa = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc108 unwind label %bb.m

.noexc108:                                        ; preds = %bb.ac
  br i1 %i.fa, label %_ZN6Assimp3FBX12MeshGeometry16ReadVertexDataUVERSt6vectorI10aiVector2tIfESaIS4_EERKNS0_5ScopeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_.exit, label %bb.ad

bb.ad:                                            ; preds = %.noexc108
  %i.fb = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc109 unwind label %bb.m

.noexc109:                                        ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  %i.fc = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11FBXImporterEE6PrefixEv()
          to label %.noexc110 unwind label %bb.m

.noexc110:                                        ; preds = %.noexc109
  store ptr %i.fc, ptr %i.d, align 8
  invoke void @_ZN6Assimp6Logger5errorIJPKcRA35_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.fb, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 1 dereferenceable(35) @.str.26)
          to label %.noexc111 unwind label %bb.m

.noexc111:                                        ; preds = %.noexc110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  br label %_ZN6Assimp3FBX12MeshGeometry16ReadVertexDataUVERSt6vectorI10aiVector2tIfESaIS4_EERKNS0_5ScopeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_.exit

bb.ae:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit107.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  invoke void @_ZN6Assimp3FBX12MeshGeometry23ReadVertexDataMaterialsERSt6vectorIiSaIiEERKNS0_5ScopeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESG_(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.af unwind label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.fd = load ptr, ptr %11, align 16             ; 7 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8            ; 5 uses
  %.not4.i.i = icmp eq ptr %i.fd, %i.ff
  br i1 %.not4.i.i, label %"_ZSt8count_ifIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN6Assimp3FBX12MeshGeometry14ReadVertexDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiRKNS8_5ScopeEE3$_0ENSt15iterator_traitsIT_E15difference_typeESN_SN_T0_.exit", label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.af
  %12 = ptrtoint ptr %i.ff to i64
  %13 = ptrtoint ptr %i.fd to i64
  %i.fg = sub i64 %12, %13
  %i.fh = add i64 %i.fg, -4                       ; 2 uses
  %i.fi = lshr i64 %i.fh, 2
  %i.fj = add nuw nsw i64 %i.fi, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.fh, 12
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader205, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.fj, 9223372036854775804     ; 3 uses
  %i.fk = shl i64 %n.vec, 2
  %i.fl = getelementptr i8, ptr %i.fd, i64 %i.fk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.fs, %vector.body ]
  %vec.phi203 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ft, %vector.body ]
  %i.fm = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.fd, i64 %i.fm ; 2 uses
  %i.fn = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4
  %wide.load204 = load <2 x i32>, ptr %i.fn, align 4
  %i.fo = lshr <2 x i32> %wide.load, splat (i32 31)
  %i.fp = lshr <2 x i32> %wide.load204, splat (i32 31)
  %i.fq = zext nneg <2 x i32> %i.fo to <2 x i64>
  %i.fr = zext nneg <2 x i32> %i.fp to <2 x i64>
  %i.fs = add <2 x i64> %vec.phi, %i.fq           ; 2 uses
  %i.ft = add <2 x i64> %vec.phi203, %i.fr        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fu = icmp eq i64 %index.next, %n.vec
  br i1 %i.fu, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ft, %i.fs
  %i.fv = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.fj, %n.vec
  br i1 %cmp.n, label %"_ZSt8count_ifIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN6Assimp3FBX12MeshGeometry14ReadVertexDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiRKNS8_5ScopeEE3$_0ENSt15iterator_traitsIT_E15difference_typeESN_SN_T0_.exit", label %.lr.ph.i.i.preheader205

.lr.ph.i.i.preheader205:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.06.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.fv, %middle.block ]
  %.sroa.02.05.i.i.ph = phi ptr [ %i.fd, %.lr.ph.i.i.preheader ], [ %i.fl, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader205, %.lr.ph.i.i
  %.06.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ %.06.i.i.ph, %.lr.ph.i.i.preheader205 ]
  %.sroa.02.05.i.i = phi ptr [ %i.fy, %.lr.ph.i.i ], [ %.sroa.02.05.i.i.ph, %.lr.ph.i.i.preheader205 ] ; 2 uses
  %i.fw = load i32, ptr %.sroa.02.05.i.i, align 4
  %.lobit.i.i = lshr i32 %i.fw, 31
  %i.fx = zext nneg i32 %.lobit.i.i to i64
  %spec.select.i.i = add nuw nsw i64 %.06.i.i, %i.fx ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.fy, %i.ff
  br i1 %.not.i.i, label %"_ZSt8count_ifIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN6Assimp3FBX12MeshGeometry14ReadVertexDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiRKNS8_5ScopeEE3$_0ENSt15iterator_traitsIT_E15difference_typeESN_SN_T0_.exit", label %.lr.ph.i.i, !llvm.loop !66

"_ZSt8count_ifIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN6Assimp3FBX12MeshGeometry14ReadVertexDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiRKNS8_5ScopeEE3$_0ENSt15iterator_traitsIT_E15difference_typeESN_SN_T0_.exit": ; preds = %.lr.ph.i.i, %middle.block, %bb.af
  %.0.lcssa.i.i = phi i64 [ 0, %bb.af ], [ %i.fv, %middle.block ], [ %spec.select.i.i, %.lr.ph.i.i ]
  %i.fz = ptrtoint ptr %i.ff to i64
  %i.ga = ptrtoint ptr %i.fd to i64
  %i.gb = sub i64 %i.fz, %i.ga
  %i.gc = ashr exact i64 %i.gb, 2
  %.not53 = icmp eq i64 %.0.lcssa.i.i, %i.gc
  br i1 %.not53, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %"_ZSt8count_ifIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN6Assimp3FBX12MeshGeometry14ReadVertexDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiRKNS8_5ScopeEE3$_0ENSt15iterator_traitsIT_E15difference_typeESN_SN_T0_.exit"
  %i.gd = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc112 unwind label %bb.aj

.noexc112:                                        ; preds = %bb.ag
  br i1 %i.gd, label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA47_KcEEEvDpOT_.exit, label %bb.ah

bb.ah:                                            ; preds = %.noexc112
  %i.ge = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc113 unwind label %bb.aj

.noexc113:                                        ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.gf = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11FBXImporterEE6PrefixEv()
          to label %.noexc114 unwind label %bb.aj

.noexc114:                                        ; preds = %.noexc113
  store ptr %i.gf, ptr %i.c, align 8
  invoke void @_ZN6Assimp6Logger4warnIJPKcRA47_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ge, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(47) @.str.27)
          to label %.noexc115 unwind label %bb.aj

.noexc115:                                        ; preds = %.noexc114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA47_KcEEEvDpOT_.exit

bb.ai:                                            ; preds = %bb.ae
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.aj:                                            ; preds = %.noexc114, %.noexc113, %bb.ah, %bb.ag
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ak:                                            ; preds = %"_ZSt8count_ifIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN6Assimp3FBX12MeshGeometry14ReadVertexDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiRKNS8_5ScopeEE3$_0ENSt15iterator_traitsIT_E15difference_typeESN_SN_T0_.exit"
  %i.gi = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 16
  %i.gk = load <2 x ptr>, ptr %i.ew, align 8
  store <2 x ptr> %i.gk, ptr %11, align 16
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.gm = load ptr, ptr %i.gl, align 8
  store ptr %i.gm, ptr %i.gi, align 16
  store ptr %i.fd, ptr %i.ew, align 8
  store ptr %i.ff, ptr %i.ex, align 8
  store ptr %i.gj, ptr %i.gl, align 8
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA47_KcEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA47_KcEEEvDpOT_.exit: ; preds = %.noexc115, %.noexc112, %bb.ak
  %i.gn = load ptr, ptr %11, align 16             ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.gn, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA47_KcEEEvDpOT_.exit
  %i.go = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.gp = load ptr, ptr %i.go, align 16
  %i.gq = ptrtoint ptr %i.gp to i64
  %i.gr = ptrtoint ptr %i.gn to i64
  %i.gs = sub i64 %i.gq, %i.gr
  call void @_ZdlPvm(ptr noundef nonnull %i.gn, i64 noundef %i.gs) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA47_KcEEEvDpOT_.exit, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %_ZN6Assimp3FBX12MeshGeometry16ReadVertexDataUVERSt6vectorI10aiVector2tIfESaIS4_EERKNS0_5ScopeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_.exit

bb.am:                                            ; preds = %bb.aj, %bb.ai
  %.pn51 = phi { ptr, i32 } [ %i.gh, %bb.aj ], [ %i.gg, %bb.ai ]
  %i.gt = load ptr, ptr %11, align 16             ; 3 uses
  %.not.i.i.i116 = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i116, label %_ZNSt6vectorIiSaIiEED2Ev.exit117, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gu = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.gv = load ptr, ptr %i.gu, align 16
  %i.gw = ptrtoint ptr %i.gv to i64
  %i.gx = ptrtoint ptr %i.gt to i64
  %i.gy = sub i64 %i.gw, %i.gx
  call void @_ZdlPvm(ptr noundef nonnull %i.gt, i64 noundef %i.gy) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit117

_ZNSt6vectorIiSaIiEED2Ev.exit117:                 ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.ba

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit119: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69
  %.pre155 = load ptr, ptr %1, align 8
  %bcmp.i118 = call i32 @bcmp(ptr %.pre155, ptr nonnull @.str.28, i64 %i.aj)
  %i.gz = icmp eq i32 %bcmp.i118, 0
  br i1 %i.gz, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit119.thread, label %_ZN6Assimp3FBX12MeshGeometry16ReadVertexDataUVERSt6vectorI10aiVector2tIfESaIS4_EERKNS0_5ScopeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit119.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit119
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.hc = load ptr, ptr %i.hb, align 8
  %i.hd = load ptr, ptr %i.ha, align 8
  %.not49 = icmp eq ptr %i.hc, %i.hd
  br i1 %.not49, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit119.thread
  %i.he = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc120 unwind label %bb.m

.noexc120:                                        ; preds = %bb.ao
  br i1 %i.he, label %_ZN6Assimp3FBX12MeshGeometry16ReadVertexDataUVERSt6vectorI10aiVector2tIfESaIS4_EERKNS0_5ScopeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_.exit, label %bb.ap

bb.ap:                                            ; preds = %.noexc120
  %i.hf = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc121 unwind label %bb.m

.noexc121:                                        ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.hg = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11FBXImporterEE6PrefixEv()
          to label %.noexc122 unwind label %bb.m

.noexc122:                                        ; preds = %.noexc121
  store ptr %i.hg, ptr %i.b, align 8
  invoke void @_ZN6Assimp6Logger5errorIJPKcRA33_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.hf, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(33) @.str.29)
          to label %.noexc123 unwind label %bb.m

.noexc123:                                        ; preds = %.noexc122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %_ZN6Assimp3FBX12MeshGeometry16ReadVertexDataUVERSt6vectorI10aiVector2tIfESaIS4_EERKNS0_5ScopeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_.exit

bb.aq:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit119.thread
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.hj = load ptr, ptr %i.hi, align 8
  %i.hk = load ptr, ptr %i.hh, align 8
  %i.hl = ptrtoint ptr %i.hj to i64
  %i.hm = ptrtoint ptr %i.hk to i64
  %i.hn = sub i64 %i.hl, %i.hm
  %i.ho = sdiv exact i64 %i.hn, 12
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 976
  invoke void @_ZN6Assimp3FBX22ResolveVertexDataArrayI10aiVector3tIfEEEvRSt6vectorIT_SaIS5_EERKNS0_5ScopeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_PKcSL_mRKS4_IjSaIjEESP_SP_(ptr noundef nonnull align 8 dereferenceable(24) %i.ha, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i64 noundef %i.ho, ptr noundef nonnull align 8 dereferenceable(24) %i.hp, ptr noundef nonnull align 8 dereferenceable(24) %i.hq, ptr noundef nonnull align 8 dereferenceable(24) %i.hr)
end_hunk_0
begin_hunk_1_@_ZN6Assimp3FBX12MeshGeometry23ReadVertexDataMaterialsERSt6vectorIiSaIiEERKNS0_5ScopeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESG_:bb.a
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.af, i64 9)
  %i.ah = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = call i32 @memcmp(ptr noundef nonnull %i.p, ptr noundef %i.ai, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.ak = sub i64 9, %i.af
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ak, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i

_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.aj, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.al = icmp slt i32 %.0.i.i.i.i.i.i, 0
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i, %._crit_edge.i.i, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp3FBX7ElementEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 64
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = icmp eq ptr %i.an, null
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %i.ao, label %bb.f, label %._crit_edge.i.i29

._crit_edge.i.i29:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.ap, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ap, ptr noundef nonnull align 1 dereferenceable(9) @.str.46, i64 9, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 9, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 25
  store i8 0, ptr %i.ar, align 1
  %i.as = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN6Assimp3FBX18GetRequiredElementERKNS0_5ScopeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_7ElementE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef null)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %._crit_edge.i.i29
  invoke void @_ZN6Assimp3FBX20ParseVectorDataArrayERSt6vectorIiSaIiEERKNS0_7ElementE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.as)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.at = load ptr, ptr %6, align 8               ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.ap
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.d
  %i.av = load i64, ptr %i.ap, align 8
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %._crit_edge.i.i29
  %i.ax = landingpad { ptr, i32 }
          cleanup
  %i.ay = load ptr, ptr %6, align 8               ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.ap
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.e
  %i.ba = load i64, ptr %i.ap, align 8
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  resume { ptr, i32 } %i.ax

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bd = load i64, ptr %i.bc, align 8
  switch i64 %i.bd, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48.thread56 [
    i64 7, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 9, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.f
  %i.be = load ptr, ptr %3, align 8               ; 2 uses
  %i.bf = load i32, ptr %i.be, align 1
  %i.bg = xor i32 %i.bf, 1399614529
  %i.bh = getelementptr i8, ptr %i.be, i64 3
  %i.bi = load i32, ptr %i.bh, align 1
  %i.bj = xor i32 %i.bi, 1701667155
  %i.bk = or i32 %i.bg, %i.bj
  %i.bl = icmp ne i32 %i.bk, 0
  %i.bm = zext i1 %i.bl to i32
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48.thread56

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.bo = load ptr, ptr %1, align 8               ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.bq = load ptr, ptr %i.bp, align 8            ; 3 uses
  %i.br = icmp eq ptr %i.bo, %i.bq
  br i1 %i.br, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.bs = call noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
  br i1 %i.bs, label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE8LogErrorIJRA34_KcEEEvDpOT_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bt = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  %i.bu = call noundef ptr @_ZN6Assimp12LogFunctionsINS_11FBXImporterEE6PrefixEv()
  store ptr %i.bu, ptr %i.d, align 8
  call void @_ZN6Assimp6Logger5errorIJPKcRA34_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.bt, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 1 dereferenceable(34) @.str.48)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE8LogErrorIJRA34_KcEEEvDpOT_.exit

bb.i:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.bv = ptrtoint ptr %i.bq to i64
  %i.bw = ptrtoint ptr %i.bo to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = icmp ugt i64 %i.bx, 4
  br i1 %i.by, label %bb.j, label %_ZNSt6vectorIiSaIiEE5clearEv.exit

bb.j:                                             ; preds = %bb.i
  %i.bz = call noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
  br i1 %i.bz, label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA73_KcEEEvDpOT_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ca = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.cb = call noundef ptr @_ZN6Assimp12LogFunctionsINS_11FBXImporterEE6PrefixEv()
  store ptr %i.cb, ptr %i.c, align 8
  call void @_ZN6Assimp6Logger4warnIJPKcRA73_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ca, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(73) @.str.49)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA73_KcEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA73_KcEEEvDpOT_.exit: ; preds = %bb.j, %bb.k
  %i.cc = load ptr, ptr %1, align 8               ; 6 uses
  %i.cd = load ptr, ptr %i.bp, align 8
  %.not.i.i = icmp eq ptr %i.cd, %i.cc
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA73_KcEEEvDpOT_.exit
  store ptr %i.cc, ptr %i.bp, align 8
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i, %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA73_KcEEEvDpOT_.exit, %bb.i
  %i.ce = phi ptr [ %i.cc, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ], [ %i.cc, %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA73_KcEEEvDpOT_.exit ], [ %i.bo, %bb.i ] ; 5 uses
  %i.cf = phi ptr [ %i.cc, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ], [ %i.cc, %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA73_KcEEEvDpOT_.exit ], [ %i.bq, %bb.i ] ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = load ptr, ptr %i.cg, align 8
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = sdiv exact i64 %i.cm, 12                ; 4 uses
  %i.co = ptrtoint ptr %i.cf to i64
  %i.cp = ptrtoint ptr %i.ce to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = ashr exact i64 %i.cq, 2                 ; 3 uses
  %i.cs = icmp ugt i64 %i.cn, %i.cr
  br i1 %i.cs, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.ct = sub nuw nsw i64 %i.cn, %i.cr
  call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ct)
  %.pre59 = load ptr, ptr %1, align 8
  %.pre60 = load ptr, ptr %i.bp, align 8
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.cu = icmp ult i64 %i.cn, %i.cr
  br i1 %i.cu, label %bb.n, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.n:                                             ; preds = %bb.m
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.cn ; 3 uses
  %.not.i.i42 = icmp eq ptr %i.cf, %i.cv
  br i1 %.not.i.i42, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i43

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i43:      ; preds = %bb.n
  store ptr %i.cv, ptr %i.bp, align 8
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.l, %bb.m, %bb.n, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i43
  %i.cw = phi ptr [ %.pre60, %bb.l ], [ %i.cf, %bb.m ], [ %i.cf, %bb.n ], [ %i.cv, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i43 ] ; 3 uses
  %i.cx = phi ptr [ %.pre59, %bb.l ], [ %i.ce, %bb.m ], [ %i.ce, %bb.n ], [ %i.ce, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i43 ] ; 6 uses
  %.not.i.i44.not = icmp eq ptr %i.cw, %i.cx
  br i1 %.not.i.i44.not, label %bb.o, label %_ZNSt6vectorIiSaIiEE2atEm.exit

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.88, i64 noundef 0, i64 noundef 0) #26
  unreachable

_ZNSt6vectorIiSaIiEE2atEm.exit:                   ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.cy = load i32, ptr %i.cx, align 4            ; 2 uses
  %7 = ptrtoint ptr %i.cw to i64
  %8 = ptrtoint ptr %i.cx to i64
  %i.cz = sub i64 %7, %8
  %i.da = add i64 %i.cz, -4                       ; 2 uses
  %i.db = lshr i64 %i.da, 2
  %i.dc = add nuw nsw i64 %i.db, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.da, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i45.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZNSt6vectorIiSaIiEE2atEm.exit
  %n.vec = and i64 %i.dc, 9223372036854775800     ; 3 uses
  %i.dd = shl i64 %n.vec, 2
  %i.de = getelementptr i8, ptr %i.cx, i64 %i.dd
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.cy, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.df = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.cx, i64 %i.df ; 2 uses
  %i.dg = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4
  store <4 x i32> %broadcast.splat, ptr %i.dg, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !67

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dc, %n.vec
  br i1 %cmp.n, label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE8LogErrorIJRA34_KcEEEvDpOT_.exit, label %.lr.ph.i.i.i.i45.preheader

.lr.ph.i.i.i.i45.preheader:                       ; preds = %_ZNSt6vectorIiSaIiEE2atEm.exit, %middle.block
  %.06.i.i.i.i.ph = phi ptr [ %i.cx, %_ZNSt6vectorIiSaIiEE2atEm.exit ], [ %i.de, %middle.block ]
  br label %.lr.ph.i.i.i.i45

.lr.ph.i.i.i.i45:                                 ; preds = %.lr.ph.i.i.i.i45.preheader, %.lr.ph.i.i.i.i45
  %.06.i.i.i.i = phi ptr [ %i.di, %.lr.ph.i.i.i.i45 ], [ %.06.i.i.i.i.ph, %.lr.ph.i.i.i.i45.preheader ] ; 2 uses
  store i32 %i.cy, ptr %.06.i.i.i.i, align 4
  %i.di = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i46 = icmp eq ptr %i.di, %i.cw
  br i1 %.not.i.i.i.i46, label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE8LogErrorIJRA34_KcEEEvDpOT_.exit, label %.lr.ph.i.i.i.i45, !llvm.loop !68

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48: ; preds = %bb.f
  %i.dj = load ptr, ptr %3, align 8               ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 1
  %i.dl = xor i64 %i.dk, 8027518367442172226
  %i.dm = getelementptr i8, ptr %i.dj, i64 8
  %i.dn = load i8, ptr %i.dm, align 1
  %i.do = zext i8 %i.dn to i64
  %i.dp = xor i64 %i.do, 110
  %i.dq = or i64 %i.dl, %i.dp
  %i.dr = icmp ne i64 %i.dq, 0
  %i.ds = zext i1 %i.dr to i32
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48.thread56

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dv = load i64, ptr %i.du, align 8
  %i.dw = icmp eq i64 %i.dv, 13
  br i1 %i.dw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit50, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48.thread56

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit50: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48.thread
  %i.dx = load ptr, ptr %4, align 8               ; 2 uses
  %i.dy = load i64, ptr %i.dx, align 1
  %i.dz = xor i64 %i.dy, 4931252993067871817
  %i.ea = getelementptr i8, ptr %i.dx, i64 5
  %i.eb = load i64, ptr %i.ea, align 1
  %i.ec = xor i64 %i.eb, 8386658473160765268
  %i.ed = or i64 %i.dz, %i.ec
  %i.ee = icmp ne i64 %i.ed, 0
  %i.ef = zext i1 %i.ee to i32
  %i.eg = icmp eq i32 %i.ef, 0
  br i1 %i.eg, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit50.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48.thread56

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit50.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit50
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ei = load ptr, ptr %i.eh, align 8            ; 4 uses
  %i.ej = load ptr, ptr %1, align 8               ; 2 uses
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = ptrtoint ptr %i.ej to i64               ; 4 uses
  %i.em = sub i64 %i.ek, %i.el
  %i.en = ashr exact i64 %i.em, 2                 ; 3 uses
  %i.eo = icmp ugt i64 %i.n, %i.en
  br i1 %i.eo, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit50.thread
  %i.ep = sub nuw nsw i64 %i.n, %i.en
  call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ep)
  %.pre = load ptr, ptr %i.eh, align 8
  %.pre58 = load ptr, ptr %1, align 8
  %.pre61 = ptrtoint ptr %.pre58 to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit53

bb.q:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit50.thread
  %i.eq = icmp ult i64 %i.n, %i.en
  br i1 %i.eq, label %bb.r, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit53

bb.r:                                             ; preds = %bb.q
  %i.er = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.m ; 3 uses
  %.not.i.i51 = icmp eq ptr %i.ei, %i.er
  br i1 %.not.i.i51, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit53, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i52

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i52:      ; preds = %bb.r
  store ptr %i.er, ptr %i.eh, align 8
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit53

_ZNSt6vectorIiSaIiEE6resizeEm.exit53:             ; preds = %bb.p, %bb.q, %bb.r, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i52
  %.pre-phi = phi i64 [ %.pre61, %bb.p ], [ %i.el, %bb.q ], [ %i.el, %bb.r ], [ %i.el, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i52 ]
  %i.es = phi ptr [ %.pre, %bb.p ], [ %i.ei, %bb.q ], [ %i.ei, %bb.r ], [ %i.er, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i52 ]
  %i.et = ptrtoint ptr %i.es to i64
  %i.eu = sub i64 %i.et, %.pre-phi
  %i.ev = ashr exact i64 %i.eu, 2                 ; 2 uses
  %.not28 = icmp eq i64 %i.ev, %i.n
  br i1 %.not28, label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE8LogErrorIJRA34_KcEEEvDpOT_.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  store i64 %i.ev, ptr %i.f, align 8
  %i.ew = call noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
  br i1 %i.ew, label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE8LogErrorIJRA56_KcmRA12_S4_RKmEEEvDpOT_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ex = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.ey = call noundef ptr @_ZN6Assimp12LogFunctionsINS_11FBXImporterEE6PrefixEv()
  store ptr %i.ey, ptr %i.b, align 8
  call void @_ZN6Assimp6Logger5errorIJPKcRA56_S2_mRA12_S2_RKmEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ex, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(56) @.str.52, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 1 dereferenceable(12) @.str.53, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE8LogErrorIJRA56_KcmRA12_S4_RKmEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11FBXImporterEE8LogErrorIJRA56_KcmRA12_S4_RKmEEEvDpOT_.exit: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE8LogErrorIJRA34_KcEEEvDpOT_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48.thread56: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.f, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit50, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48
  %i.ez = call noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
  br i1 %i.ez, label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE8LogErrorIJRA34_KcEEEvDpOT_.exit, label %bb.u

bb.u:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48.thread56
  %i.fa = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.fb = call noundef ptr @_ZN6Assimp12LogFunctionsINS_11FBXImporterEE6PrefixEv()
  store ptr %i.fb, ptr %i.a, align 8
  call void @_ZN6Assimp6Logger5errorIJPKcRA61_S2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_SD_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.fa, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(61) @.str.54, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(2) @.str.55, ptr noundef nonnull align 8 dereferenceable(32) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE8LogErrorIJRA34_KcEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11FBXImporterEE8LogErrorIJRA34_KcEEEvDpOT_.exit: ; preds = %.lr.ph.i.i.i.i45, %middle.block, %bb.u, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48.thread56, %bb.h, %bb.g, %_ZNSt6vectorIiSaIiEE6resizeEm.exit53, %bb.a, %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE8LogErrorIJRA56_KcmRA12_S4_RKmEEEvDpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX12MeshGeometry21ReadVertexDataNormalsERSt6vectorI10aiVector3tIfESaIS4_EERKNS0_5ScopeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 12
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 976
  tail call void @_ZN6Assimp3FBX22ResolveVertexDataArrayI10aiVector3tIfEEEvRSt6vectorIT_SaIS5_EERKNS0_5ScopeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_PKcSL_mRKS4_IjSaIjEESP_SP_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i64 noundef %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.k)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX12MeshGeometry22ReadVertexDataTangentsERSt6vectorI10aiVector3tIfESaIS4_EERKNS0_5ScopeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.a, ptr %5, align 8
  store i64 8319395793466188116, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 8, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i8 0, ptr %i.c, align 8
  %i.d = invoke { ptr, ptr } @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp3FBX7ElementEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE11equal_rangeERS7_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.noexc18 unwind label %bb.a   ; 2 uses

.noexc18:                                         ; preds = %._crit_edge.i.i
  %i.e = load ptr, ptr %5, align 8                ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.a
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc18
  %i.g = load i64, ptr %i.a, align 8
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.noexc18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
end_hunk_1
begin_hunk_2_@_ZN6Assimp6Logger13formatMessageIJERA31_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_:bb.a
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 13 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(31) %3) #24
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull align 1 dereferenceable(31) %3, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !124)
  call void @llvm.experimental.noalias.scope.decl(metadata !127)
  call void @llvm.experimental.noalias.scope.decl(metadata !130)
  call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !alias.scope !136
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !alias.scope !136
  store i8 0, ptr %i.c, align 8, !alias.scope !136
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !noalias !136 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !136 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !noalias !136 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !alias.scope !136 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.c, align 8, !alias.scope !136
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #25
  br label %.body

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.d, %bb.b
  %i.v = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.v, ptr %4, align 8
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.x = getelementptr i8, ptr %i.v, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %4, i64 %i.y
  store ptr %i.w, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit
  %i.af = load i64, ptr %i.ad, align 8
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #25
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #24
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ai) #24
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #24
  resume { ptr, i32 } %i.p
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 4
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.75) #26
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #27 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i32 0, ptr %i.y, align 4
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #25
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36: ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 13 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %3, align 4                ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !137

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.d, ptr nonnull align 4 %i.o, i64 %.idx.neg, i1 false)
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %i.o, align 4
  store i32 %i.s, ptr %i.d, align 4
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = load ptr, ptr %i.c, align 8
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 2                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !137

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 4 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 4
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.ac = load i32, ptr %1, align 4
  store i32 %i.ac, ptr %i.ab, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -4                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check126 = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check126, label %.lr.ph.i.i.i.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %bb.k
  %n.vec129 = and i64 %i.ag, 9223372036854775800  ; 3 uses
  %i.ah = shl i64 %n.vec129, 2
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert130 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat131 = shufflevector <4 x i32> %broadcast.splatinsert130, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body132

vector.body132:                                   ; preds = %vector.body132, %vector.ph127
  %index133 = phi i64 [ 0, %vector.ph127 ], [ %index.next135, %vector.body132 ] ; 2 uses
  %i.aj = shl i64 %index133, 2
  %next.gep134 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep134, i64 16
  store <4 x i32> %broadcast.splat131, ptr %next.gep134, align 4
  store <4 x i32> %broadcast.splat131, ptr %i.ak, align 4
  %index.next135 = add nuw i64 %index133, 8       ; 2 uses
  %i.al = icmp eq i64 %index.next135, %n.vec129
  br i1 %i.al, label %middle.block136, label %vector.body132, !llvm.loop !138

middle.block136:                                  ; preds = %vector.body132
  %cmp.n137 = icmp eq i64 %i.ag, %n.vec129
  br i1 %cmp.n137, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block136
  %.06.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block136 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !139

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 2
  %i.ar = sub i64 %i.aq, %i.k
  %i.as = add i64 %i.ar, -4                       ; 2 uses
  %i.at = lshr i64 %i.as, 2
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.au, 9223372036854775800     ; 3 uses
  %i.av = shl i64 %n.vec, 2
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.av
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4
  store <4 x i32> %broadcast.splat, ptr %i.ay, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !140

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i.i.i.i.i, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !141

_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8
  %i.bb = icmp sgt i64 %i.k, 4
  br i1 %i.bb, label %bb.n, label %bb.o, !prof !137

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.i.i.i.i.i, ptr align 4 %1, i64 %i.k, i1 false)
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit
  %i.bc = icmp eq i64 %i.k, 4
  br i1 %i.bc, label %bb.p, label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bd = load i32, ptr %1, align 4
  store i32 %i.bd, ptr %.0.i.i.i.i.i, align 4
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.be = load ptr, ptr %i.c, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.k
  store ptr %i.bf, ptr %i.c, align 8
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69
  %i.bg = sub i64 %i.f, %i.j
  %i.bh = add i64 %i.bg, -4                       ; 2 uses
  %i.bi = lshr i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check112 = icmp ult i64 %i.bh, 28
  br i1 %min.iters.check112, label %.lr.ph.i.i.i71.preheader153, label %vector.ph113

vector.ph113:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec115 = and i64 %i.bj, 9223372036854775800  ; 3 uses
  %i.bk = shl i64 %n.vec115, 2
  %i.bl = getelementptr i8, ptr %1, i64 %i.bk
  %broadcast.splatinsert116 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat117 = shufflevector <4 x i32> %broadcast.splatinsert116, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph113
  %index119 = phi i64 [ 0, %vector.ph113 ], [ %index.next121, %vector.body118 ] ; 2 uses
  %i.bm = shl i64 %index119, 2
  %next.gep120 = getelementptr i8, ptr %1, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep120, i64 16
  store <4 x i32> %broadcast.splat117, ptr %next.gep120, align 4
  store <4 x i32> %broadcast.splat117, ptr %i.bn, align 4
  %index.next121 = add nuw i64 %index119, 8       ; 2 uses
  %i.bo = icmp eq i64 %index.next121, %n.vec115
  br i1 %i.bo, label %middle.block122, label %vector.body118, !llvm.loop !142

middle.block122:                                  ; preds = %vector.body118
  %cmp.n123 = icmp eq i64 %i.bj, %n.vec115
  br i1 %cmp.n123, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader153

.lr.ph.i.i.i71.preheader153:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block122
  %.06.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bl, %middle.block122 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader153, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.bp, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader153 ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i72, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 4 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bp, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !143

bb.q:                                             ; preds = %bb.b
  %i.bq = load ptr, ptr %0, align 8               ; 5 uses
  %i.br = ptrtoint ptr %i.bq to i64               ; 3 uses
  %i.bs = sub i64 %i.f, %i.br
  %i.bt = ashr exact i64 %i.bs, 2                 ; 4 uses
  %i.bu = sub nsw i64 2305843009213693951, %i.bt
  %i.bv = icmp ult i64 %i.bu, %2
  br i1 %i.bv, label %bb.r, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.76) #26
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit:    ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bt, i64 %2)
  %i.bw = add nsw i64 %.sroa.speculated.i, %i.bt  ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bt
  %i.by = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 2305843009213693951)
  %i.bz = select i1 %i.bx, i64 2305843009213693951, i64 %i.by ; 3 uses
  %i.ca = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.cb = sub i64 %i.ca, %i.br                    ; 4 uses
  %.not.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.cc = shl nuw nsw i64 %i.bz, 2
  %i.cd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #27
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.ce = phi ptr [ %i.cd, %bb.s ], [ null, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 %i.cb ; 5 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 2       ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx.i.i.i.i.i75
  %i.ch = load i32, ptr %3, align 4               ; 2 uses
  %i.ci = add nsw i64 %.idx.i.i.i.i.i75, -4       ; 2 uses
  %i.cj = lshr exact i64 %i.ci, 2
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check140 = icmp ult i64 %i.ci, 28
  br i1 %min.iters.check140, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.ph141

vector.ph141:                                     ; preds = %bb.t
  %n.vec143 = and i64 %i.ck, 9223372036854775800  ; 3 uses
  %i.cl = shl i64 %n.vec143, 2
  %i.cm = getelementptr i8, ptr %i.cf, i64 %i.cl
  %broadcast.splatinsert144 = insertelement <4 x i32> poison, i32 %i.ch, i64 0
  %broadcast.splat145 = shufflevector <4 x i32> %broadcast.splatinsert144, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body146

vector.body146:                                   ; preds = %vector.body146, %vector.ph141
  %index147 = phi i64 [ 0, %vector.ph141 ], [ %index.next149, %vector.body146 ] ; 2 uses
  %i.cn = shl i64 %index147, 2
  %next.gep148 = getelementptr i8, ptr %i.cf, i64 %i.cn ; 2 uses
  %i.co = getelementptr i8, ptr %next.gep148, i64 16
  store <4 x i32> %broadcast.splat145, ptr %next.gep148, align 4
  store <4 x i32> %broadcast.splat145, ptr %i.co, align 4
  %index.next149 = add nuw i64 %index147, 8       ; 2 uses
  %i.cp = icmp eq i64 %index.next149, %n.vec143
  br i1 %i.cp, label %middle.block150, label %vector.body146, !llvm.loop !144

middle.block150:                                  ; preds = %vector.body146
  %cmp.n151 = icmp eq i64 %i.ck, %n.vec143
  br i1 %cmp.n151, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.t, %middle.block150
  %.06.i.i.i.i.i.i.i77.ph = phi ptr [ %i.cf, %bb.t ], [ %i.cm, %middle.block150 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store i32 %i.ch, ptr %.06.i.i.i.i.i.i.i77, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.cq, %i.cg
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !145

_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block150
  %i.cr = icmp sgt i64 %i.cb, 4
  br i1 %i.cr, label %bb.u, label %bb.v, !prof !137

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ce, ptr align 4 %i.bq, i64 %i.cb, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.cs = icmp eq i64 %i.cb, 4
  br i1 %i.cs, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.ct = load i32, ptr %i.bq, align 4
  store i32 %i.ct, ptr %i.ce, align 4
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %2 ; 3 uses
  %i.cv = sub i64 %i.f, %i.ca                     ; 4 uses
  %i.cw = icmp sgt i64 %i.cv, 4
  br i1 %i.cw, label %bb.x, label %bb.y, !prof !137

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cu, ptr align 4 %1, i64 %i.cv, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.cx = icmp eq i64 %i.cv, 4
  br i1 %i.cx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cy = load i32, ptr %1, align 4
  store i32 %i.cy, ptr %i.cu, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cz = getelementptr inbounds i8, ptr %i.cu, i64 %i.cv
  %.not.i82 = icmp eq ptr %i.bq, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.da = sub i64 %i.e, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.da) #25
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.ce, ptr %0, align 8
  store ptr %i.cz, ptr %i.c, align 8
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.bz
  store ptr %i.db, ptr %i.a, align 8
  br label %_ZSt4fillIPjjEvT_S1_RKT0_.exit

_ZSt4fillIPjjEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block122, %middle.block136, %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger4warnIJPKcRA36_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(36) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  %i.a = load ptr, ptr %1, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %4, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %4, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = or i32 %i.g, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef %i.h)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #24
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull %i.a, i64 noundef %i.i)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit unwind label %bb.d ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, %bb.d
end_hunk_2
begin_hunk_3_@_ZN6Assimp6Logger13formatMessageIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_KcS9_ERA60_SA_EES7_NS_9Formatter15basic_formatterIcS5_S6_EEOT0_DpOT_:bb.a
bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %7) #24
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJRA2_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESC_EESA_NS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(2) %4, ptr noundef nonnull align 8 dereferenceable(32) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %3, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef %i.a, i64 noundef %i.c) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %6, ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN6Assimp6Logger13formatMessageIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERA2_KcEES7_NS_9Formatter15basic_formatterIcS5_S6_EEOT0_DpOT_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull %6, ptr noundef nonnull align 1 dereferenceable(2) %4, ptr noundef nonnull align 8 dereferenceable(32) %5)
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
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #25
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.j, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #24
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.r) #24
  ret void

bb.c:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %6) #24
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERA2_KcEES7_NS_9Formatter15basic_formatterIcS5_S6_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(2) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(2) %3) #24
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull align 1 dereferenceable(2) %3, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN6Assimp6Logger13formatMessageIJERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_NS_9Formatter15basic_formatterIcS5_S6_EEOT0_DpOT_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(32) %4)
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
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #25
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #24
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #24
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %5) #24
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_NS_9Formatter15basic_formatterIcS5_S6_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 13 uses
  %i.a = load ptr, ptr %3, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef %i.a, i64 noundef %i.c) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !254)
  call void @llvm.experimental.noalias.scope.decl(metadata !257)
  call void @llvm.experimental.noalias.scope.decl(metadata !260)
  call void @llvm.experimental.noalias.scope.decl(metadata !263)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.e, ptr %0, align 8, !alias.scope !266
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8, !alias.scope !266
  store i8 0, ptr %i.e, align 8, !alias.scope !266
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !noalias !266 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !noalias !266 ; 2 uses
  %i.k = icmp ugt ptr %i.h, %i.j
  %.08.i.i.i.i.i = select i1 %i.k, ptr %i.h, ptr %i.j ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !noalias !266 ; 2 uses
  %i.n = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.m, i64 noundef %i.p)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %0, align 8, !alias.scope !266 ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.e
  br i1 %i.t, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.u = load i64, ptr %i.e, align 8, !alias.scope !266
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #25
  br label %.body

bb.d:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.w)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.d, %bb.b
  %i.x = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.x, ptr %4, align 8
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.z = getelementptr i8, ptr %i.x, i64 -24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %4, i64 %i.aa
  store ptr %i.y, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit
  %i.ah = load i64, ptr %i.af, align 8
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #25
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ac, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aj) #24
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ak) #24
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #24
  resume { ptr, i32 } %i.r
}

declare void @_ZN6Assimp3FBX20ParseVectorDataArrayERSt6vectorI10aiVector2tIfESaIS3_EERKNS0_7ElementE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorI10aiVector2tIfESaIS1_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %i.c = load ptr, ptr %0, align 8                ; 8 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = sub i64 %i.l, %i.d
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.o)
  %i.p = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %.not28.i = icmp ult i64 %i.n, %i.i
  br i1 %.not28.i, label %bb.c, label %_ZSt27__uninitialized_default_n_aIP10aiVector2tIfEmS1_ET_S3_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIP10aiVector2tIfEmS1_ET_S3_T0_RSaIT1_E.exit.i: ; preds = %bb.b
  %i.r = shl nuw nsw i64 %i.i, 3                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.b, i8 0, i64 %i.r, i1 false)
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i.i.i, ptr %i.a, align 8
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.p, %i.i
  br i1 %i.s, label %bb.d, label %_ZNKSt6vectorI10aiVector2tIfESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.75) #26
  unreachable

_ZNKSt6vectorI10aiVector2tIfESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #27 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  %i.y = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.x, i8 0, i64 %i.y, i1 false)
  %.not10.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorI10aiVector2tIfESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.z = ptrtoaddr ptr %i.w to i64
  %i.aa = sub i64 %i.d, %i.e
  %i.ab = add i64 %i.aa, -8                       ; 2 uses
  %i.ac = lshr i64 %i.ab, 3
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ab, 72
  %i.ae = sub i64 %i.e, %i.z
  %diff.check = icmp ugt i64 %i.ae, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.ad, 4611686018427387900     ; 3 uses
  %i.af = shl i64 %n.vec, 3                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.w, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.c, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ai ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.c, i64 %i.ai ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !270)
  %i.aj = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep12, align 4, !alias.scope !270, !noalias !267
  %wide.load13 = load <2 x i64>, ptr %i.aj, align 4, !alias.scope !270, !noalias !267
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !267, !noalias !270
  store <2 x i64> %wide.load13, ptr %i.ak, align 4, !alias.scope !267, !noalias !270
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !272

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.w, %.lr.ph.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !270)
  %i.am = load i64, ptr %.0911.i.i.i.i, align 4, !alias.scope !270, !noalias !267
  store i64 %i.am, ptr %.012.i.i.i.i, align 4, !alias.scope !267, !noalias !270
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.an, %i.b
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !273

_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorI10aiVector2tIfESaIS1_EE12_M_check_lenEmPKc.exit.i
  %.not.i36.i = icmp eq ptr %i.c, null
  br i1 %.not.i36.i, label %_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.ap = sub i64 %i.l, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ap) #25
  br label %_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i

_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i: ; preds = %bb.e, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.w, ptr %0, align 8
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.i
  store ptr %i.aq, ptr %i.a, align 8
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ar, ptr %i.j, align 8
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_default_appendEm.exit

bb.f:                                             ; preds = %bb.a
  %i.as = icmp ult i64 %1, %i.g
  br i1 %i.as, label %bb.g, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %i.b, %i.at
  br i1 %.not.i4, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_default_appendEm.exit, label %_ZSt8_DestroyIP10aiVector2tIfES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIP10aiVector2tIfES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %bb.g
  store ptr %i.at, ptr %i.a, align 8
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_default_appendEm.exit

_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_default_appendEm.exit: ; preds = %_ZSt8_DestroyIP10aiVector2tIfES1_EvT_S3_RSaIT0_E.exit.i, %bb.g, %_ZNSt12_Vector_baseI10aiVector2tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i, %_ZSt27__uninitialized_default_n_aIP10aiVector2tIfEmS1_ET_S3_T0_RSaIT1_E.exit.i, %bb.f
  ret void
}

declare void @_ZN6Assimp3FBX20ParseVectorDataArrayERSt6vectorI9aiColor4tIfESaIS3_EERKNS0_7ElementE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorI9aiColor4tIfESaIS1_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %0, align 8                ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 4                   ; 3 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g
  tail call void @_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.i)
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE15_M_erase_at_endEPS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %1, %i.g
  br i1 %i.j, label %bb.d, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE15_M_erase_at_endEPS1_.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %1 ; 2 uses
  %.not.i = icmp eq ptr %i.b, %i.k
  br i1 %.not.i, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE15_M_erase_at_endEPS1_.exit, label %_ZSt8_DestroyIP9aiColor4tIfES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIP9aiColor4tIfES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %bb.d
  store ptr %i.k, ptr %i.a, align 8
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE15_M_erase_at_endEPS1_.exit

_ZNSt6vectorI9aiColor4tIfESaIS1_EE15_M_erase_at_endEPS1_.exit: ; preds = %_ZSt8_DestroyIP9aiColor4tIfES1_EvT_S3_RSaIT0_E.exit.i, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 4                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 576460752303423488
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 576460752303423487         ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIP9aiColor4tIfEmS1_ET_S3_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIP9aiColor4tIfEmS1_ET_S3_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = shl nuw nsw i64 %1, 4                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.75) #26
  unreachable

_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 576460752303423487) ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 4
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #27 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = shl nuw nsw i64 %1, 4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i, i64 16, i1 false), !alias.scope !274
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %.not.i.i.i = icmp eq ptr %i.x, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !278

_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseI9aiColor4tIfESaIS1_EE13_M_deallocateEPS1_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.z = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.z) #25
  br label %_ZNSt12_Vector_baseI9aiColor4tIfESaIS1_EE13_M_deallocateEPS1_m.exit37

_ZNSt12_Vector_baseI9aiColor4tIfESaIS1_EE13_M_deallocateEPS1_m.exit37: ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %1
end_hunk_3
